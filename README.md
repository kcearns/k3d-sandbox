### List recipes

```bash
just
```

### Create cluster example

```bash
just cluster
```

### Optional cluster tools

```bash
# Install k9s for cluster management
curl -sS https://webinstall.dev/k9s | bash

# Install kubectx and kubens
sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens
```
