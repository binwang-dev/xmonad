{
  description = "Stack based XMonad installation and configuration";
  
  inputs.nixpkgs.url = github:NixOS/nixpkgs/nixos-unstable;
  
  outputs = { self, nixpkgs }: {
    defaultPackage.x86_64-linux =
      with import nixpkgs { system = "x86_64-linux"; };
      stdenv.mkDerivation {
        name = "XMonad";
        src = self;
        nativeBuildInputs = with pkgs; [
          stack
          gmp.dev
          xorg.libX11
          xorg.libXext
          xorg.libXft
          xorg.libXinerama
          xorg.libXrandr
          xorg.libXScrnSaver
        ];
      };
  };
}
