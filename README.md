 # fastSwift-Server-Installer
Configure your computer to run as an fastSwift server.
Note: This script only works on Linux distros and not in macOS.

## Requierements
All you need is an SSH server with an user login credentials (if possible specialy for Swift execution), FFKit.swift at /home/fastswift/FFKit.swift and Swift compiler installed.
### Install Swift
[For Ubuntu](https://swift.org/download/) and for [Raspberry Pi](http://www.agreatdaytocode.com/installing-swift-3-0-on-raspberry-pi/)

# Installation or update and create a 'swiftexec' user
```
curl -s -L http://goo.gl/hPvdsn | sudo bash -s swiftexec
```

# Installation or update on current user
```
curl -s -L http://goo.gl/hPvdsn | sudo bash -s $USER
```


# Usage

If you have fastSwift installed, in your iDevice, go to Settings > fastSwift > Custom server, enable Custom Server, and enter credentials.


