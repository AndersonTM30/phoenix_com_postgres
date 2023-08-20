# Elixir Com Postgresql

## Iniciar o servidor Phoenix localmente:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Iniciar o servidor Phoenix com o Docker
Cria e inicia o container docker com o banco de dados e o servidor Phoenix
 ```
docker-compose up --build -d
 ```
Quando finalizar a criação do container já pode acessar o site [`localhost:8000`](http://localhost:8000) no seu navegador

Parar o container executa o seguinte comando:
```
docker-compose down
```

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
