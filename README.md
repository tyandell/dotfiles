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

## Other Stuff

### Use Fish

Run `sudo nvim /etc/shells` and add:

```
/opt/homebrew/bin/fish
```

Run:

```sh
chsh -s /opt/homebrew/bin/fish
```

### Change Hostname

```sh
sudo scutil --set HostName mbp
```
