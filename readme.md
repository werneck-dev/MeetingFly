# API MeetingFly

API desenvolvida para ao processo de recrutamento de desenvolvedor full stack na LiberFly

## Documentação Oficial

A documentação para a estrutura pode ser encontrada no site [API MeetingFly](https://documenter.getpostman.com/view/9149332/SVtZvm6x?version=latest#352ad6e9-f8da-4050-9b04-e1793e34e09b).


## Requisitos

* PHP> = 7.2
* Extensão PHP OpenSSL
* Extensão PHP DOP
* Extensão PHP Mbstring

### Softwares recomendados

* Xampp 

* Composer (Gerenciador de Dependêcias para PHP)

* Postman


## Configurações

#### 1 - Faça o clone do projeto: https://github.com/werneck-dev/MeetingFly.git ou faça download do zip e extraia na pasta de seu servidor

#### 2 - Importe o DUMP do banco de dados, localizado na pasta "db" para criar sua base de dados.

Para começar a usar a API precisamos de uma conexão com o seu banco de dados.
//Arquivo .env
`{`
`DB_CONNECTION=mysql`
`DB_HOST=127.0.0.1`
`DB_PORT=3306`
`DB_DATABASE=apifly`
`DB_USERNAME=root`
`DB_PASSWORD=`
`}`

#### 3 - Download das dependencias do projeto

executar o comando na raiz do seu projeto

`composer update`


## Créditos 

Raul Werneck (Developer)

## Licença

A estrutura Lumen é um software de código aberto licenciado sob a [MIT license](https://opensource.org/licenses/MIT).
