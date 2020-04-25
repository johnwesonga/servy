defmodule Servy do
  @moduledoc """
  Documentation for `Servy`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Servy.hello()
      :world

  """
  def hello (name) do
    arg_length = String.length(name)
    "Hello #{name} and length #{arg_length}"

    
  end
end



