# ignite-elixir-t4-chapter4-consumindo-APIs
Desafio :Consumindo APIs -Ignite Trilha Elixir - Turma 03 - Chapter IV

# 💻 Sobre o desafio

Nesse desafio, você deverá criar uma aplicação que consome a API do GitHub retornando a lista de repositórios de um usuário informado.
A rota para obter esse dado da API é `[https://api.github.com/users/danilo-vieira/repos](https://api.github.com/users/danilo-vieira/repos)` onde **danilo-vieira** deverá ser o nome do usuário que está solicitando a lista de repositórios, ou seja, esse dado deve ser dinâmico.

## O que deve ser retornado?

Para cada repositório de um usuário, você deve retornar apenas os seguintes campos vindos da API: `id`, `name`, `description`, `html_url` e `stargazers_count`.

## Rotas

A aplicação deverá possuir apenas uma rota que recebe o `username` do usuário e retorna os dados obtidos com status `200`.


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
