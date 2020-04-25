defmodule Servy.Plugins do
  @moduledoc """
  Plugins to track, rewrite path and log
  """
  def track(%{status: 404, path: path} = conv) do
    IO.puts("Warning: #{path} is on the loose!")
    conv
  end

  def track(conv), do: conv

  @doc """
  Rewrites path /wildlife to /wildthings
  """
  def rewrite_path(%{path: "/wildlife"} = conv) do
    %{conv | path: "/wildthings"}
  end

  def rewrite_path(conv), do: conv

  @doc """
  Logs HTTP requests
  """
  def log(conv), do: IO.inspect(conv)

end
