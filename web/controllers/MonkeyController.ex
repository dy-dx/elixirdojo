defmodule Dojo.MonkeyController do
  use Dojo.Web, :controller

  def index(conn, %{"address" => address}) do
    results = Repo.all Dojo.Orders.get_by_address(address)
    render conn, "monkeys.json", results: results
  end
end
