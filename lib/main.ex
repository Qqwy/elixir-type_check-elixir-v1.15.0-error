defmodule Main do
  import Macros

  if_recompiling? do
    use Main
  else
    IO.puts "First time compiling"
  end

  defmacro __using__(_options) do
    IO.puts "__using__ was called"
    quote do
      def added do
        "I was added later"
      end
    end
  end
end
