local cat =
{
  "  /\\ _ /\\",
  "=( . w . )=_",
  "  )  v  (_/ |",
  " ( _\\|/_ )_/",
}
for i = 1, #arg do
  if arg[i] == "!>w<" then
    cat[2] = "=( > w < )=_"
    table.remove(arg, i)
  elseif arg[i] == "!>^<" then
    cat[2] = "=( > ^ < )=_"
    table.remove(arg, i)
  elseif arg[i] == "!-w-" then
    cat[2] = "=( - w - )=_"
    table.remove(arg, i)
  elseif arg[i] == "!>w>" then
    cat[2] = "=( > w > )=_"
    table.remove(arg, i)
  elseif arg[i] == "!<w<" then
    cat[2] = "=( < w < )=_"
    table.remove(arg, i)
  end
end
for i = 1, #arg do
  if arg[i] == "!o/" then
    cat[3] = "  )|\\   (_/ |"
    cat[4] = " ( _ |/_ )_/"
    table.remove(arg, i)
  elseif arg[i] == "!(_ _)" then
    cat[3] = "  ) /|\\ (_/ |"
    cat[4] = " ( _   _ )_/"
    table.remove(arg, i)
  end
end

local linewidth = {}
for i = 1, #arg do
  table.insert(linewidth, #arg[i])
end
table.sort(linewidth, function(a,b)
  if a > b then
    return true
  end
end)

if #arg >= 1 then
  local argl = 0
  for i = 1, #arg do
    argl = argl + #arg[i]
  end
  if argl >= 7 then
    io.write(" ,")
    for _ = 1, linewidth[1] do
      io.write("-")
    end
    io.write(",\n")
    for i = 1, #arg do
      io.write("| "..arg[i])
      for _ = 1, linewidth[1] - #arg[i] do
        io.write(" ")
      end
      io.write(" |\n")
    end
    io.write(" '-_   _")
    for _ = 1, (linewidth[1] - 6) do
      io.write("-")
    end
    io.write("'\n     V\n")
    for i = 1, #cat do
      print(cat[i])
    end
  else
    print("Error: String must be 7 characters or longer")
  end
else
  local help =
  {
    "Usage: catsay [STRING]... [OPTION]...",
    "Possible options:",
    "├── !>w<   │ Gives a >w< face",
    "├── !>^<   │ Gives a >^< face",
    "├── !-w-   │ ...",
    "├── !>w>   │ ...",
    "├── !<w<   │ ...",
    "│          │",
    "├── !o/    │ Gives a waving body",
    "└── !(_ _) │ Gives a pleading body",
    "",
    "Example:",
    "    catsay hiiiii!                  │ Make the cat say \"hiiiii!\"",
    "    catsay \"i love you\" \"very much\" │ Write them both, separated by a new line"
  }
  for i = 1, #help do
    print(help[i])
  end
end
