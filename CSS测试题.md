# CSS 测试题

> 完成学习资料后，用这份测试题检验你的学习成果！
> 
> 共 10 题：5 道单选题 + 5 道判断题

---

## 单选题

### 第1题

以下哪种 CSS 写法优先级最高？

A. 外部样式表（通过 `<link>` 引入）  
B. 内部样式表（写在 `<style>` 标签中）  
C. 内联样式（写在标签的 `style` 属性中）  
D. 三者优先级相同

<details>
<summary>点击查看答案</summary>

**答案：C**

解析：CSS 三种写法的优先级顺序为：**内联样式 > 内部样式表 > 外部样式表**（就近原则）。内联样式直接写在元素上，优先级最高。但在实际开发中，建议使用外部样式表，便于维护和复用。

</details>

---

### 第2题

下面哪个选择器可以同时选中 `<h1>` 和 `<h2>` 两个标签？

A. `h1 h2 { }`  
B. `h1 > h2 { }`  
C. `h1, h2 { }`  
D. `h1 + h2 { }`

<details>
<summary>点击查看答案</summary>

**答案：C**

解析：**群组选择器**用英文逗号 `,` 分隔多个选择器，表示同时选中多个元素。`h1 h2` 是后代选择器，`h1 > h2` 是子元素选择器，`h1 + h2` 是相邻兄弟选择器。

</details>

---

### 第3题

以下 CSS 代码中，`p` 标签内容区域的**实际显示宽度**是多少？

```css
p {
    width: 200px;
    padding: 10px;
    border: 5px solid black;
}
```

（默认 `box-sizing: content-box`）

A. 200px  
B. 210px  
C. 220px  
D. 230px

<details>
<summary>点击查看答案</summary>

**答案：D**

解析：默认盒模型（`content-box`）下，元素实际占用宽度 = `width` + `padding左右` + `border左右` = 200 + 10×2 + 5×2 = **230px**。这就是为什么很多开发者会在全局设置 `box-sizing: border-box`，让 width 直接代表可见区域总宽度。

</details>

---

### 第4题

要让一个 `<div>` 元素在页面中**水平居中**，下面哪个写法是正确的？

A. `text-align: center;`  
B. `margin: auto;`  
C. `margin: 0 auto;`（配合指定 `width`）  
D. `padding: 0 auto;`

<details>
<summary>点击查看答案</summary>

**答案：C**

解析：块级元素水平居中需要同时满足两个条件：① 设置固定 `width`；② 设置 `margin: 0 auto`（左右 margin 自动均分）。`text-align: center` 是让**文本内容**居中，而非元素本身。`padding: auto` 是无效写法。

</details>

---

### 第5题

以下关于 Flexbox 布局的说法，哪项是正确的？

A. `display: flex` 需要写在子元素上  
B. `justify-content` 控制交叉轴方向的对齐  
C. `align-items: center` 可以实现交叉轴方向垂直居中  
D. Flexbox 只能用于水平方向布局

<details>
<summary>点击查看答案</summary>

**答案：C**

解析：`display: flex` 需要写在**父容器**上，不是子元素。`justify-content` 控制**主轴**（默认水平）方向的对齐，`align-items` 控制**交叉轴**（默认垂直）方向的对齐。通过设置 `flex-direction: column` 可以改为垂直方向布局，所以 D 也是错的。

</details>

---

## 判断题

### 第6题

CSS 中 `class` 选择器用 `#` 开头，`id` 选择器用 `.` 开头。

<details>
<summary>点击查看答案</summary>

**答案：✗ 错误**

解析：正好相反！**类选择器（class）用 `.` 开头**，例如 `.highlight`；**ID选择器用 `#` 开头**，例如 `#header`。这是非常基础的知识，务必记住。

</details>

---

### 第7题

`position: absolute` 的元素，默认是相对于**浏览器窗口**进行定位的。

<details>
<summary>点击查看答案</summary>

**答案：✗ 错误**

解析：`position: absolute` 是相对于**最近的非 `static` 定位的祖先元素**进行定位。如果所有祖先都是默认的 `static`，才会相对于浏览器窗口（即 `<html>` 元素）定位。相对于浏览器窗口定位的是 `position: fixed`。

</details>

---

### 第8题

`border-radius: 50%` 可以将正方形元素变成圆形。

<details>
<summary>点击查看答案</summary>

**答案：✓ 正确**

解析：`border-radius: 50%` 将四个角的圆角半径设置为元素宽高的50%，当元素是正方形时，就会形成一个完整的圆形。这是制作圆形头像、圆形按钮的常用技巧。

</details>

---

### 第9题

`display: none` 和 `visibility: hidden` 的效果完全相同，都会让元素不可见且不占用页面空间。

<details>
<summary>点击查看答案</summary>

**答案：✗ 错误**

解析：两者都会让元素不可见，但行为不同：  
- `display: none`：元素**完全消失**，不占用任何空间，页面重新排列  
- `visibility: hidden`：元素**不可见但仍占用空间**，相当于隐形，页面布局不变

根据实际需求选择合适的方式。

</details>

---

### 第10题

`margin` 属性可以设置负值，而 `padding` 不能设置负值。

<details>
<summary>点击查看答案</summary>

**答案：✓ 正确**

解析：`margin` 的值可以为负数，负 margin 可以让元素向相反方向移动，是一种高级布局技巧（如实现重叠效果）。而 `padding`（内边距）**不能为负值**，因为内边距代表内容与边框之间的空白区域，负值没有意义。

</details>

---

## 成绩参考

| 答对题数 | 评价 |
|---------|------|
| 9-10 题 | 优秀！CSS基础扎实，可以进阶学习动画和响应式布局 |
| 7-8 题 | 良好！掌握了核心概念，多加练习就能巩固 |
| 5-6 题 | 及格！建议重温学习资料中的薄弱环节 |
| 0-4 题 | 需加油！建议重新阅读学习资料再来测试 |
