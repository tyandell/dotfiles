# dotfiles

## Usage

Make sure [Homebrew](https://brew.sh/) is installed, then run:

```sh
cd
git clone https://github.com/tyandell/dotfiles.git
cd dotfiles
./install.sh
```

Now you can switch `origin` to SSH:

```sh
git remote set-url origin git@github.com:tyandell/dotfiles.git
```

## Other stuff

### Use fish

Run `sudo nvim /etc/shells` and add:

```
/usr/local/bin/fish
```

Run:

```sh
chsh -s /usr/local/bin/fish
```

### Pick a shorter hostname

```sh
sudo scutil --set HostName mbp
```
