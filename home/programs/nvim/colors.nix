{
  config,
  pkgs,
  ...
}: let
in {
  programs.nixvim = {
    options = {
      background = "dark";
    };

    match = {
      Todo = "\\cTODO";
      Done = "\\cDONE";
    };

    highlight = {
      ColorColumn = {
        bg = "#555555";
        ctermbg = 0;
      };
      SignColumn = {
        bg = "none";
      };
      CursorLineNR = {
        bg = "none";
      };
      Normal = {
        bg = "none";
      };
      Todo = {
        ctermbg = 196;
        ctermfg = "white";
        bg = "#FF1010";
        fg = "white";
      };
      Done = {
        ctermbg = 28;
        ctermfg = "white";
        bg = "#57BA37";
        fg = "white";
      };
    };

    colorschemes = {
      tokyonight = {
        enable = true;
        style = "night";
        dimInactive = false;
        lualineBold = false;
        transparent = true;
        styles = {
          comments = {
            italic = true;
          };
          keywords = {
            italic = true;
          };
          sidebars = "transparent";
          floats = "transparent";
        };
      };

      gruvbox = {
        enable = false;
        contrastDark = "hard";
        invertSelection = false;
      };
    };
  };
}