<?php

namespace App\Http\Controllers;

use App\Meeting;
use Illuminate\Database\QueryException;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MeetingController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        
    }

    public function getMeeting()
    {
        $dateNow = date('Y-m-d');

        $answer = DB::table('meetings')
        ->whereDate('start_meeting', $dateNow)
        ->where(function ($query) {
            $query->where('situation', '=', 'A');
        })
        ->get();

            return response()->json($answer, 200);  
    }

    public function store(Request $request)
    {    

        $validator = Validator::make($request->all(), [
            'id_meeting_room' => 'required | integer',
            'start_meeting' => 'required | date',
            'finish_meeting' => 'required | date',
            'email' => 'required | email:filter',
            'situation' => 'required | string | max:1',
            'description' => 'required | string | max:255',
        ]);

        if ($validator->fails()) {
            return response()->json(["status:" => "400 (Bad Request)", "message:" => "Dados invalidos"], 400);  
        }else
        {
            try
            {

                $meeting = DB::table('meetings')        
                ->whereBetween('start_meeting', [$request->start_meeting, $request->finish_meeting])
                ->where('id_meeting_room', '=', $request->id_meeting_room)
                ->where('situation', '=', 'A')
                ->orwhereBetween('finish_meeting', [$request->start_meeting, $request->finish_meeting])
                ->where('id_meeting_room', '=', $request->id_meeting_room)
                ->where('situation', '=', 'A')
                ->get();

                if(count($meeting) > 0)
                {
                
                    return response()->json(['status' => '400 (Not Found)', 'message' => 'Horario para reuniao indisponivel'], 400);  
                
                }

                if(count($meeting) == 0)
                {
                    $meeting = new Meeting();

                    $answer = $meeting->create($request->all());

                    return response()->json($answer, 201);
                }

            }
            catch(QueryException $exception)
            {
                return response()->json(["status" => '500 (Internal Server Error)', 'message:' => 'Erro no servidor :('], 500);  
            }
        }                  
    }

    public function cancel(Request $request)
    {
        $meeting = new Meeting();

        $id = $request->id_meeting_room;
        $data = $request->data;

        $answer = DB::table('meetings')
            ->where('id_meeting_room', $id)
            ->where('start_meeting', $data)
            ->where('situation', '!=', 'C')
            ->update(['situation' => 'C']);
        
        if($answer == 1)
        {
            return response()->json(['status' => '200 (OK)', 'message' => 'Reunião cancelada'], 200);        
        }
        else
        {
            return response()->json(['status' => '400 (Not Found)', 'message' => 'Reunião inexistente'], 400);        
        }
        
    }
}