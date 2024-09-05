# Night Wolf 🐺 (for Neovim)

A Neovim theme plugin based on [Night Wolf](https://github.com/mao-santaella-rs/NightWolfTheme/tree/master) 🐺 for VS Code.

![image](https://github.com/user-attachments/assets/0bc1f83c-323d-42e1-95cd-2dd605952328)

# Installation

[lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{
  "oroszarnold12/nvim-night-wolf",
  priority = 1000,
  config = function()
    require("night_wolf").setup()
  end,
}
```

# Customization

As of now, there is no explicit support for customization, but the colors and highlight groups are easy to change thanks to [Lush](https://github.com/rktjmp/lush.nvim).

To do that:
1. Make sure you have [Lush](https://github.com/rktjmp/lush.nvim) installed
   ```lua
   { "rktjmp/lush.nvim" }
   ```
2. Make sure you have [Shipwright](https://github.com/rktjmp/shipwright.nvim) installed
   ```lua
   { "rktjmp/shipwright.nvim", cmd = "Shipwright" }
   ```
3. Open the `night_wolf.lua` file and execute the `Lushify` command
     * Every change that you do should take effect real-time
4. When you are done, execute the `Shipwright` command
     * This command will generate/update the `init.lua` file
5. Push to your own repo and install your plugin into Neovim
