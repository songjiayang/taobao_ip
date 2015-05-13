# taobao_ip
This is tool to get ip detail with taobao http api.

### Use

#### 1. Start
```
require 'taobao_ip'

taobao_ip = TaobaoIP.new(IP_ADDRESS)
OR 
taobao_ip = TaobaoIP.new(IP_ADDRESS, SLICE_PARAMS)

```
#### 2. Get all results
```
taobao_ip.results
```
if SLICE_PARAMS is not empty, it will reture with attributes filter.
eg:

```
TaobaoIp.new("192.30.252.128", ['country']).results
=> {"country"=>"美国"} 
```

#### 3. Get Specific attribute
```
taobao_ip.xx
```
All allow attribute is one of the api's response data's attributes
