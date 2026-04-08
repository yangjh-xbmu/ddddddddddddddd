# CSS 一小时快速入门

> 零基础也能快速上手，让你的网页从"光秃秃"变成"好看"

---

## 目录
1. [CSS是什么](#一css是什么)
2. [CSS的三种写法](#二css的三种写法)
3. [选择器详解](#三选择器详解)
4. [常用样式属性](#四常用样式属性)
5. [盒模型](#五盒模型)
6. [布局基础](#六布局基础)
7. [实战练习](#七实战练习)

---

## 一、CSS是什么

**CSS**（Cascading Style Sheets，层叠样式表）是用来控制网页**外观**的语言。

- HTML 负责**结构**（内容是什么）
- CSS 负责**样式**（内容长什么样）
- 打个比方：HTML 是毛坯房，CSS 是装修

### 1.1 CSS基本语法

```css
选择器 {
    属性名: 属性值;
    属性名: 属性值;
}
```

例如，让所有段落文字变成红色：

```css
p {
    color: red;
    font-size: 16px;
}
```

- `p` 是**选择器**，表示作用于哪个元素
- `color` 是**属性名**
- `red` 是**属性值**
- 每条规则结尾必须加**分号** `;`
- 整体用**花括号** `{}` 包裹

---

## 二、CSS的三种写法

### 2.1 内联样式（行内样式）

直接写在HTML标签的 `style` 属性里：

```html
<p style="color: red; font-size: 18px;">这段文字是红色的</p>
```

- 优点：立竿见影，马上生效
- 缺点：只对当前标签生效，难维护，**不推荐大量使用**

### 2.2 内部样式表

写在 `<head>` 里的 `<style>` 标签中：

```html
<!DOCTYPE html>
<html>
<head>
    <style>
        p {
            color: blue;
            font-size: 16px;
        }
        h1 {
            color: green;
        }
    </style>
</head>
<body>
    <h1>标题变绿色</h1>
    <p>段落文字变蓝色</p>
</body>
</html>
```

- 优点：作用于整个页面，方便管理
- 缺点：只适用于单个HTML文件

### 2.3 外部样式表（最推荐）✅

把CSS单独写在 `.css` 文件里，再用 `<link>` 引入：

**style.css 文件：**
```css
p {
    color: blue;
}
h1 {
    color: green;
}
```

**index.html 文件：**
```html
<head>
    <link rel="stylesheet" href="style.css">
</head>
```

- 优点：一个CSS文件控制多个HTML页面，**便于维护**
- 实际开发中**首选**这种方式

### 三种方式优先级

当同一个元素有多种写法冲突时：

> **内联样式 > 内部样式表 > 外部样式表**（就近原则，越近权重越高）

---

## 三、选择器详解

选择器决定"CSS作用于哪些元素"。

### 3.1 基础选择器

| 选择器 | 语法 | 说明 | 示例 |
|--------|------|------|------|
| 标签选择器 | `标签名` | 选中所有该标签 | `p { }` |
| 类选择器 | `.类名` | 选中指定class的元素 | `.title { }` |
| ID选择器 | `#ID名` | 选中指定id的元素 | `#header { }` |
| 通配符选择器 | `*` | 选中所有元素 | `* { }` |

**类选择器示例：**

```html
<!-- HTML -->
<p class="highlight">这段文字高亮</p>
<p>这段文字正常</p>
<h2 class="highlight">标题也高亮</h2>
```

```css
/* CSS */
.highlight {
    background-color: yellow;
    font-weight: bold;
}
```

> 类选择器可以用在多个元素上，ID选择器在同一页面只能用一次

### 3.2 组合选择器

```css
/* 后代选择器：div 内部所有的 p */
div p {
    color: red;
}

/* 子元素选择器：div 直接子元素 p */
div > p {
    color: blue;
}

/* 群组选择器：同时选中 h1 和 h2 */
h1, h2 {
    font-family: "微软雅黑";
}
```

### 3.3 伪类选择器

用于描述元素的**特殊状态**：

```css
/* 鼠标悬停时 */
a:hover {
    color: red;
}

/* 链接未访问时 */
a:link {
    color: blue;
}

/* 链接已访问时 */
a:visited {
    color: purple;
}

/* 输入框获得焦点时 */
input:focus {
    border-color: blue;
}
```

---

## 四、常用样式属性

### 4.1 文字样式

```css
p {
    /* 字体颜色 */
    color: #333333;

    /* 字体大小（常用16px为默认） */
    font-size: 18px;

    /* 字体加粗（normal/bold/100-900） */
    font-weight: bold;

    /* 字体样式（normal/italic斜体） */
    font-style: italic;

    /* 字体族（font-family） */
    font-family: "微软雅黑", Arial, sans-serif;

    /* 行高（控制行间距，1.5倍行高） */
    line-height: 1.5;

    /* 文本对齐（left/center/right） */
    text-align: center;

    /* 文本修饰（underline/line-through/none） */
    text-decoration: underline;

    /* 首行缩进（2个字符） */
    text-indent: 2em;
}
```

### 4.2 背景样式

```css
div {
    /* 背景颜色 */
    background-color: #f0f0f0;

    /* 背景图片 */
    background-image: url("bg.jpg");

    /* 背景重复（no-repeat/repeat/repeat-x/repeat-y） */
    background-repeat: no-repeat;

    /* 背景位置 */
    background-position: center center;

    /* 背景大小（cover铺满/contain完整显示） */
    background-size: cover;
}
```

### 4.3 颜色表示方式

```css
/* 颜色关键字 */
color: red;
color: blue;
color: transparent; /* 透明 */

/* 十六进制（最常用） */
color: #ff0000;    /* 红色 */
color: #333;       /* 深灰（简写，等价于 #333333） */

/* RGB */
color: rgb(255, 0, 0);   /* 红色 */

/* RGBA（第4个参数是透明度，0完全透明~1完全不透明） */
color: rgba(255, 0, 0, 0.5);  /* 半透明红色 */
```

### 4.4 边框样式

```css
div {
    /* 完整写法：宽度 样式 颜色 */
    border: 1px solid #ccc;

    /* 分开写 */
    border-width: 2px;
    border-style: solid;   /* solid实线/dashed虚线/dotted点线 */
    border-color: red;

    /* 只设置某一边 */
    border-top: 1px solid red;
    border-bottom: 2px dashed blue;

    /* 圆角边框 */
    border-radius: 8px;

    /* 完全变成圆形（配合宽高相等的元素） */
    border-radius: 50%;
}
```

---

## 五、盒模型

CSS 中每个元素都是一个"盒子"，由四个部分组成：

```
┌──────────────────────────────────┐
│           margin（外边距）         │
│  ┌────────────────────────────┐  │
│  │        border（边框）       │  │
│  │  ┌──────────────────────┐  │  │
│  │  │    padding（内边距）   │  │  │
│  │  │  ┌────────────────┐  │  │  │
│  │  │  │  content（内容） │  │  │  │
│  │  │  └────────────────┘  │  │  │
│  │  └──────────────────────┘  │  │
│  └────────────────────────────┘  │
└──────────────────────────────────┘
```

| 层 | 属性 | 说明 |
|----|------|------|
| 内容区 | `width` / `height` | 内容的宽高 |
| 内边距 | `padding` | 内容与边框之间的空白 |
| 边框 | `border` | 围绕内容和内边距的线条 |
| 外边距 | `margin` | 元素与其他元素之间的空白 |

### 5.1 padding 和 margin 的四种写法

```css
div {
    /* 四边相同 */
    padding: 20px;

    /* 上下 左右 */
    padding: 10px 20px;

    /* 上 左右 下 */
    padding: 10px 20px 15px;

    /* 上 右 下 左（顺时针） */
    padding: 10px 20px 15px 5px;

    /* 单独设置某一边 */
    padding-top: 10px;
    padding-right: 20px;
    padding-bottom: 10px;
    padding-left: 20px;
}
```

> `margin` 同理，写法完全一致

### 5.2 常用技巧：水平居中

```css
/* 块级元素水平居中 */
div {
    width: 800px;
    margin: 0 auto;   /* 上下为0，左右auto自动均分 */
}
```

### 5.3 盒模型计算方式

默认情况下：元素**实际占用宽度** = width + padding左右 + border左右

```css
/* 推荐：改为 border-box，让 width 包含 padding 和 border */
* {
    box-sizing: border-box;
}
```

---

## 六、布局基础

### 6.1 display 属性

```css
/* 块级元素：独占一行，可设置宽高 */
display: block;

/* 行内元素：不独占一行，不能设置宽高 */
display: inline;

/* 行内块：不独占一行，但可以设置宽高（兼具两者优点） */
display: inline-block;

/* 隐藏元素（不占位） */
display: none;
```

### 6.2 Flexbox 弹性布局（入门必学）

Flexbox 是现代网页布局最常用的方式：

```css
/* 父容器开启flex布局 */
.container {
    display: flex;

    /* 主轴方向（row水平/column垂直） */
    flex-direction: row;

    /* 主轴对齐（flex-start/flex-end/center/space-between/space-around） */
    justify-content: center;

    /* 交叉轴对齐（flex-start/flex-end/center） */
    align-items: center;

    /* 是否换行（nowrap/wrap） */
    flex-wrap: wrap;
}

/* 子元素 */
.item {
    flex: 1;  /* 平均分配剩余空间 */
}
```

**常用 Flexbox 场景示例：**

```html
<!-- 导航栏：水平排列，均匀分布 -->
<style>
    nav {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 0 20px;
        background-color: #333;
    }
    nav a {
        color: white;
        text-decoration: none;
    }
</style>

<nav>
    <span>网站Logo</span>
    <a href="#">首页</a>
    <a href="#">关于</a>
    <a href="#">联系</a>
</nav>
```

```html
<!-- 卡片：垂直居中 -->
<style>
    .card {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 200px;
        height: 200px;
        background-color: #f0f0f0;
        border-radius: 8px;
    }
</style>

<div class="card">
    <p>我在中间！</p>
</div>
```

### 6.3 Position 定位

```css
/* 默认：正常文档流 */
position: static;

/* 相对定位：相对自身原位置偏移，仍占位 */
position: relative;
top: 10px;
left: 20px;

/* 绝对定位：相对最近的非static父元素定位，脱离文档流 */
position: absolute;
top: 0;
right: 0;

/* 固定定位：相对浏览器窗口定位，不随滚动移动 */
position: fixed;
bottom: 20px;
right: 20px;
```

**常见用法：右上角角标**

```css
.container {
    position: relative;  /* 父元素相对定位 */
}

.badge {
    position: absolute;  /* 子元素绝对定位 */
    top: -5px;
    right: -5px;
    background-color: red;
    color: white;
    border-radius: 50%;
    width: 20px;
    height: 20px;
    text-align: center;
    line-height: 20px;
}
```

---

## 七、实战练习

### 练习1：美化个人简历

在之前HTML练习的基础上，添加CSS样式：
- 设置整体字体和背景色
- 让标题居中显示
- 给技能列表添加彩色标签效果
- 给页面整体添加最大宽度和居中

```css
/* 参考样式 */
body {
    font-family: "微软雅黑", sans-serif;
    background-color: #f5f5f5;
    color: #333;
    line-height: 1.6;
}

.container {
    max-width: 800px;
    margin: 40px auto;
    background: white;
    padding: 40px;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

h1 {
    text-align: center;
    color: #2c3e50;
}

li {
    padding: 4px 0;
}
```

### 练习2：美化登录表单

```css
/* 参考样式 */
form {
    width: 360px;
    margin: 80px auto;
    padding: 40px;
    background: white;
    border-radius: 12px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
}

input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 10px 14px;
    margin: 8px 0 16px;
    border: 1px solid #ddd;
    border-radius: 6px;
    font-size: 14px;
    box-sizing: border-box;
}

input:focus {
    border-color: #4a90e2;
    outline: none;
}

button[type="submit"] {
    width: 100%;
    padding: 12px;
    background-color: #4a90e2;
    color: white;
    border: none;
    border-radius: 6px;
    font-size: 16px;
    cursor: pointer;
}

button[type="submit"]:hover {
    background-color: #357abd;
}
```

---

## 附录：常用属性速查表

### 文字类

| 属性 | 说明 | 常用值 |
|------|------|--------|
| `color` | 文字颜色 | `red` / `#333` / `rgb()` |
| `font-size` | 字体大小 | `14px` / `1rem` |
| `font-weight` | 字体粗细 | `normal` / `bold` |
| `font-family` | 字体族 | `"微软雅黑"` / `Arial` |
| `line-height` | 行高 | `1.5` / `24px` |
| `text-align` | 文本对齐 | `left` / `center` / `right` |
| `text-decoration` | 文本修饰 | `none` / `underline` |
| `text-indent` | 首行缩进 | `2em` |

### 背景类

| 属性 | 说明 | 常用值 |
|------|------|--------|
| `background-color` | 背景颜色 | 颜色值 |
| `background-image` | 背景图片 | `url("img.jpg")` |
| `background-size` | 背景尺寸 | `cover` / `contain` |
| `background-repeat` | 背景重复 | `no-repeat` / `repeat` |

### 盒模型类

| 属性 | 说明 | 常用值 |
|------|------|--------|
| `width` / `height` | 宽高 | `px` / `%` / `auto` |
| `padding` | 内边距 | `px`（四种简写） |
| `margin` | 外边距 | `px` / `auto` |
| `border` | 边框 | `1px solid #ccc` |
| `border-radius` | 圆角 | `px` / `50%` |
| `box-shadow` | 阴影 | `0 2px 10px rgba()` |
| `box-sizing` | 盒模型算法 | `border-box` |

### 布局类

| 属性 | 说明 | 常用值 |
|------|------|--------|
| `display` | 显示类型 | `block` / `inline` / `flex` / `none` |
| `flex-direction` | 弹性方向 | `row` / `column` |
| `justify-content` | 主轴对齐 | `center` / `space-between` |
| `align-items` | 交叉轴对齐 | `center` / `flex-start` |
| `position` | 定位方式 | `static` / `relative` / `absolute` / `fixed` |
| `top/right/bottom/left` | 偏移量 | `px` / `%` |
| `z-index` | 层叠顺序 | 数字（越大越靠前） |

---

## 学习建议

1. **配合HTML练习**：CSS 脱离 HTML 无法单独运行，始终结合起来练习
2. **善用开发者工具**：按 F12 打开，点选元素可实时修改样式
3. **从模仿开始**：找喜欢的网页，尝试还原它的样式
4. **理解盒模型**：这是CSS布局的核心，务必掌握
5. **多动手少背**：CSS 属性很多，用到再查，不需要全部背下来

---

**下一步**：完成配套的测试题，检验学习成果！
