defmodule ProbeerselWeb.PageController do
  use ProbeerselWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
