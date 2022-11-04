{ config, pkgs, ... }:
{
    # Enable the X11 windowing system.
    services.xserver.enable = true;
    services.xserver.layout = "br";
    services.xserver.libinput.enable = true;

    # Enable the Plasma 5 Desktop Environment.
    services.xserver.displayManager.sddm.enable = true;
    services.xserver.desktopManager.plasma5.enable = true;


    # Enable CUPS to print documents.
    services.printing.enable = true;

    # Enable sound.
    sound.enable = true;
    hardware.pulseaudio.enable = true;


    # Enable unfree packages
    nixpkgs.config.allowUnfree = true;

    # Some programs need SUID wrappers, can be configured further or are
    # started in user sessions.
    programs.dconf.enable = true;
    programs.mtr.enable = true;
    programs.gnupg.agent = {
        enable = true;
        enableSSHSupport = true;
    };

    # LAN discovery.
    services.avahi = {
        enable = true;
        nssmdns = true;
    };

    # List services that you want to enable:

    # Syslog-ng enable
    services.syslog-ng.enable = true;

    # Bluetooth.
    hardware.bluetooth.enable = true;
    services.blueman.enable = true;

    # Locate Server
    services.locate.enable = true;

    # fan controller daemon for Apple Macs and MacBooks.
    services.mbpfan.enable = true;

    # Docker
    virtualisation.docker.enable = true;
    virtualisation.docker.enableOnBoot = true;

    # Automatic Upgrades
    system.autoUpgrade.enable = true;
    system.autoUpgrade.allowReboot = true;


    # Enable the OpenSSH daemon.
    # services.openssh.enable = true;

    # Open ports in the firewall.
    # networking.firewall.allowedTCPPorts = [ ... ];
    # networking.firewall.allowedUDPPorts = [ ... ];
    # Or disable the firewall altogether.
    networking.firewall.enable = true;
    # List services that you want to enable:

    # Syslog-ng enable
    services.syslog-ng.enable = true;

    # Bluetooth.
    hardware.bluetooth.enable = true;
    services.blueman.enable = true;

    # Locate Server
    services.locate.enable = true;

    # fan controller daemon for Apple Macs and MacBooks.
    services.mbpfan.enable = true;

    # Automatic Upgrades
    system.autoUpgrade.enable = true;
    system.autoUpgrade.allowReboot = true;


    # Enable the OpenSSH daemon.
    # services.openssh.enable = true;

    # Open ports in the firewall.
    networking.firewall.enable = true;
    # networking.firewall.allowedTCPPorts = [ ... ];
    # networking.firewall.allowedUDPPorts = [ ... ];

}
