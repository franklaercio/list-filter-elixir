defmodule ListFilter do
  def call(list), do: filter_odd(list, 0)

  defp filter_odd([], acc), do: acc

  defp filter_odd([head | tail], acc) do
    if is_integer(head) do
      filter_odd(tail, acc)
    else
      if Integer.parse(head) == :error do
        filter_odd(tail, acc)
      else
        case Integer.parse(head) do
          {n, ""} ->
            acc = if rem(n, 2) != 0, do: acc + 1, else: acc + 0
            filter_odd(tail, acc)
        end
      end
    end
  end
end
