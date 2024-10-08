-- Collection of nerdfont icons
-- find more here: https://www.nerdfonts.com/cheat-sheet
local icons = {}

icons.kind = {
  Class = "󰠱",
  Color = "󰏘",
  Constant = "󰏿",
  Constructor = "",
  Enum = "",
  EnumMember = "",
  Event = "",
  Field = "󰇽",
  File = "󰈙",
  Folder = "󰉋",
  Fragment = "",
  Function = "󰊕",
  Interface = "",
  Implementation = "",
  Keyword = "󰌋",
  Method = "󰆧",
  Module = "",
  Namespace = "󰌗",
  Number = "",
  Operator = "󰆕",
  Package = "",
  Property = "󰜢",
  Reference = "",
  Snippet = "",
  Struct = "",
  Text = "󰉿",
  TypeParameter = "󰅲",
  Undefined = "",
  Unit = "",
  Value = "󰎠",
  Variable = "",
  -- ccls-specific icons.
  TypeAlias = "",
  Parameter = "",
  StaticMethod = "",
  Macro = "",
}

icons.type = {
  Array = "󰅪",
  Boolean = "",
  Null = "󰟢",
  Number = "",
  Object = "󰅩",
  String = "󰉿",
}

icons.documents = {
  Default = "",
  File = "",
  Files = "",
  FileTree = "󰙅",
  Import = "",
  Symlink = "",
}

icons.git = {
  Add = "",
  Branch = "",
  Diff = "",
  Git = "󰊢",
  Ignore = "",
  Mod = "M",
  Mod_alt = "",
  Remove = "",
  Rename = "",
  Repo = "",
  Unmerged = "󰘬",
  Untracked = "󰞋",
  Unstaged = "",
  Staged = "",
  Conflict = "",
}

icons.ui = {
  Accepted = "",
  ArrowClosed = "",
  ArrowOpen = "",
  BigCircle = "",
  BigUnfilledCircle = "",
  BookMark = "󰃃",
  Bug = "",
  Calendar = "",
  Check = "󰄳",
  ChevronRight = "",
  Circle = "",
  Close = "󰅖",
  Close_alt = "",
  CloudDownload = "",
  Comment = "󰅺",
  CodeAction = "󰌵",
  Dashboard = "",
  Emoji = "󰱫",
  EmptyFolder = "",
  EmptyFolderOpen = "",
  File = "󰈤",
  Fire = "",
  Folder = "",
  FolderOpen = "",
  FolderWithHeart = "󱃪",
  Gear = "",
  History = "󰄉",
  Incoming = "󰏷",
  Indicator = "",
  Keyboard = "",
  Left = "",
  List = "",
  Square = "",
  SymlinkFolder = "",
  Lock = "󰍁",
  Modified = "✥",
  Modified_alt = "",
  NewFile = "",
  Newspaper = "",
  Note = "󰍨",
  Outgoing = "󰏻",
  Package = "",
  Pencil = "󰏫",
  Perf = "󰅒",
  Play = "",
  Project = "",
  Right = "",
  RootFolderOpened = "",
  Search = "󰍉",
  Separator = "",
  DoubleSeparator = "󰄾",
  SignIn = "",
  SignOut = "",
  Sort = "",
  Spell = "󰓆",
  Symlink = "",
  Tab = "",
  Table = "",
  Telescope = "",
}

icons.diagnostics = {
  Error = "",
  Warning = "",
  Information = "",
  Question = "",
  Hint = "󰌵",
  -- Holo version
  Error_alt = "󰅚",
  Warning_alt = "󰀪",
  Information_alt = "",
  Question_alt = "",
  Hint_alt = "󰌶",
}

icons.misc = {
  Campass = "󰀹",
  Code = "",
  Gavel = "",
  Glass = "󰂖",
  NoActiveLsp = "󱚧",
  PyEnv = "󰢩",
  Squirrel = "",
  Tag = "",
  Tree = "",
  Watch = "",
  Lego = "",
  LspAvailable = "󱜙",
  Vbar = "│",
  Add = "+",
  Added = "",
  Ghost = "󰊠",
  ManUp = "",
  Vim = "",
}

icons.cmp = {
  Codeium = "󱚢",
  Copilot = "",
  Copilot_alt = "",
  -- Add source-specific icons here
  buffer = "",
  codeium = "󱚢",
  copilot = "",
  copilot_alt = "",
  latex_symbols = "",
  luasnip = "󰃐",
  nvim_lsp = "",
  nvim_lua = "",
  path = "",
  spell = "󰓆",
  tmux = "",
  treesitter = "",
  emoji = "󰱫",
  undefined = "",
}

icons.dap = {
  Breakpoint = "󰝥",
  BreakpointCondition = "󰟃",
  BreakpointRejected = "",
  LogPoint = "",
  Pause = "",
  Play = "",
  RunLast = "↻",
  StepBack = "",
  StepInto = "󰆹",
  StepOut = "󰆸",
  StepOver = "󰆷",
  Stopped = "",
  Terminate = "󰝤",
}

icons.whichkey = {
  b = "󰓩 Buffers",
  c = " Functions",
  d = " Debugger",
  e = "󰙅 File Exploer",
  f = "󰍉 Find",
  g = "󰊢 Git",
  h = "󱋿 Harpoon",
  k = "󰻿 Keep Split Only",
  l = " LSP",
  m = "󰚩 LLM",
  n = "󰏬 Notes (Obsidian)",
  q = "󰆼 SQL",
  r = " Reload Buffer",
  s = "󱂬 Session",
  t = " Terminal",
  u = " UI",
  w = " Window",
  x = "󰼇 Trouble",
  z = "󰏖 Lazy",
}

return icons
