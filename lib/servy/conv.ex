defmodule Servy.Conv do
defstruct method: "", path: "", status: nil, resp_body: "", params: %{}


defp status_reason(code) do
  %{
    200 => "OK",
    404 => "Not Found",
    500 => "Internal Server Error",
    201 => "Created"
  }[code]
end

def full_status(conv) do
  "#{conv.status} #{status_reason(conv.status)}"
end
end
