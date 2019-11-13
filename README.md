# eth2-sim

## ns-3
ns-3 is a discrete network simulator

**website:** https://www.nsnam.org/

### OSX Setup

#### Prerequisites
- Docker
- [XQuartz](https://dl.bintray.com/xquartz/downloads/XQuartz-2.7.11.dmg)

#### Settings 

In the XQuartz preferences -> “Security” and make sure you’ve got “Allow connections from network clients” ticked. 


### Build

Navigate to the ns-3 directory:
```bash
make build
```


### Run

To run the container, navigate to the ns-3 directory:
```bash
make run
```

To run the sample, from the container's shell:
```bash
root@2bb82f935408:/usr/local# cd ns-allinone-3.30.1/ns-3.30.1/
root@2bb82f935408:/usr/local/ns-allinone-3.30.1/ns-3.30.1# ./waf --pyrun src/flow-monitor/examples/wifi-olsr-flowmon.py --vis

```
![ns3-sample](https://raw.githubusercontent.com/jrhea/eth2-sim/master/img/ns3-sample.jpeg)
