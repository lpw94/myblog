---
title: 闭包函数
date: 2023-12-28 19:20:35
tags:
---



```javascript
/**
 * 闭包函数示例
 * @param {number} num - 输入的数字
 * @returns {function} - 返回一个闭包函数
 */
function closureFunction(num) {
  /**
   * 闭包函数
   * @param {number} x - 输入的数字
   * @returns {number} - 返回输入的数字与闭包函数外部变量num的和
   */
  return function(x) {
    return num + x;
  };
}

// 示例调用
const closure = closureFunction(5);
console.log(closure(10)); // 输出 15
console.log(closure(-5)); // 输出 0

以上代码实现了一个闭包函数，函数名称为closureFunction。该函数接受一个参数num，并返回一个闭包函数。

闭包函数是一个匿名函数，它在内部访问了外部函数closureFunction的局部变量num。闭包函数接受一个参数x，并返回num + x的值。通过闭包，我们可以保留closureFunction的局部变量，使其在闭包函数被调用时仍然有效。

示例调用展示了如何使用闭包函数。首先，我们使用closureFunction传入参数5初始化了一个闭包函数，然后通过该闭包函数分别计算了10和-5与5的和，得到了15和0的结果。
