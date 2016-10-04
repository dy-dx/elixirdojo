# select * SELECT *
# FROM orders
# WHERE address1 = “enter address”
# AND state IN (“state two letter abbrev”, “written out version”)
# AND city = “name of city”
defmodule Dojo.Orders do
  use Dojo.Web, :model

  schema "orders" do
    field :user_id, :integer
    field :address1
    field :state
    field :city
  end

  def get_by_address(address) do
    from o in Dojo.Orders,
    select: o.user_id,
    where: o.address1 == ^address,
    limit: 5
  end

end
