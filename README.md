# default-environment
My default dev environment

### To run this

First you'll need to install a few things in order to have a usable system:

```
sudo apt-get install keepassx gnome-tweaks ansible syncthing git gnome-shell-extensions
```

Once this is done, run the following to setup the default environment.

```
sudo ansible-pull -U https://github.com/pamsilva/default-environment --extra-vars "user=$USER"
```

### Notes

There is usually this very annoying issue with the cloning the repo, where it complains about permissions. I am not sure if I ever managed to fix it, but when I do, I really need to set it up here.

