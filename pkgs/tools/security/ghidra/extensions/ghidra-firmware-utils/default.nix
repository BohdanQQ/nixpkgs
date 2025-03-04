{
  lib,
  ghidra,
  gradle,
  fetchFromGitHub,
}:
let
  version = "2025.03.03";
  self = ghidra.buildGhidraExtension {
    pname = "ghidra-firmware-utils";
    inherit version;

    src = fetchFromGitHub {
      owner = "al3xtjames";
      repo = "ghidra-firmware-utils";
      rev = "2e2af1eecac5ad8e8ee3fdb5e2be827a6cb24722";
      hash = "sha256-FlVhnLScLrQR2LSrUw5njoOc+/f36Id3ZSjgMTXH3b8=";
    };

    gradleBuildTask = "buildExtension";

    meta = {
      description = "Ghidra utilities for analyzing PC firmware ";
      homepage = "https://github.com/al3xtjames/ghidra-firmware-utils";
      license = lib.licenses.todo;
      maintainers = [ lib.maintainers.na ];
      platforms = lib.platforms.unix;
    };
  };
in
self
