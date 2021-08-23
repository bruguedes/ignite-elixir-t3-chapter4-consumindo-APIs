# ignite-elixir-t4-chapter4-consumindo-APIs
Desafio :Consumindo APIs -Ignite Trilha Elixir - Turma 03 - Chapter IV

# 💻 Sobre o desafio

Nesse desafio, você deverá criar uma aplicação que consome a API do GitHub retornando a lista de repositórios de um usuário informado.
A rota para obter esse dado da API é `[https://api.github.com/users/danilo-vieira/repos](https://api.github.com/users/danilo-vieira/repos)` onde **danilo-vieira** deverá ser o nome do usuário que está solicitando a lista de repositórios, ou seja, esse dado deve ser dinâmico.

## O que deve ser retornado?

Para cada repositório de um usuário, você deve retornar apenas os seguintes campos vindos da API: `id`, `name`, `description`, `html_url` e `stargazers_count`.

## Rotas

A aplicação deverá possuir apenas uma rota que recebe o `username` do usuário e retorna os dados obtidos com status `200`.
