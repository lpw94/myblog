---
title: JavaScript对象属性
date: 2024-01-04 11:02:04
tags:
---



// 定义一个Person对象
function Person(name, age) {
  this.name = name; // 姓名属性
  this.age = age; // 年龄属性
}

// 创建两个Person对象实例
var person1 = new Person("Jack", 30);
var person2 = new Person("Amy", 25);

// 打印person1对象的属性
console.log("person1的属性：");
console.log("姓名：" + person1.name);
console.log("年龄：" + person1.age);

// 打印person2对象的属性
console.log("person2的属性：");
console.log("姓名：" + person2.name);
console.log("年龄：" + person2.age);