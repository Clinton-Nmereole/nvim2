local api = vim.api

local build_commands = {
  c = "g++ -std=c++17 -o %:p:r.o %",
  cpp = "g++ -std=c++17 -o %:p:r.o %",
  rust = "cargo build --release",
  go = "go build -o %:p:r.o %",
  zig = "zig build",
  nim = "nim c %<",
  java = "javac %",
}

local run_commands = {
  c = "%:p:r.o",
  cpp = "%:p:r.o",
  rust = "cargo run --release",
  go = "%:p:r.o",
  zig = "zig run %",
  nim = "%:p:r",
  python = "python3 %",
  java = "java %:p",
}

api.nvim_create_user_command("Build", function()
  local filetype = vim.bo.filetype

  for file, command in pairs(build_commands) do
    if filetype == file then
      vim.cmd("!" .. command)
      break
    end
  end
end, {})

api.nvim_create_user_command("Run", function ()
  local filetype = vim.bo.filetype

  for file, command in pairs(run_commands) do
    if filetype == file then
      vim.cmd("term " .. command)
      local keys = api.nvim_replace_termcodes("i", true, false, true)
      api.nvim_feedkeys(keys, "n", false)
      break
    end
  end
end, {})

