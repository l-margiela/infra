# Helpful for a quick and dirty (trusted) local network/VM Docker setup when
# using Docker locally is not an option. Use with a local subnet instead of
# 0.0.0.0.
#
# It's worth noting that the address doesn't follow the format Docker
# documentation would suggest (`tcp://0.0.0.0:2375`). Instead, is uses
# the format described in `man systemd.socket 5`.
#
# Use together with DOCKER_HOST on the client machine.
{
  virtualisation.docker = {
    enable = true;
    listenOptions = [ "0.0.0.0:2375" ];
  };
  users.users.hhes.extraGroups = [ "docker" ];
}
