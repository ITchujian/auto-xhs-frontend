## 自动化小红书 客户端

该端仅为作者练手所开发，如需更好的红薯服务，请转至新的仓库[烤红薯开源版](https://github.com/gupingan/khs-pyside6)

> 本教程文档适配客户端版本：auto-xhs v2.5

## 1 快速入门

1. 双击`自动小红书.exe`打开，进入黑色终端界面；

   > 此处如果卡顿不显示，按键盘上的1，应该就显示了，这种是缓冲迟钝，并非程序问题

   ![截图_20231110234752](https://gitee.com/xiaogugyx/drawing-bed/raw/master/%E6%88%AA%E5%9B%BE_20231110234752.png)

   ![截图_20231110232750](https://gitee.com/xiaogugyx/drawing-bed/raw/master/%E6%88%AA%E5%9B%BE_20231110232750.png)

2. 登录你的账号，输入账号后，提示输入密码，此处密码正常输入后，是无法看见的（这是为了确保密码不可见性），输入完成直接`回车`即可。

   ![截图_20231110232916](https://gitee.com/xiaogugyx/drawing-bed/raw/master/%E6%88%AA%E5%9B%BE_20231110232916.png)

3. 之后进入菜单区域，简单认识一下功能主菜单，其中`[gupingan]$`后可以输入内容，`gupingan`表示当前登录的用户。

   ![截图_20231110233017](https://gitee.com/xiaogugyx/drawing-bed/raw/master/%E6%88%AA%E5%9B%BE_20231110233017.png)

4. 先进行`修改配置`（输入`1`按回车），按照提示进行操作，配置成你所需要的配置（如果你想要添加自动化进程，那么**必须设置搜索词和评论文件**）。

   ![截图_20231110233303](https://gitee.com/xiaogugyx/drawing-bed/raw/master/%E6%88%AA%E5%9B%BE_20231110233303.png)

5. 所有设置均有引导，接下来说一下比较重要的两点，设置`搜索词`与`评论文件的路径`，多个搜索词可以这样的格式保存`搜索词1|搜索词2|...`，单个搜索词直接就是`搜索词`（见上图），至于多搜索词开关，目前并无实际作用，不用管。

6. 接下来就是`评论路径`设置，这里的评论文件应该是`.txt`格式最好，每行对应一条评论，可以**长按你的评论文件，然后拖动到窗口**中的输入框。

   ![截图_20231110233547](https://gitee.com/xiaogugyx/drawing-bed/raw/master/%E6%88%AA%E5%9B%BE_20231110233547.png)

   直接`回车`就是保存，如果你的文件路径不合法，会有对应提示的。保存成功后如下：

   ![截图_20231110233655](https://gitee.com/xiaogugyx/drawing-bed/raw/master/%E6%88%AA%E5%9B%BE_20231110233655.png)

7. 输入`q`或者直接`回车`返回上一级功能菜单（`主菜单`）。接下来输入`2`，然后扫码`成功后关闭图片`，回到终端界面，确认`是否创建`，`设置进程的名称`（**名称不要重复**！重复也会有提示的，简单好记的一串数字序号就行！）

   ![截图_20231111135143](https://gitee.com/xiaogugyx/drawing-bed/raw/master/%E6%88%AA%E5%9B%BE_20231111135143.png)

9. 设置完名称后，提示你**需不需要立刻激活进程**，根据你的需求来，激活后就按照配置中的任务默默在后台运行，此处是快速入门的教程，我选择激活，输入`y`即可。

   ![截图_20231111135221](https://gitee.com/xiaogugyx/drawing-bed/raw/master/%E6%88%AA%E5%9B%BE_20231111135221.png)

10. **强烈不建议从外部去打开日志文件！！**如何查看日志呢，在`自动化小红书.exe`所在的同级目录下，登录后有一个文件夹`日志-用户名`，里面就是自动化进程的日志文件，比如我这里的进程名称是`10088`，那么该日志文件就是`10088.csv`

    ![截图_20231110235226](https://gitee.com/xiaogugyx/drawing-bed/raw/master/%E6%88%AA%E5%9B%BE_20231110235226.png)

11. 该文件当然可以通过`excel`等软件打开，但是**不推荐**（进程容易崩溃），你可以在终端输入`log 进程名称`，比如我这里就是`log 10088`，就可以查看这个进程对应的所有日志。

    ![截图_20231110235559](https://gitee.com/xiaogugyx/drawing-bed/raw/master/%E6%88%AA%E5%9B%BE_20231110235559.png)

## 2 功能介绍

### 2.1 修改配置

> 该功能在主菜单的第`1`选项，输入`1`回车后可以看到一个表格，表格里呈现的就是当前配置信息，根据提示可以设置不同的项，同时设置值时，前后端均加了校验，防止乱写乱填。
>
> **实际上，配置功能中的信息就是`自动小红书.exe`所在的同级目录下的`settings.ini`，因此请勿删除该文件，也意味着你更新软件，直接替换exe客户端即可，不要去动你的配置文件**

### 2.2 添加进程

> 该功能在主菜单的第`2`选项，输入`2`回车后，首先将会检查配置文件中的依赖和设定是不是合法的，合法的话，就会弹出二维码，然后就是一系列的**扫码**、**确认**、**命名**，最终将创建完毕的进程存放于运行内存中（**暂时意味着你不能在进程创建好后更改它的参数**）。

### 2.3 查看进程

> 该功能在主菜单的第`3`选项，输入`3`回车后，你可以看到你所创建的进程的简单状况（更详细的可以了解终端命令中的`show`命令）

![截图_20231110235919](https://gitee.com/xiaogugyx/drawing-bed/raw/master/%E6%88%AA%E5%9B%BE_20231110235919.png)

### 2.4 操作进程

> 该功能在主菜单的第`4`选项，输入`4`回车后，会提示你**输入要操作的进程名称**，每个进程的名称都是唯一的，因此会轻松的找到唯一的进程，这也意味着**创建进程时请不要输入重复的名称**，当然创建进程的时候对重名情况也会有提示的。回到正文，如果该进程存在的话，在回车后，应该会让用户对该进程进行下一步的操作（5种操作）：
>
> **操作序号：1 激活 | 2 暂停 | 3 恢复 | 4 终止 | 5 删除**
>
> `激活`，就是让进程真正的**从0开始运行**起来，按照你部署的任务，进行自动化的操作并产生日志文件在你的本地文件夹中。
>
> `暂停`，就是激活了之后，你的进程状态处于`运行中`，你可以输入`2`对进程下达暂停命令，暂停会有轻微的延迟，无法做到立刻就暂停的。
>
> `恢复`，当你进程被`暂停`后，你可以进行恢复，让它恢复运行。**注意，暂停后的进程并不能通过激活的方式恢复！**
>
> `终止`，倘若你的进程没有被终止过，那么你可以让它彻底停止，`终止`了的进程将不保留之前的运行态，会彻底终止休眠，但是可以通过`激活`的方式重新让进程工作。
>
> `删除`，与`终止`的区别就是，删除不仅终止进程，还会彻底从内存中移除该进程，你无法通过任何命令和功能查看被删除了的进程。

![截图_20231111000015](https://gitee.com/xiaogugyx/drawing-bed/raw/master/%E6%88%AA%E5%9B%BE_20231111000015.png)

### 2.5 修改进程

> 该功能存在`bug`，暂时下线，后期会研究一番~

### 2.6 实时日志

> 该功能在主菜单的第`6`选项，它能让你的 cmd 终端**每隔 3 秒去获取最新的 8 行日志**（缺省情况），输入`6`回车后，会提示你输入一些命令，需要你**指定进程名**，比如：

```markdown
命令格式：
      [进程名] [最新数量（默认8）] [多少秒刷新（默认3）]
	- 最新数量 推荐 3~20
	- 刷新秒数不要过短过长 推荐 3~10
使用示例：
    你可以任选其中一种，推荐默认即可。
	10086 表示每 3 秒刷新进程 10086 的最新 8 条日志
	10086 10 表示每 3 秒刷新进程 10086 的最新 10 条日志
	10086 10 6 表示每 6 秒刷新进程 10086 的最新 10 条日志
```

![截图_20231111000728](https://gitee.com/xiaogugyx/drawing-bed/raw/master/%E6%88%AA%E5%9B%BE_20231111000728.png)

> 你可以看到，在输入 10088 后，系统提示正在接入这个进程的日志对象中，当接入完成后，终端会重新进入另一个界面，这个界面就是实时日志界面，用户见到这个界面每隔几秒刷新闪烁时不必担心，这是因为日志在循环获取中，**退出的话可以按一次 `ctrl + c` 快捷键**就可以了。

![截图_20231111000745](https://gitee.com/xiaogugyx/drawing-bed/raw/master/%E6%88%AA%E5%9B%BE_20231111000745.png)

**注意：实时日志不支持用户去复制，可能会导致日志消失（消失后类似快速入门中的序号 1 那样处理，按下一个数字应该就恢复了）。**

### 2.7 应用信息

> 该功能在主菜单的第`7`选项，输入`7`回车后，会显示当前用户的**账号**、进程数量的**额度**使用情况、软件**版本**与软件**版本号**（用于区分用户的软件是否已是最新），当前版本新增加了**IP地址与登录时间**，便于排查程序出现重大错误时，方便查阅对应用户的日志。

![截图_20231111135456](https://gitee.com/xiaogugyx/drawing-bed/raw/master/%E6%88%AA%E5%9B%BE_20231111135456.png)

## 3 基本操作

> 其实操作非常的简单，**注意看提示！**，**注意看提示！**，**注意看提示！**，作为用户的你，再去决定输入什么。总体而言，大概就是修改配置 > 添加进程 > 操作进程 > 查看进程等等，相互搭配即可。用得比较多的无非就是`终端命令以及操作进程`

### 关于配置中新增的`生僻字模式`

> 你只能为一个进程指定以下四种中的一种模式，append 就是原来的，现在可选范围更广。
>
> - `append`：末尾追加模式，往文段末尾追加生僻字【缺省值】
> - `unison`：同音替换模式，根据任意汉字的拼音替换为同音汉字，但无法限定声调
> - `non-cn`: 汉字转音模式，随机将文段中的任意汉字替换为拼音
> - `insert`：随机插入模式，在文段任意位置插入一个生僻字

## 4 终端命令

### help

> 帮助命令，当你输入`help`，回车后可以看到系统给你这么一些帮助，这些命令都十分简单，你在主菜单目录的那一级输入这些命令即可。

![截图_20231111001453](https://gitee.com/xiaogugyx/drawing-bed/raw/master/%E6%88%AA%E5%9B%BE_20231111001453.png)

> 比较常用的是`show`命令、`log`命令以及`note`命令（**原 urls 命令已取消**）。

### show 进程名

> **小红书编号是什么？**
>
> https://www.xiaohongshu.com/user/profile/小红书编号 ——这个是小红书账号主页
>
> **Session是什么？**
>
> 决定登录状态，一旦失效，对应的登录也会失效，后续出补登功能可能会用到。

![截图_20231111001618](https://gitee.com/xiaogugyx/drawing-bed/raw/master/%E6%88%AA%E5%9B%BE_20231111001618.png)

### log 进程名

> **下方级别是什么？**
>
> 总共有四种级别，分别是一般（`info`）、警告（`warning`）、成功（`success`）、失败（`failure`），当你通过该命令查看时，你可能还会发现不同级别的日志具备不同的颜色，分别是`白`、`黄`、`绿`、`红`，这个级别对应的就是某条笔记或者某个事件在某种状态下的事件性质。
>
> 该命令的其它语法形式： `log 10088 5`，表示查看10088进程的最新 5 条日志，后面的 5 不写表示查看全部的日志（**不推荐，损失性能**）。
>
> **软件的宗旨始终是：需求多少，解决多少， 轻量高效，降低过剩。 用户在每个命令和功能的使用上， 要深思熟虑，务必精准适度， 节约不是为当前，更是为了长远而使用！**

![截图_20231111002122](https://gitee.com/xiaogugyx/drawing-bed/raw/master/%E6%88%AA%E5%9B%BE_20231111002122.png)

### note 进程名

> 该命令是之前版本中的`urls`命令（已弃用），为了更适应主题，更改为`note`，表示查看对应进程搜索出来的笔记信息。
>
> **下述笔记ID有什么用呢？**
>
> https://www.xiaohongshu.com/explore/笔记ID —— 这就是某条笔记的地址
>
> 注意：这个笔记ID也是上方日志中的笔记编号。
>
> 该命令的其它语法形式： `note 10088 10`，表示查看10088进程的第 1 条到第 10 条笔记，后面的 10 不写表示查看全部的笔记（**不推荐，损失性能**）。

![截图_20231111003242](https://gitee.com/xiaogugyx/drawing-bed/raw/master/%E6%88%AA%E5%9B%BE_20231111003242.png)

> 除此以外还有另一种写法： `note 10088 11 42`，表示查看10088进程的第 11 条到第42 条笔记。

![截图_20231111003340](https://gitee.com/xiaogugyx/drawing-bed/raw/master/%E6%88%AA%E5%9B%BE_20231111003340.png)