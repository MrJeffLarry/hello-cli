# test

Linux

apt

```bash
curl -s --compressed "https://raw.githubusercontent.com/MrJeffLarry/hello-cli/main/apt/public_key.gpg" | sudo apt-key add -
sudo curl -s --compressed -o /etc/apt/sources.list.d/hello-cli.list "https://raw.githubusercontent.com/MrJeffLarry/hello-cli/main/apt/hello-cli.list"
sudo apt update
sudo apt install hello-cli
```