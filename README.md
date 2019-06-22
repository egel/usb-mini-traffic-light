# USB Mini Traffic Light

[![Build Status](https://travis-ci.org/egel/usb-mini-traffic-light.svg?branch=master)](https://travis-ci.org/egel/usb-mini-traffic-light)
[![MIT LICENSE](http://img.shields.io/badge/license-MIT-yellowgreen.svg?style=square)](https://github.com/egel/usb-mini-traffic-light/blob/master/LICENSE)

> This small image allows you to easy use of [USB-MiniTrafficLight](http://www.cleware-shop.de/epages/63698188.sf/en_US/?ObjectPath=/Shops/63698188/Products/41/SubProducts/41-1) from Cleware GmbH.

## Use docker image

Connect your Mini Traffic Light to USB port and:

```bash
docker pull egel/usb-mini-traffic-light:latest
docker run -i -t --privileged egel/usb-mini-traffic-light:latest /bin/bash
/ $ sudo clewarecontrol -l

# enable green light
/ $ sudo clewarecontrol -as 2 1
```

> See more: `sudo clewarecontrol -h`
