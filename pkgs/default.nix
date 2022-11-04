# When you add custom packages, list them here
# These are similar to nixpkgs packages
{ pkgs }: {
  # example = pkgs.callPackage ./example { };
  # List packages installed in system profile. To search, run:
  # $ nix search wget
   environment.systemPackages = with pkgs; [
    # Editores
     vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
     libreoffice-qt
     kate

    # Web
     google-chrome
     firefox
     brave
     thunderbird

    # Media
     gimp
     spotify
     ffmpeg

    # UnPackages e Zip
     zip unzip unrar
     ripgrep-all
     archivemount
     p7zip

    # Utils
     glxinfo
     pciutils
     hplip
     gitFull
     wget
     tdesktop
     fzf

    # KDE
     latte-dock
     libsForQt5.kdenlive
     libsForQt5.ksshaskpass
     libsForQt5.sddm-kcm
    ];
}
