{ pkgs, helpers, ... }:
{
  pkgs = pkgs.vimPlugins.render-markdown-nvim;
  opts = {
    file_types = [
      "markdown"
    ];
  };
  ft = [
    "markdown"
  ];
  opts = { };
}
