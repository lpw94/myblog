---
title: typescript中泛型的使用方式
date: 2023-12-28 19:47:59
tags:
---

```javascript


/**
 * 泛型类
 */
class GenericClass<T> {
  private value: T;

  constructor(value: T) {
    this.value = value;
  }

  /**
   * 返回成员变量值
   */
  getValue(): T {
    return this.value;
  }

  /**
   * 设置成员变量值
   */
  setValue(value: T): void {
    this.value = value;
  }
}

/**
 * 泛型函数
 */
function genericFunction<T>(value: T): T {
  return value;
}

// 使用泛型类
const genericObj = new GenericClass<number>(10);
console.log(genericObj.getValue()); // 输出：10

genericObj.setValue(20);
console.log(genericObj.getValue()); // 输出：20

// 使用泛型函数
const result = genericFunction<string>("Hello, World!");
console.log(result); // 输出：Hello, World!


以上代码是基于用户需求提供的typescript泛型例子，包含了泛型类和泛型函数的示例。具体的代码实现如下：

泛型类(GenericClass): 这个类接受一个类型参数T作为成员变量的类型。类中有两个方法：getValue()用于返回成员变量的值，setValue(value: T)用于设置成员变量的值。
泛型函数(genericFunction): 这个函数也接受一个类型参数T作为参数类型和返回值类型。函数内部简单地将传入的参数返回。
代码中使用了泛型类来创建一个对象genericObj，并对其进行了测试。首先，将数字10传入泛型类的构造函数并保存在成员变量中，然后调用getValue()方法打印出成员变量的值。接着，调用setValue()方法将数字20设置为新的成员变量值，再次调用getValue()方法打印出最新的成员变量值。最后，使用泛型函数genericFunction传入字符串"Hello, World!"并将返回值打印出来。