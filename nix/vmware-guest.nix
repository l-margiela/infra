{
  virtualisation.vmware.guest.enable = true;
  fileSystems."/mnt/host" = {
    device = ".host:/";
    fsType = "fuse./run/current-system/sw/bin/vmhgfs-fuse";
    options = ["umask=22" "uid=1000" "gid=1000" "allow_other" "defaults" "auto_unmount"];
  };
}
