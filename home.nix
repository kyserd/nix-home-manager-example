{ lib, pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      hello
    ];

    # This needs to be set to your username
    username = "test";
    homeDirectory = "/home/test";

    # Don't ever change this
    #
    stateVersion = "25.11";
  }
}
