defmodule Main do
  import Macros

  if_recompiling? do
    use Main
  end

  def hello do
    "world"
  end

  defmacro __using__(_options) do
    IO.puts "__using__ was called"
    quote do
      def foo do
        "bar"
      end
    end
  end
end
