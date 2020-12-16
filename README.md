##如何使用
>推荐fork仓库之后修改完配置文件提交到远程仓库,
>然后通过脚本拉取增加效率
```shell script
#在os中运行下载以下脚本
wget https://gitee.com/sh0aky/assembly-line/raw/master/script
#运行默认拉取的仓库是https://gitee.com/sh0aky/assembly-line 
#github经过测试经常有些文件下载失败 如果服务器在国外可以考虑
#如果fork了想要拉取自己的仓库在script后面添加自己的仓库前缀
#e.g. 自定义仓库 script https://gitee.com/xxxxx/assembly-line/raw
#e.g. 自定义仓库和分支 script https://gitee.com/xxxxx/assembly-line/raw xxxx
#e.g. github script https://raw.githubusercontent.com/shoaky009/assembly-line xxxx
script
```

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
config.fluidInput[1] = manager.proxy("your address")
config.fluidInput[2] = manager.proxy("your address")
config.fluidInput[3] = manager.proxy("your address")
config.fluidInput[4] = manager.proxy("your address")
```
####1.7设置4个ME流体接口的地址
>序号代表装配线配方中对应的位置
```lua
config.fluidInterface[1] = manager.proxy("your address")
config.fluidInterface[2] = manager.proxy("your address")
config.fluidInterface[3] = manager.proxy("your address")
config.fluidInterface[4] = manager.proxy("your address")
```

####1.8如果要用oc把原料送到输入总线,需要放末影箱在输入总线下并且所有都在同一频道
>如果你有其他方法实现输入总线内有物品就不输送进去 并且按照输出箱的物品循序来抽取可以不用配置这些东西
```lua
--开启oc输送
config.chestOutputMode = true
--配置1-13个槽的转换器地址
config.chestOutput[1] = manager.proxy("your address")
config.chestOutput[2] = manager.proxy("your address")
config.chestOutput[3] = manager.proxy("your address")
config.chestOutput[4] = manager.proxy("your address")
config.chestOutput[5] = manager.proxy("your address")
config.chestOutput[6] = manager.proxy("your address")
config.chestOutput[7] = manager.proxy("your address")
config.chestOutput[8] = manager.proxy("your address")
config.chestOutput[9] = manager.proxy("your address")
config.chestOutput[10] = manager.proxy("your address")
config.chestOutput[11] = manager.proxy("your address")
config.chestOutput[12] = manager.proxy("your address")
config.chestOutput[13] = manager.proxy("your address")
```

###2.设置流体到db中

>目前已知的有润滑油单元

###3.配置完毕
>cd assembly-line
>
>main (启动完毕后每2秒会到箱子里匹配物品)
>
>Ctrl + C (关闭程序)
>
>tools/readlabel (把物品放在原料箱里运行这个程序会打印出箱子内物品的label方便写配方)
>
>tools/db (把流体单元放入原料箱的第一个位置,用来记录到流体单元db 
>只有那种不能固化,并且不是1000mb的配方才需要配置这个,不然推荐使用molten或cell来定义配方)

##注意点

>1.recipes的顺序必须要一样不然会把物品送入错误的仓位,流体同理

>2.输入总线必须使用ulv的

>3.建议输入仓用高等级的

>4.如果出现转换器无法吸取me流体接口的流体,请把me流体接口的第一个槽位随便填装一种流体因为oc的api和me流体接口有点问题第1个槽位满了之后才会吸取第2个槽的流体,
>但是第2个槽的流体满了不会从第3个槽位吸取流体,所以才第2个槽位来设置不同流体的设置

>5.关于抽取提取机的流体使用工厂方块的原因是需要输出到近的储罐中,其他流体管道暂时还没发现能有这种功能

>6.目前熔物品没有处理超过一组的量也就是9216mb,后续有这类配方会更新代码处理

###5.关于recipes中type的说明
5.1 item为在装配线中进入输入总线的物品

5.2 molten(熔物品),fluid(在配方中使用对应流体单元的label),cell(流体单元)都是进入装配线的输入仓,这几类物品会按照配方中的顺序进入输入仓

5.3 molten会按照顺序进入提取机,然后被工厂吸取到对应输入仓的流体储罐中

5.4 fluid根据label会去db中查询对应的index,然后自动设置流体输出总线的对应输出流体

5.5 cell直接到超级缸(或EnderIO的储罐)然后被工厂方块提取到输入仓
##参考图


转换器相对于使用robot配置复杂,造价昂贵(相对来说 其实对iv来说都还行)
优势在于传输快,个人感觉机器人走得太慢了所以没有用
欢迎提出建议改进
