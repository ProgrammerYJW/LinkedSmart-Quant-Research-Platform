# 灵析量化投研平台

本地量化投研平台：**自然语言生成策略并回测 + GP/RL 双引擎因子挖掘**。纯本地运行，策略/因子/对话数据不出用户机器。

---

## 产品简介

灵析是一款面向量化研究者的本地投研工具。用户可以用自然语言描述想法，平台自动生成可回测的 Python 策略；同时内置 GP（遗传规划）与 RL（强化学习）双引擎，用于自动化因子挖掘与因子评估。所有数据与计算均在本地完成，适合对隐私与合规有要求的个人或机构研究者。

## 技术栈

- **后端**：Python + FastAPI
- **前端**：React + TypeScript + Vite
- **因子引擎**：Python 科学计算栈（NumPy / Pandas / PyArrow）
- **数据存储**：本地 Parquet 缓存
- **运行环境**：Windows 64 位

---

## 快速开始

> **仅支持 Windows。** 当前版本未做 macOS 适配。

### 1. 安装 Git LFS

本仓库使用 Git LFS 存储大文件。先安装 Git LFS：

```bash
git lfs install
```

### 2. 克隆仓库

```bash
git clone <你的仓库地址>
cd QuantPlatform
```

### 3. 合并并解压

**双击 `合并解压并启动.bat`**，它会自动：
1. 把 `QuantPlatform-0.1.0-win.zip.part001/002/003` 合并成完整 zip
2. 解压到 `QuantPlatform-0.1.0-win/`
3. 自动启动平台并打开浏览器

以后再次使用时，直接双击 `QuantPlatform-0.1.0-win/QuantPlatform.exe` 即可。

---

## 手动合并（可选）

如果你不想用 bat，也可以手动执行：

```bash
copy /b QuantPlatform-0.1.0-win.zip.part001+QuantPlatform-0.1.0-win.zip.part002+QuantPlatform-0.1.0-win.zip.part003 QuantPlatform-0.1.0-win.zip
```

然后解压 `QuantPlatform-0.1.0-win.zip` 并双击 `QuantPlatform.exe`。

---

## 系统要求

- Windows 10 / Windows 11（64 位）
- 无需额外安装 Python、Node.js 或数据库
- 建议内存 ≥ 16 GB

---

## 常见问题

**1. 双击后没有弹出浏览器？**

首次启动需要几秒钟初始化，请稍等。若仍未打开，可手动访问：

```
http://127.0.0.1:7701
```

**2. 如何退出？**

点击网页侧边栏底部的 **"退出平台"** 按钮，或关闭浏览器后在任务管理器中结束 `pythonw.exe` 进程。

**3. macOS 能用吗？**

不能。当前发行包只包含 Windows 运行时与二进制依赖，macOS 未做适配。

---

## 免责声明

本软件仅供量化投研学习与交流使用，不构成任何投资建议。历史回测结果不代表未来收益，使用本软件进行交易决策的风险由用户自行承担。
