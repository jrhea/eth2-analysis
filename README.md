# eth2-sim

## ns-3
ns-3 is a discrete network simulator

https://www.nsnam.org/

### OSX Setup 

1. In the XQuartz preferences -> “Security” and make sure you’ve got “Allow connections from network clients” ticked

2.  Build the container: `make build`

3.  Run the container: `make run`

4.  Run the sample:

```bash
root@2bb82f935408:/usr/local# cd ns-allinone-3.30.1/ns-3.30.1/
root@2bb82f935408:/usr/local/ns-allinone-3.30.1/ns-3.30.1# ./waf --pyrun src/flow-monitor/examples/wifi-olsr-flowmon.py --vis

```

