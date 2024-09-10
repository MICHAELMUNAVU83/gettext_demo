defmodule DemoWeb.PageController do
  use DemoWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def dashboard(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.

    conn.cookies["locale"] |> IO.inspect()
    render(conn, "dashboard.html", layout: false)
  end
end
