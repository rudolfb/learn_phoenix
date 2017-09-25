defmodule Catalog do
	@moduledoc """
	Provides a set of functions for querying the product inventory.
	"""

	@doc """
	Returns a list of available products.
	"""
	def list_products do
		[
			%Catalog.Product{id: 1, name: "Tomato", price: 44},
			%Catalog.Product{id: 2, name: "Apple", price: 22},
			%Catalog.Product{id: 3, name: "Potato", price: 35}

		]
	end

	def random_product(list) when is_list(list) do
		Enum.random(list)
	end

	def random_product(_) do
		{:error, "Not a list"}
	end

	def random_product do
		{:error, "Need a List of products as the argument"}
	end
end