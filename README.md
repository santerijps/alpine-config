# alpine config

This is an Alpine config with niri.

**Usage:**

```sh
doas apk add git
git clone https://github.com/santerijps/alpine-config
doas chmod 0700 alpine-config/configure.sh
doas alpine-config/configure.sh
cat alpine-config/profile.default >> ~/.profile
```

**Alternative:**

```sh
doas apk add curl
curl -fsSL https://raw.githubusercontent.com/santerijps/alpine-config/refs/heads/master/configure.sh | doas sh
curl -fsSL https://raw.githubusercontent.com/santerijps/alpine-config/refs/heads/master/profile.default >> ~./profile
```
