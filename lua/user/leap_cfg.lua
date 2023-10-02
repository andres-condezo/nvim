-- Leap settings
local status_ok, leap = pcall(require, "leap")
if not status_ok then
	return
end

 leap.add_default_mappings()
vim.keymap.set({'n', 'x', 'o'}, 'ñs', function() require'leap-ast'.leap() end, {})

local fstatus_ok, flit = pcall(require, "flit")
if not fstatus_ok then
	return
end

-- flit settings
flit.setup {
  keys = { f = 'f', F = 'F', t = 't', T = 'T' },
  -- A string like "nv", "nvo", "o", etc.
  labeled_modes = "v",
  multiline = true,
  -- Like `leap`s similar argument (call-specific overrides).
  -- E.g.: opts = { equivalence_classes = {} }
  opts = {}
}

-- spooky settings
local lstatus_ok, lspooky = pcall(require, "leap-spooky")
if not lstatus_ok then
	return
end

lspooky.setup {
  -- Mappings will be generated corresponding to all native text objects,
  -- like: (ir|ar|iR|aR|im|am|iM|aM){obj}.
  -- Special line objects will also be added, by repeating the affixes.
  -- E.g. `yrr<leap>` and `ymm<leap>` will yank a line in the current
  -- window.
  affixes = {
    -- The cursor moves to the targeted object, and stays there.
    magnetic = { window = 'm', cross_window = 'M' },
    -- The operation is executed seemingly remotely (the cursor boomerangs
    -- back afterwards).
    remote = { window = 'r', cross_window = 'R' },
  },
  -- Defines text objects like `riw`, `raw`, etc., instead of
  -- targets.vim-style `irw`, `arw`.
  prefix = false,
  -- The yanked text will automatically be pasted at the cursor position
  -- if the unnamed register is in use.
  paste_on_remote_yank = true,
}
