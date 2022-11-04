{ config, lib, pkgs, ... }:
{
    # Modulos de Programas e serviços do Home Manager
  programs.git = {
    enable = true;
    userName = "carlosalbertofilho";
    userEmail = "carlosalberto_filho@outlook.com";
  };
}
