因为工作的需要，接触了RST(reStructuredText)+Sphinx，主要用来编写生成文档，发现效果不赖。RST语言和Markdown类似，但相对于 **Mardown** 标记语言，RST语言功能更加强大，语言体系更加标准。


简介
====

reStructuredText
----------------

**reStructuredText** 是扩展名为 ``.rst`` 的纯文本文件，含义为“重新构建的文本”，是 **Python** 编程语言的 **Docutils** 项目的一部分。 ``.rst`` 文件是一种轻量级标记语言，与html的复杂结构相比，它的设计对人更加友好，被设计为容易阅读和编写的纯文本，并且可以借助 **Docutils** 这样的程序进行文档处理，也可以转换为html或pdf等多种格式，或由Sphinx这样的程序转换为man手册等更多格式。

Sphinx
------

**Sphinx** 是一种工具，它允许开发人员以纯文本格式编写文档，以便采用满足不同需求的格式轻松生成输出。它使用 **reStructuredText** 标记语法来提供文档控制，可以将 **Sphinx** 想像成为一种文档框架：它会抽象化比较单调的部分，并提供自动函数来解决一些常见问题，比如突出显示标题索引和特殊代码（在显示代码示例时），以及突出显示适当的语法。


环境搭建
========

安装Python环境
--------------

**Sphinx** 和 **reStructuredText** 是Python编程语言的一部分，所以需要先配置好Python环境。

1. 下载

在Python的 `官方网站 <https://www.python.org/downloads/windows/>`_  下载安装程序。根据所用系统是32位还是64位选择下载哪个进行安装。考虑到平时使用的相关插件不支持Python 3，故本文选择Python 2，可以根据自己的需要选择具体版本进行安装。

.. figure:: ./images/python官网.png

   Python官网

2. 安装
   
双击下载的Python软件，根据需要修改安装路径，默认安装路径为 ``C:\python27`` 。

3. 添加系统环境变量

将Python安装路径下的 ``C:\Python27\Scripts`` 和 ``C:\Python27`` 添加到系统环境变量中。


安装pip插件
-----------
   
pip也是一个Python的包管理工具，它和setuptools类似，但是pip比setuptools更好用，现在安装python包基本都是使用pip了。下载 `pip <https://pypi.org/project/pip/#files>`_ 插件，将下载的文件解压（解压到一个文件夹，用CMD控制台进入解压文件的目录 ，目录中不要包含汉字），进入解压目录，执行命令::

  >> python setup.py install


安装Sphinx插件
--------------

安装完成pip之后，即可很便利的安装各种Python插件了。安装 **Sphinx** 只需输入一下命令::

  >> pip install sphinx

即可完成 **Sphinx** 最新版本的安装。

.. note::

   因为Sphinx依赖其它的Python插件，因此强烈推荐使用在线安装。如果主机未能联网，可以先选择一台可联网的主机，安装好Python及其相关插件后，将整个安装文件夹（如默认安装，则是C:\Python27）拷贝过去也行。


sphinx-rtd-theme
----------------

这是Sphinx支持的一种网页主题之一，仅仅对生成HTML时有效。个人对这种主题比较喜爱，其它的不甚满意。安装方法和Sphinx的安装类似，故不再赘述。


安装LaTeX
---------

LaTeX是一个高质量的排版系统，利用TeX格式，即使使用者没有排版和程序设计的知识也可以充分发挥由TeX所提供的强大功能，能在几天，甚至几小时内生成很多具有书籍质量的印刷品。对于生成复杂表格和数学公式，这一点表现得尤为突出。因此它非常适用于生成高印刷质量的科技和数学类文档。这个系统同样适用于生成从简单的信件到完整书籍的所有其他种类的文档。

Windows中常用的TeX编译引擎是 `MikTex <https://miktex.org/download>`_ ，如下所示：

.. figure:: ./images/MiKTeX_Download.png

   下载MiKTeX

如果需要在移动设备中安装，请参考 `Portable Edition <https://miktex.org/howto/portable-edition>`_ 的操作。

安装完成后，将安装路径 ``{PARENT_DIR}/MiKTeX 2.9/miktex/bin/x64`` 添加到环境变量中。


安装sublime编辑器
-----------------

推荐使用sublime编辑器编写RST文档，因为sublime有一个RST插件包，里面集成了许多快捷键，通过快捷键可以快速的插入相关命令。

1. 下载安装

根据电脑系统配置，选择对应版本的 `Sublime <http://www.sublimetext.com/3>`_ 下载。下载完成后，双击安装即可。

2. 安装RST插件
   
下载 `sublime-rst-completion <https://github.com/mgaitan/sublime-rst-completion>`_ 插件包。下载完成后，运行 **Sublime Text 3** ，在菜单栏中依次选择：【Preferences】->【Browse Packages...】，将插件解压到打开的 *Packages* 文件夹中，安装该插件后支持RST语法快捷键的输入。

.. figure:: ./images/add_sublime_rst_completion.png

   添加rst插件


创建编辑
========

创建文件夹
----------

创建一个文件夹用于存放即将编写的RST文档，以本文为例，创建的文件夹名称为： *rst* 。
   
.. note:: 

   文件夹路径不要包含中文路径名称，Python对中文的支持不是很友好。


创建编辑环境
------------

打开控制台窗口，既可以使用Windows系统自带的CMD控制台程序，也可以使用第三方的控制台，本文使用git base。如果使用Windows自带的CMD控制台界面，按下键盘中的Win + R快捷键，打开运行窗口，在输入栏中输入cmd，回车，打开 Windows 控制台界面。如下所示：

.. figure:: ./images/win_run.png

   打开运行界面


输入命令，进入刚刚创建的文件夹目录后，输入命令创建编辑环境::

  >> sphinx-quickstart

之后根据提示输入即可。如下所示：

.. figure:: ./images/sphinx-quickstart.png

   sphinx-quickstart

个人推荐文档编辑生成目录和文档目录最好分开，因此从创建时，选择 `` Separate source and build directories (y/n) [n]: y`` 选择的是y。

创建完成之后，如下所示：

.. figure:: ./images/setup_result.png

   创建完成生成效果

主要的文件有：

- build
- source
- make
- Makefile

build用来存放文档编译过程中的中间文件以及最终生成的文件；source用来存储用户实际的文档；make和Makefile文件是不同平台下是用来生成文档时使用的。

进入 *source* 目录，主要有一个index文件，该文件是用来组织整片文档目录结构的，打开 index.rst 文档，中间位置代码为::

  .. toctree::
     :maxdepth: 2
     :caption: Contents:

     添加新的文件
 
后续即可在后面添加新建的文档了，如新建了一个test.rst文档，即可在后面添加 test 文件名称即可。

::

  .. toctree::
     :maxdepth: 2
     :caption: Contents:

     test

文档编辑完成后，即可在文档根目录下(本文即rst目录)，输入 make 会弹出不同输出格式的编译命令，如果需要编译输出HTML，只需输入::

  >> make html

同理其它文档。

最终在build\html中生成最终的文档。

.. note::

   如果生成PDF，需要先使用make latex生成tex文件，之后进入build\\latex，在终端界面输入 ``make`` 命令，即可生成最终的PDF文件。

