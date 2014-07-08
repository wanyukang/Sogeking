#渠道号检查工具V0.8使用说明

##运行环境
####在OSX/Linux环境运行，需要在windows上运行请安装cygwin（http://www.cygwin.com/）

##目录结构说明
####./apk/——将需要检查的渠道包拷贝到/apk目录，apk必须为标准命名格式,(e.g., yidao_version_channel_release.apk)
####./result/——存放检查结果的目录

##配置channel_check.sh脚本

1、将要检查的渠道号填入channels，渠道号之间用空格隔开（或回车）。
注意：渠道号务必填写正确！验证包是使用渠道号和版本号获取的；

2、将要检查的版本号填入version。
注意：版本号务必填写正确！理由同上。

##运行脚本

1、直接运行channel_check.sh，let's rock.

##运行结果反馈
1、运行脚本完成后，在result目录下生成检查报告，同时脚本运行信息也会打印到屏幕上。