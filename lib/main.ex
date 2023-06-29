defmodule Main do
  import Macros

  if_recompiling? do
    IO.puts "Second time compiling"
    use Main
  else
    IO.puts "First time compiling"
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
