defmodule Recase.KebabCase do
  @moduledoc """
  Module to convert strings to `kebab-case`.

  This module should not be used directly.

  ## Examples

      iex> Recase.to_kebab "foo_barBaz-λambdaΛambda-привет-Мир"
      "foo-bar-baz-λambda-λambda-привет-мир"

  Read about `kebab-case` here:
  https://en.wikipedia.org/wiki/Kebab_case
  """

  import Recase.Generic, only: [rejoin: 2]

  @sep "-"

  @spec convert(String.t()) :: String.t()
  def convert(value) when is_binary(value),
    do: rejoin(value, separator: @sep, case: :down)
end
