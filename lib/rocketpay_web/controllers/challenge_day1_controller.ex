defmodule RocketpayWeb.Day1Controller do
  use RocketpayWeb, :controller
  def index(conn, %{"name" => name}) do
    name
    |> String.trim()
    |> String.downcase()
    |> handle_response(conn)

  end
  defp handle_response(name, conn) do
    conn
    |> put_status(:ok)
    |> json(%{message: name})
  end
end
