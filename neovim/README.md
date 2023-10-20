Install plugin & dependencies execute in neovim:

```vim
:PluginInstall
:PluginUpdate
:CocInstall coc-go coc-sh coc-docker coc-json
```

### NERDTree

查看帮助文档：`:h NERDTree`

如果只是想查看快捷键设置：`h NERDTreeMppings` 或者按下`?` 展示/隐藏

按下`,g` 切换出目录，切换到对应目录或者文件，按下`m`，就会出现 nerdtree目录，要操作的选项都在里面

| 按键 | 作用                                     |
| ---- | ---------------------------------------- |
| a    | add a child node                         |
| m    | move the current node                    |
| d    | delete the current node                  |
| r    | reveal in finder the current node        |
| o    | open the current node with system editor |
| q    | quiklook the current node                |
| c    | copy the current node                    |
| p    | copy path to clipboard                   |
| s    | run system command in this directory     |


