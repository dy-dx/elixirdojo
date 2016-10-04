defmodule Dojo.MonkeyView do
  use Dojo.Web, :view

  def render("monkeys.json", %{results: results}) do
	  results
  end
end
