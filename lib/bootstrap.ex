require Macros
case Code.ensure_compiled(Main) do
  {:error, problem} ->
    IO.puts(problem)
  {:module, _} ->
    Macros.recompile(Main, "lib/main.ex")
end
