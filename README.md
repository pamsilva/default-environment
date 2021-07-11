# default-environment
My default dev environment

## To run this

First you'll need to install a few things in order to have a usable system:

```
sudo apt-get install keepassx gnome-tweaks ansible syncthing git gnome-shell-extensions
```


## Setup Git

The machine needs to be setup properly to access github through a key, and that key needs to be added to the ssh agent, in order to be able to clone the repo and run the rest of the ansible setup.

After creating and setting up the new key in the github account, run the following to activate the account:

```
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/<private_key>
```

## Executing the ansible setup

Once this is done, run the following to setup the default environment.

```
sudo ansible-pull -U https://github.com/pamsilva/default-environment --extra-vars "user=$USER"
```
