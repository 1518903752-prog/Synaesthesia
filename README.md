# Synaesthesia · 通感

基于 Max 9 的烹饪视频声音作品。画面中的食材分别触发 Vocal Chops、Bass、Pluck、FX 和 Pad，亮度、饱和度、画面占比与烹饪进度控制音色和编排。

本仓库通过私有仓库邀请共享。

## 运行作品

1. 在本仓库的 Releases 中下载 Synaesthesia.zip 并完整解压。
2. 使用 Windows 64 位的 Max 9.1.4 或兼容版本打开 Synaesthesia.maxpat。
3. 安装所需的 VST 插件，并在 Max 的 Plug-ins 中执行 Full Scan。
4. 从主界面的 Start / Stop 开始播放。

完整下载包包含 demo.mp4、Python 3.13 运行环境、Node、FFmpeg、音频、脚本、时间轴、Max 子补丁和音色快照。
当前视频使用预先审核的本地时间轴。更换视频并重新分析时，通过本机环境变量配置 DASHSCOPE_API_KEY。

## 源码

- Synaesthesia.maxpat 为当前主补丁。
- scripts/ 包含播放控制、预分析、颜色和烹饪进度处理。
- analysis/bundled_score.json、analysis/bundled_source.json 和 analysis/timeline.json 保存当前视频的审核数据。
- 根目录中的 WAV、Max 子补丁和快照为工程资源。
- 历史 Main_Patcher_* 主补丁按原内容保留，供回看。历史版本中的旧绝对路径沿用原工程设置。

直接克隆源码后，可以从完整下载包补入 demo.mp4、runtime/ 和 tools/，再按上面的步骤运行。
工作副本会生成 analysis/score.json，该文件不提交。

## 音频插件

需要 kHs Limiter、proximityEQ+、OTT（VST2 和 VST3）、Spectral Corruptor、Emergence1。
VST 程序与授权通过各插件安装器提供。使用的 ABL 效果补丁、预设与版权声明保存在仓库中，ABL 二进制对象由 Max 9 提供。

## 验证范围

完整包已通过文件校验、异地解压、脚本启动与时间轴播放快照检查。Max 中所有第三方插件的完整试听仍需在运行设备上完成。

第三方资源的原许可声明见 licenses/ 及各资源随附信息。
