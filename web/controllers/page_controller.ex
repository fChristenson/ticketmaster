defmodule Ticketmaster.PageController do
  use Ticketmaster.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def search(conn, _params) do
    render conn, "search.html"
  end

  def event(conn, _params) do
    render conn, "event.html"
  end

  def buy(conn, _params) do
    render conn, "buy.html"
  end

  def confirmation(conn, _params) do
    render conn, "buy.html"
  end
end
