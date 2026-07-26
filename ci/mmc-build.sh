#!/usr/bin/sh

# invoked from the root of wezterm:
./get-deps
apt install rustup
rustup install stable
cargo build

apt -y install --no-install-recommends git
git config --global --add safe.directory /srv/build
ci/deploy.sh

mv *.deb ../artifacts
