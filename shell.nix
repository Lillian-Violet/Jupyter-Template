{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    # nativeBuildInputs is usually what you want -- tools you need to run
    nativeBuildInputs = with pkgs.buildPackages; [ 
      python310
      python310Packages.notebook
      python310Packages.pandas
      python310Packages.geopandas
      python310Packages.numpy
      python310Packages.matplotlib
      ];
}