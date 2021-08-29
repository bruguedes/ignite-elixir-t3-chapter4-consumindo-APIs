defmodule ApiconsumerWeb.GetDataView do
  use ApiconsumerWeb, :view

  def render("repos.json", repos) do
    %{
      message: "User created!",
      repos: repos
    }
  end

  # def render("user.json", %{user: %User{} = user}), do: %{user: user}
end
