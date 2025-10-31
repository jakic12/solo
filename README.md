<div align="center">

```
  ██████  ▒█████   ██▓     ▒█████  
▒██    ▒ ▒██▒  ██▒▓██▒    ▒██▒  ██▒
░ ▓██▄   ▒██░  ██▒▒██░    ▒██░  ██▒
  ▒   ██▒▒██   ██░▒██░    ▒██   ██░
▒██████▒▒░ ████▓▒░░██████▒░ ████▓▒░
▒ ▒▓▒ ▒ ░░ ▒░▒░▒░ ░ ▒░▓  ░░ ▒░▒░▒░ 
░ ░▒  ░ ░  ░ ▒ ▒░ ░ ░ ▒  ░  ░ ▒ ▒░ 
░  ░  ░  ░ ░ ░ ▒    ░ ░   ░ ░ ░ ▒  
      ░      ░ ░      ░  ░    ░ ░  
```

### The Screen Sharing App Your Homies Actually Want to Use

[![License: AGPL v3](https://img.shields.io/badge/License-AGPL%20v3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0)
[![Built with Love](https://img.shields.io/badge/Built%20with-%E2%9D%A4-red)](https://github.com/jakic12/solo)
[![Not Microsoft Teams](https://img.shields.io/badge/Not-Microsoft%20Teams-success)](https://github.com/jakic12/solo)
[![All Homies Approved](https://img.shields.io/badge/All%20Homies-Approved-brightgreen)](https://github.com/jakic12/solo)

**Solo** is a next-generation screen sharing application designed for people who value their sanity, performance, and freedom.
</div>

## Why Solo?

### Because We All Hate Microsoft Teams

```
┌─────────────────────────────────────────────────────────────┐
│  "Is Microsoft Teams slow for you too?"                     │
│  "Why is Teams using 6GB of RAM?"                           │
│  "Teams crashed again..."                                   │
│  "Can anyone hear me? HELLO?"                               │
│  "My screen share is frozen..."                             │
└─────────────────────────────────────────────────────────────┘
                            │
                            │  Sound familiar?
                            ▼
                    ┌───────────────┐
                    │  Use Solo! 🎉 │
                    └───────────────┘
```

| Feature | Solo | Microsoft Teams | Zoom | Discord |
|---------|------|-----------------|------|---------|
| **Homie Approval** | 🟢 💯% | 🔴 0% | 🟡 50% | 🟡 75% |


```
╔═══════════════════════════════════════════════╗
║  "Solo: Because your screen share shouldn't  ║
║         make everyone's laptop fans spin up  ║
║           like it's about to take off."      ║
╚═══════════════════════════════════════════════╝
```

**Remember:** Life's too short for bad screen sharing apps! 🚀

---

# Development
```bash
# Build and deploy frontend image
cd client
sudo docker build -t plojyon/solo-frontend:latest .
sudo docker push plojyon/solo-frontend:latest
cd ..

# Import secrets
sops --decrypt secrets.enc.yaml | kubectl apply -f -

# Connect to k8s cluster
#export KUBECONFIG=/etc/rancher/k3s/k3s.yaml
export KUBECONFIG=~/.kube/config
```

