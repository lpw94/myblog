---
title: JavaScript对象继承
date: 2023-12-28 19:21:59
tags:
---

```javascript

// 父类
class Animal {
  constructor(name) {
    this.name = name;
  }
  
  // 父类方法
  speak() {
    console.log(`${this.name} makes a noise.`);
  }
}

// 子类
class Dog extends Animal {
  constructor(name, breed) {
    super(name);
    this.breed = breed;
  }
  
  // 子类方法
  speak() {
    console.log(`${this.name} barks.`);
  }
}

// 创建对象
const animal = new Animal('Animal');
const dog = new Dog('Dog', 'German Shepherd');

animal.speak();  // Output: Animal makes a noise.
dog.speak();  // Output: Dog barks.


以上代码实现了JavaScript对象继承的功能。

首先定义了一个父类Animal，构造函数中接收一个name参数，并将其赋值给实例的name属性。类中还包含一个speak方法，用于输出动物的叫声。
然后定义了一个子类Dog，继承自Animal。子类的构造函数接收两个参数name和breed，其中name作为父类构造函数的参数传递，breed则是子类特有的属性。子类中重写了speak方法，用于输出狗的叫声。
最后，创建了一个父类对象animal和一个子类对象dog，分别调用它们的speak方法进行输出。

以上代码中使用了ES6的class语法来定义类，并使用了extends关键字来实现继承。父类的构造函数中使用super关键字来调用父类的构造函数。子类中重写了父类的方法，即实现了方法的覆盖。