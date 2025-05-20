## nvim-flake

#### Flake Usage

- Add the input to your Nix Flake:

```nix
{:
  inputs = {
    nvim-flake.url = "github:zxcvtyp0/nvim-flake";
  };
}
```

- Then add it as a package:

```nix
  outputs = inputs: {
    nixosConfigurations."HOSTNAME" =
    let system = "x86_64-linux";
    in nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [({pkgs, config, ... }: {
          };
          environment.systemPackages = [
            inputs.nvim-flake.packages.${system}.lazynvim
          ];
        };
      })];
    };
  };
```
