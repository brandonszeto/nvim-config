# My NeoVim Configuration

TODO List:
- [ ] Bind caps lock to escape

## Tmux + Nvim Integration 
- **Repo:** [`christoomey/vim-tmux-navigator`](https://github.com/christoomey/vim-tmux-navigator)
- [Tmux Cheatsheet](https://tmuxcheatsheet.com)

```lua
-- Navigate panes (from both nvim/tmux)
{ "<c-h>", "<c-j>", "<c-k>", "<c-l>" }

-- Tmux bindings
{ 
  "<c-A>c",           -- create window
  "<c-A>n", "<c-A>p", -- next and previous windows
  "<c-A>&",           -- kill current window
}
```

## Miscellaneous (utility)
- **Repo:** [`tpope/vim-surround`](https://github.com/tpope/vim-surround)
- **Repo:** [`tpope/vim-commentary`](https://github.com/tpope/vim-commentary)
- **Repo:** [`markdownpreview`]()
- **Repo:** [`vimtex`]()

```lua
{ 
  -- Vim-surround
  "ysiw]", -- word        -> [word]
  "ysiw[", -- word        -> [ word ]
  "yss[",  -- line        -> [line]
  "yss]",  -- line        -> [ line ]
  "S[",    -- selection   -> [selection]
  "S]",    -- selection   -> [ selection ]
  "ds]",   -- [word]      -> word
  "cs[",   -- [word]      -> "word"
  "cst]",  -- <q>word</q> -> [word]

  -- Vim-commentary
  "gcc",   -- comment line 
  "gcap",  -- comment out a paragraph
  "gc",    -- comment selected lines
}
```
- **Repo:** [`nvimtree`]()

## Miscellaneous (aesthetics)
- **Repo:** [`lualine`]()
- **Repo:** [`gruvbox`]()

## LSP

## Git

## Telescope
