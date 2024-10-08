local wk = require("which-key")

wk.setup({
  preset = "classic", -- classic / modern / helix
  --- Available sorters:
  --- * local: buffer-local mappings first
  --- * order: order of the items (Used by plugins like marks / registers)
  --- * group: groups last
  --- * alphanum: alpha-numerical first
  --- * mod: special modifier keys last
  --- * manual: the order the mappings were added
  --- * case: lower-case first
  sort = { "local" , "mod", "alphanum" },
  -- disable WhichKey for certain buf types and file types.
  disable = {
    ft = {},
    bt = {},
  },
})
