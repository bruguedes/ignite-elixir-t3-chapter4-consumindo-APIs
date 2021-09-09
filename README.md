# ignite-elixir-t4-chapter4-consumindo-APIs
Desafio :Consumindo APIs -Ignite Trilha Elixir - Turma 03 - Chapter IV

# 💻 Sobre o desafio

Nesse desafio, você deverá criar uma aplicação que consome a API do GitHub retornando a lista de repositórios de um usuário informado.
A rota para obter esse dado da API é `[https://api.github.com/users/danilo-vieira/repos](https://api.github.com/users/danilo-vieira/repos)` onde **danilo-vieira** deverá ser o nome do usuário que está solicitando a lista de repositórios, ou seja, esse dado deve ser dinâmico.

Ao chamar a rota que lista os repositórios de um usuário, será necessário enviar também o token JWT de um usuário que se autenticou na aplicação. Ou seja, apenas usuários cadastrados na aplicação podem fazer a listagem de repositórios.
## O que deve ser retornado?
Para se cadastrar na aplicação, deve utilizar o método post para a rota http://localhost:4000/api/users/
 - Corpo da requisição : {"password": "123123"}
 - Retorno da requisição: 
      {
        "message": "User created!",
        "user_id": "53dcc297-b466-402b-a052-4df8f5f42079"
      }
Para fazer sing in na aplicação, deve utilizar o método post para a rota http://localhost:4000/api/singin
 - Corpo da requisição : 
      {
	      "id": "53dcc297-b466-402b-a052-4df8f5f42079",
	      "password": "123123"
      }
 - Retorno da requisição: 
      {
        "token" : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c 
      }

Ao chamar a rota que lista os repositórios de um usuário (http://localhost:4000/api/github/`user_name_git`), será necessário enviar também o token JWT de um usuário que se autenticou na aplicação. Ou seja, apenas usuários cadastrados na aplicação podem fazer a listagem de repositórios. 
Para cada repositório de um usuário, você deve retornar apenas os seguintes campos vindos da API: `id`, `name`, `description`, `html_url` e `stargazers_count`.


# Apiconsumer

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
