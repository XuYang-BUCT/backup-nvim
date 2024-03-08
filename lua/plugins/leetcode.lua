return {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim", -- required by telescope
    "MunifTanjim/nui.nvim",

    -- optional
    "nvim-treesitter/nvim-treesitter",
    "rcarriga/nvim-notify",
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    -- configuration goes here
    cn = { -- leetcode.cn
      enabled = true, ---@type boolean
      translator = true, ---@type boolean
      translate_problems = true, ---@type boolean
    },
    injector = { ---@type table<lc.lang, lc.inject>
      -- ["python3"] = {
      --   before = true,
      -- },
      ["cpp"] = {
        before = {
          "#include <bits/stdc++.h>",
          "#include <string>",
          "#include <vector>",
          "#include <unordered_map>",
          "#include <unordered_set>",
          "using namespace std;",
        },
        after = "int main() {}",
      },
      ["java"] = {
        before = "import java.util.*;",
      },
    },
  },
}
