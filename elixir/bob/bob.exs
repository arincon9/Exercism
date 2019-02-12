defmodule Bob do
  def hey(input) do
    cond do
      silence?(input)       -> "Fine. Be that way!"
      asking_loudly?(input) -> "Calm down, I know what I'm doing!"
      asking?(input)        -> "Sure."
      shouting?(input)      -> "Whoa, chill out!"
      true                  -> "Whatever."
    end
  end

  defp silence?(input) do
    String.trim(input) == ""
  end

  defp asking?(input) do
    String.last(input) == "?"
  end

  defp asking_loudly?(input) do
    asking?(input) and shouting?(input)
  end

  defp shouting?(input) do
    String.upcase(input) == input and String.downcase(input) != input
  end
end
