
##如何使用

###1.设置config.lua
####1.1设置与原材料箱子相邻的transposer地址
```lua
config.chestInput.proxy = manager.proxy("your address")
```
####1.2设置transposer与原材料箱的面
>具体sides的定义查看官网API https://ocdoc.cil.li/api:sides
```lua
config.chestInput.chestSourceSide = sides.top
```
####1.3设置transposer与材料输出到输入总线的箱子
```lua
config.chestInput.chestOutputSide = sides.west
```
####1.4设置transposer与熔物品的输出面
```lua
config.chestInput.moltenOutputSide = sides.north
```
####1.5设置流体输入面
```lua
config.fluidSourceSide = sides.bottom
```
####1.6设置4个流体transposer的地址
>序号代表装配线配方中对应的位置
```lua
config.fluidInput1 = manager.proxy("your address")
config.fluidInput2 = manager.proxy("your address")
config.fluidInput3 = manager.proxy("your address")
config.fluidInput4 = manager.proxy("your address")
```
####1.7设置4个ME流体接口的地址
>序号代表装配线配方中对应的位置
```lua
config.fluidInterface1 = manager.proxy("your address")
config.fluidInterface2 = manager.proxy("your address")
config.fluidInterface3 = manager.proxy("your address")
config.fluidInterface4 = manager.proxy("your address")
```

###2.设置流体到db中


##注意点
###1.recipes的顺序必须要一样不然会把物品送入错误的仓位,流体同理
###2.输入总线必须使用ulv的
###3.建议输入仓用高等级的
>如果2个仓位是相同的物品,并且数量没有达到64会有问题 因为暂时没有发现有这类配方,所以不做处理
###4.目前熔物品没有处理超过一组的量也就是9216mb,后续有这类配方会更新代码处理
###5.关于recipes中type的说明
5.1 item为在装配线中进入输入总线的物品

5.2 molten,fluid,cell都是进入装配线的输入仓,这几类物品会按照配方中的顺序进入输入仓

5.3 molten会按照顺序进入提取机,然后到缓存的超级缸 再进入输入仓

5.4 fluid根据name会去db中查询对应的index,然后自动设置流体输出总线的对应输出流体

5.5 cell直接到缓存的超级缸中,再到输入仓
##参考图
