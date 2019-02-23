# General

Used on a RPI 2 overclocked to "High" and 256mb memory split. 
I am using this to access a jupyterlab server with chromium.
Works completely fine. 

# Other considerations

1. Decrease swappiness

Every MB of RAM is exactly calculated. 
With chromium (jupyterlab, github, search) and a terminal open I need around 350MB.
At the default (60) swapping is always close.
Try changing it with      

```
sudo sysctl vm.swappiness=20
```

or set `vm.swappiness`  permanently in

```
/etc/sysctl.conf
```


