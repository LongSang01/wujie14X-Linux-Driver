## 刷写BIOS+EC

**为 _胆大且有技术能力_ 的人提供的方式，请严格查看全部评论后斟酌是否使用**

### 一旦刷写损坏或者出现不兼容，可能导致电脑直接变砖，后果自负

### 友情提醒

**即使不刷写BIOS，现在也可以让电池充电上限正常工作**

无界14x是台公模机器，据[minortex](https://gist.github.com/w568w/b2fc5f9d1f4dff13efe751abec27b396?permalink_comment_id=6254617#gistcomment-6254617)测试，可使用`slimbook`的`BIOS`来让充电上限直接正常工作  
具体详情请查看新的[讨论](https://gist.github.com/w568w/957976b59906e0ce5d6c13ad342e1593)

据我的实际测试，刷写版本为`N.1.14GOS07`，除了`UEFI Logo`改变，目前没有遇到大的`BUG`，**但是依旧不推荐尝试**

操作过程如下：

**确保电池电量>60%且插入电源适配器，否则刷写失败可能导致直接变砖**  
**刷写过程中请勿进行任何形式的断电或手动重启**

- 从`https://cloud.slimbook.net/s/download?dir=/Laptops/Evo-14/Ryzen-8845HS/BIOS/` 下载压缩包

- 准备一块`FAT32`格式的`U盘`，将压缩包解压到`U盘根目录`，确保`BIOS`，`EC`，`EFI`文件夹及其内容均存在且无损坏

- `无界14x`默认就是通过`U盘`启动，如果你修改了启动项，请通过`BIOS`从`U盘`内启动，通过U盘进入到`UEFI SHELL`

- 根据`U盘`的`盘符`，默认为`FS0`，**输入`FS0:`进入`U盘`后**，执行以下命令刷写`BIOS`

  ```bash
  cd BIOS
  F.nsh
  ```

  等待`BIOS`刷写完成

- 再次进入`UEFI SHELL`，刷写`EC`
  ```bash
  cd EC
  F.nsh
  ```
  等待`EC`刷写完成

全部完成后进入`BIOS`，在`Advanced`选项卡将出现`Battery Maximum Limit`，可直接调整电池充电上限，你也可以通过我的脚本来直接修改
