# SPDX-License-Identifier: MPL-2.0

{
  description = "Making the Jump to Advanced Embedded Programming";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs =
    inputs:

    inputs.flake-utils.lib.eachDefaultSystem (
      system:

      let
        pkgs = import inputs.nixpkgs {
          inherit system;
        };

        inherit (pkgs) lib;

      in
      {
        devShells.default = pkgs.mkShellNoCC (
          let
            pre-commit-bin = "${lib.getBin pkgs.pre-commit}/bin/pre-commit";

          in
          {
            packages = with pkgs; [
              commitlint-rs
              git
              mdformat
              meson
              ninja
              pre-commit
              shfmt
              statix
              toml-sort
              treefmt
              typst
              typstyle
              yamlfmt
              yamllint
            ];

            shellHook = ''
              ${pre-commit-bin} install --allow-missing-config > /dev/null
            '';
          }
        );

        formatter = pkgs.nixfmt-rfc-style;
      }
    );
}
