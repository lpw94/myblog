---
title: JavaScript响应式原理
date: 2023-12-28 19:21:59
tags:
---

// 定义观察者对象

class Observer {
  constructor() {
    this.subscribers = [];
  }

  // 注册观察者
  subscribe(callback) {
    this.subscribers.push(callback);
  }

  // 通知观察者更新
  notify(data) {
    this.subscribers.forEach(callback => {
      callback(data);
    });
  }
}

// 定义可观察对象
class Observable {
  constructor() {
    this.observers = new Observer();
  }

  // 添加观察者
  addObserver(callback) {
    this.observers.subscribe(callback);
  }

  // 通知观察者更新
  notifyObservers(data) {
    this.observers.notify(data);
  }
}

// 定义响应式对象
class ReactiveObject {
  constructor(data) {
    this.data = data;
    this.observe(this.data);
  }

  // 监听数据，实现响应式

  observe(data) {
    if (!data || typeof data !== 'object') {
      return;
    }

    Object.keys(data).forEach(key => {
      let val = data[key];

      // 递归监听子对象
      this.observe(val);

      // 为每个属性定义getter和setter
      Object.defineProperty(data, key, {
        enumerable: true,
        configurable: true,
        get: function() {
          console.log(`访问属性：${key}，值为：${val}`);
          return val;
        },
        set: function(newVal) {
          console.log(`设置属性：${key}，新值为：${newVal}`);
          if (val === newVal)
            return;
          val = newVal;
          // 通知观察者更新
          this.notifyObservers();
        }
      });
    });
  }
}

// 使用示例
const data = {
  name: 'John',
  age: 25
};

const reactiveObj = new ReactiveObject(data);

reactiveObj.addObserver(() => {
  console.log('观察者1被通知更新');
});

reactiveObj.addObserver(() => {
  console.log('观察者2被通知更新');
});

reactiveObj.data.name = 'Alice';