return {
  "tpope/vim-surround",
  event = "VeryLazy",
}
-- Built in keybinds
--[[
    - Changing:
    - cs"'   -- Change Surround " with ' (ex. "Hello" -> 'Hello')
    - cs'<q> -- Change Surround ' with <q> (ex. 'Hello' -> <q>Hello</q>). Also works with cs't (and add tag)
    - cst"   -- Change Surround Tag with " (ex. <q>Hello</q> -> "Hello")
    - Can also Change Surround with { or [ (contains space) or ] } (does not contain space)
    -
    - Deleting:
    - ds"    -- Delete Surround " delimiters (ex. "Hello" -> Hello)
    -
    - Adding:
    - ysiw"    -- You Surround In Word " (ex. Hello -> "Hello")
    - yss)     -- You Surround (Line) with () (ex. `Hello World` -> `(Hello World)`)
    -
    - Selecting:
    - S} -- Surrounds selected text with {} (Must be in visual mode / selected text)
]] --
