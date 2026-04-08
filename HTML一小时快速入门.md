# HTML 一小时快速入门

> 零基础也能快速上手，掌握网页开发的核心基础

---

## 目录
1. [HTML是什么](#一html是什么)
2. [HTML基本结构](#二html基本结构)
3. [常用标签详解](#三常用标签详解)
4. [表单与交互](#四表单与交互)
5. [实战练习](#五实战练习)

---

## 一、HTML是什么

**HTML**（HyperText Markup Language，超文本标记语言）是构建网页的标准语言。

- **不是编程语言**，而是**标记语言**
- 用**标签（Tag）**来描述网页的结构和内容
- 浏览器读取HTML文件，渲染成可视化的网页

### 1.1 标签的基本语法

```html
<标签名>内容</标签名>
```

例如：`<p>这是一个段落</p>`

- `<p>` 是**开始标签**
- `</p>` 是**结束标签**
- 中间是**内容**

### 1.2 自闭合标签

某些标签没有内容，可以自闭合：

```html
<br>        <!-- 换行 -->
<img>       <!-- 图片 -->
<input>     <!-- 输入框 -->
<hr>        <!-- 水平线 -->
```

> HTML5 中自闭合标签末尾的 `/` 可写可不写，如 `<br>` 和 `<br/>` 都正确

---

## 二、HTML基本结构

每个HTML文档都有固定的骨架：

```html
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>网页标题</title>
</head>
<body>
    <!-- 页面可见内容写在这里 -->
    <h1>Hello World</h1>
    <p>这是我的第一个网页！</p>
</body>
</html>
```

### 各部分说明

| 标签 | 作用 |
|------|------|
| `<!DOCTYPE html>` | 声明文档类型为HTML5 |
| `<html>` | 根元素，包裹整个页面 |
| `<head>` | 头部区域，存放元数据（不会显示在页面上） |
| `<meta charset="UTF-8">` | 设置字符编码，防止中文乱码 |
| `<title>` | 网页标题（显示在浏览器标签页） |
| `<body>` | 主体区域，页面可见内容都在这里 |

---

## 三、常用标签详解

### 3.1 标题标签

6个级别，从大到小：

```html
<h1>一级标题（最大）</h1>
<h2>二级标题</h2>
<h3>三级标题</h3>
<h4>四级标题</h4>
<h5>五级标题</h5>
<h6>六级标题（最小）</h6>
```

> 一个页面建议只有一个 `<h1>`，有利于SEO

### 3.2 段落与文本

```html
<p>这是一个段落。段落会自动换行，并保持一定间距。</p>
<p>这是另一个段落。</p>

<!-- 换行（单标签） -->
<br>

<!-- 水平分割线 -->
<hr>

<!-- 文本格式化 -->
<strong>加粗文本</strong>
<em>斜体文本</em>
<del>删除线</del>
<mark>高亮标记</mark>
```

### 3.3 列表

**无序列表**（ul = unordered list）：

```html
<ul>
    <li>苹果</li>
    <li>香蕉</li>
    <li>橙子</li>
</ul>
```

**有序列表**（ol = ordered list）：

```html
<ol>
    <li>第一步</li>
    <li>第二步</li>
    <li>第三步</li>
</ol>
```

### 3.4 链接

```html
<!-- 基本链接 -->
<a href="https://www.example.com">点击访问</a>

<!-- 新窗口打开 -->
<a href="https://www.example.com" target="_blank">新窗口打开</a>

<!-- 链接到页面内锚点 -->
<a href="#section1">跳转到第一节</a>

<!-- 发送邮件 -->
<a href="mailto:email@example.com">发送邮件</a>
```

### 3.5 图片

```html
<img src="图片路径" alt="图片描述" width="300" height="200">
```

| 属性 | 说明 |
|------|------|
| `src` | 图片地址（必填） |
| `alt` | 图片无法显示时的替代文字（必填，利于无障碍访问） |
| `width/height` | 宽度和高度（可选，建议CSS控制） |

### 3.6 容器标签（布局专用）

```html
<!-- 块级容器 -->
<div>
    <h2>这是一个区块</h2>
    <p>里面可以放任意内容</p>
</div>

<!-- 行内容器 -->
<p>这是一段文字，<span style="color: red;">这部分变红色</span>，其他正常。</p>
```

| 标签 | 特点 |
|------|------|
| `<div>` | 块级元素，独占一行，用于大区域布局 |
| `<span>` | 行内元素，不独占一行，用于小段文字样式 |

### 3.7 语义化标签（HTML5新增）

```html
<header>    <!-- 页面或区块的头部 -->
<nav>       <!-- 导航栏 -->
<main>      <!-- 页面主要内容（每个页面只有一个） -->
<article>   <!-- 独立的文章内容 -->
<section>   <!-- 文档中的节或区块 -->
<aside>     <!-- 侧边栏 -->
<footer>    <!-- 页面或区块的底部 -->
```

示例：

```html
<body>
    <header>
        <h1>网站名称</h1>
        <nav>
            <a href="#">首页</a>
            <a href="#">关于</a>
        </nav>
    </header>

    <main>
        <article>
            <h2>文章标题</h2>
            <p>文章内容...</p>
        </article>
    </main>

    <footer>
        <p>版权所有 © 2024</p>
    </footer>
</body>
```

---

## 四、表单与交互

表单用于收集用户输入：

```html
<form action="/submit" method="POST">
    <!-- 文本输入 -->
    <label for="username">用户名：</label>
    <input type="text" id="username" name="username" placeholder="请输入用户名">

    <br><br>

    <!-- 密码输入 -->
    <label for="password">密码：</label>
    <input type="password" id="password" name="password">

    <br><br>

    <!-- 邮箱输入 -->
    <label for="email">邮箱：</label>
    <input type="email" id="email" name="email">

    <br><br>

    <!-- 单选按钮 -->
    <label>性别：</label>
    <input type="radio" name="gender" value="male" id="male">
    <label for="male">男</label>
    <input type="radio" name="gender" value="female" id="female">
    <label for="female">女</label>

    <br><br>

    <!-- 复选框 -->
    <label>爱好：</label>
    <input type="checkbox" name="hobby" value="reading"> 阅读
    <input type="checkbox" name="hobby" value="sports"> 运动
    <input type="checkbox" name="hobby" value="music"> 音乐

    <br><br>

    <!-- 下拉选择 -->
    <label for="city">城市：</label>
    <select id="city" name="city">
        <option value="">请选择</option>
        <option value="beijing">北京</option>
        <option value="shanghai">上海</option>
        <option value="guangzhou">广州</option>
    </select>

    <br><br>

    <!-- 文本域 -->
    <label for="intro">自我介绍：</label>
    <br>
    <textarea id="intro" name="intro" rows="4" cols="50" placeholder="请简单介绍你自己"></textarea>

    <br><br>

    <!-- 提交按钮 -->
    <button type="submit">提交</button>
    <button type="reset">重置</button>
</form>
```

### 常用 input 类型

| 类型 | 说明 | 示例 |
|------|------|------|
| `text` | 普通文本 | `<input type="text">` |
| `password` | 密码（显示为圆点） | `<input type="password">` |
| `email` | 邮箱（自动验证格式） | `<input type="email">` |
| `number` | 数字 | `<input type="number">` |
| `tel` | 电话号码 | `<input type="tel">` |
| `date` | 日期选择器 | `<input type="date">` |
| `checkbox` | 复选框 | `<input type="checkbox">` |
| `radio` | 单选按钮 | `<input type="radio">` |
| `file` | 文件上传 | `<input type="file">` |
| `submit` | 提交按钮 | `<input type="submit">` |

---

## 五、实战练习

### 练习1：个人简历页面

尝试创建一个简单的个人简历页面，包含：
- 姓名标题（h1）
- 个人照片（img）
- 基本信息段落（p）
- 技能列表（ul/li）
- 教育经历（ol/li）
- 联系方式链接（a）

### 练习2：简单登录表单

创建一个包含以下元素的表单：
- 用户名输入框
- 密码输入框
- 记住我复选框
- 登录按钮

---

## 附录：常用标签速查表

| 标签 | 用途 | 是否双标签 |
|------|------|-----------|
| `<!DOCTYPE html>` | 文档声明 | 单 |
| `<html>` | 根元素 | 双 |
| `<head>` | 头部信息 | 双 |
| `<title>` | 页面标题 | 双 |
| `<body>` | 页面主体 | 双 |
| `<h1>-<h6>` | 标题 | 双 |
| `<p>` | 段落 | 双 |
| `<br>` | 换行 | 单 |
| `<hr>` | 水平线 | 单 |
| `<a>` | 链接 | 双 |
| `<img>` | 图片 | 单 |
| `<ul>` | 无序列表 | 双 |
| `<ol>` | 有序列表 | 双 |
| `<li>` | 列表项 | 双 |
| `<div>` | 块级容器 | 双 |
| `<span>` | 行内容器 | 双 |
| `<form>` | 表单 | 双 |
| `<input>` | 输入框 | 单 |
| `<button>` | 按钮 | 双 |
| `<textarea>` | 文本域 | 双 |
| `<select>` | 下拉选择 | 双 |
| `<option>` | 选项 | 双 |
| `<label>` | 标签 | 双 |
| `<table>` | 表格 | 双 |
| `<tr>` | 表格行 | 双 |
| `<td>` | 表格单元格 | 双 |
| `<th>` | 表头单元格 | 双 |
| `<header>` | 页头 | 双 |
| `<footer>` | 页脚 | 双 |
| `<nav>` | 导航 | 双 |
| `<main>` | 主要内容 | 双 |
| `<section>` | 章节 | 双 |
| `<article>` | 文章 | 双 |
| `<aside>` | 侧边栏 | 双 |

---

## 学习建议

1. **边学边练**：每学完一个知识点，立即动手写代码
2. **善用浏览器**：按 F12 打开开发者工具，实时查看效果
3. **从模仿开始**：先复制示例代码，再逐步修改
4. **注重语义**：选择合适的标签，而不是只看样式效果

---

**下一步**：完成配套的测试题，检验学习成果！

