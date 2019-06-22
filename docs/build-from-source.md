# Build from source

Instead of using image from dockerhub, you can build the image yourself.

```bash
docker build -t egel/usb-mini-traffic-light:latest .
docker run -i -t --privileged egel/usb-mini-traffic-light:latest /bin/bash
```
