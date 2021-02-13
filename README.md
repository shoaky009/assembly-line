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

###1.初始化&配置

####1.1运行initializer并按照顺序放置转运器,程序会自动写入地址到config.lua
> 1.原材料箱子相邻的transposer
> 
> 2.1-14个与输入总线相邻的transposer
> 
> 3.4个流体transposer的地址
> 
> 4.4个me流体接口
> 
> 设置完成后系统会自动重启
> 再次说明顺序很重要中途有任何错误都会导致程序无法运行 如果放错清ctrl+c退出重新来过

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

####1.6如果要用oc把原料送到输入总线,需要放末影箱在输入总线下并且所有都在同一频道
>如果你有其他方法实现输入总线内有物品就不输送进去 并且按照输出箱的物品循序来抽取可以不用配置这些东西

###2.设置流体到db中

>目前已知的有润滑油单元,冷却液,UU,焊锡,超能硅岩,丁苯橡胶,无菌培养基,硅橡胶

###3.配置完毕
>cd assembly-line
>
>main (启动完毕后每2秒会到箱子里匹配物品)
>
>Ctrl + C (关闭程序)
>
>tools/readlabel (把物品放在原料箱里运行这个程序会打印出箱子内物品的label方便写配方)
>
>tools/db (把流体单元放入原料箱的第一个位置,用来记录到流体单元db)

###4.关于recipes中type的说明
4.1 item为在装配线中进入输入总线的物品

4.2 molten(熔物品),fluid(在配方中使用对应流体单元的label)这几类物品会按照配方中的顺序进入输入仓

4.3 molten会按照顺序进入提取机,然后被工厂吸取到对应输入仓的流体储罐中

4.4 fluid根据label会去db中查询对应的index,然后自动设置流体输出总线的对应输出流体

###5.util说明
5.1 db.lua
```shell
    #存储源材料箱第一个位置的物品到database
    util/db
    #存储源材料箱所有物品到database(注意不能超过81个 如果要支持81个要设置多个db)
    util/db all
    #打印所有database中的数据
    util/db readAll
    #清除所有database中的数据
    util/db clearAll
```
5.2 readitem.lua
```shell
    #打印源材料箱的所有物品名称+damage
    util/readitem
    #打印源材料箱第一个位置的物品信息
    util/readitem allInfo
    #替换源材料箱为储罐 然后放入流体读取流体信息
    util/readitem readFluid
```

##注意点

>1.recipes的顺序必须要一样不然会把物品送入错误的仓位,流体同理

>2.关于抽取提取机的流体使用工厂方块的原因是需要输出到近的储罐中,其他流体管道暂时还没发现能有这种功能

>3.请使用服务器来运行此程序,组件过多需要组件总线来扩展

>4.流体提取机和史蒂夫工厂是可以完全砍掉的 也就是完全依赖于ae里的流体存储,因为有些流体不想弄进ae里 比如聚变主机的通流琥珀等等..
> 如果要改首先要把recipes.lua中的MOLTEN类型全部替换为FLUID 然后要替换成对应的单元的物品名称 把单元放入源材料箱子里运行util/readitem即可读取
> 最后将单元放入源材料箱第一个格子 运行util/db 存储进db

>5.如果遇到流体不够的情况下程序会一直循环 直到ae中有足够的流体供给到me流体接口中

>6.安装完毕正常运行后不要拆除任何oc的组件 否则地址会更变 你需要手动修改或者拆除所有oc转运器和me流体接口config.lua需要重新下载 然后运行initializer
> 进行安装

##参考视频
https://www.bilibili.com/video/BV1iz4y1274d/

转换器相对于使用robot配置复杂,造价昂贵(相对来说 其实对iv来说都还行)
优势在于传输快,个人感觉机器人走得太慢了所以没有用
欢迎提出建议改进
