defmodule Bob do
  @doc """
  Bob answers
    "Sure." if you ask him a question.
    "Whoa, chill out!" if you yell at him.
    "Calm down, I know what I'm doing!" if you yell a question at him.
    "Fine. Be that way!" if you address him without actually saying anything.
    "Whatever." to anything else.
  """

  @spec hey(String.t) :: String.t
  def hey(input) do
    str = String.trim(input)
    # setting variables is not nessisary but in the event of evaluating large
    # strings saves runing the test multiple times.
    question = String.ends_with?(str, "?")
    yelling = String.upcase(str) == str and str != String.downcase(str)
    cond do
      str == "" -> "Fine. Be that way!"
      question and yelling -> "Calm down, I know what I'm doing!"
      yelling -> "Whoa, chill out!"
      question -> "Sure."
      true -> "Whatever."
    end
  end
end
