defmodule Servy.Plugins do
  @moduledoc """
  Plugins to track, rewrite path and log
  """
  alias Servy.Conv
  def track(%Conv{status: 404, path: path} = conv) do
    IO.puts("Warning: #{path} is on the loose!")
    conv
  end

  def track(%Conv{} = conv), do: conv

  @spec rewrite_path(any) :: any
  @doc """
  Rewrites path /wildlife to /wildthings
  """
  def rewrite_path(%Conv{path: "/wildlife"} = conv) do
    %{conv | path: "/wildthings"}
  end

  def rewrite_path(%Conv{} = conv), do: conv

  @doc """
  Logs HTTP requests
  """
  def log(%Conv{} = conv), do: IO.inspect(conv)

end
