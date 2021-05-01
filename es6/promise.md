Reference Link: [https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Global_Objects/Promise](https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Global_Objects/Promise)

## Promise 
> Method
* Promise.prototype.catch() (en-US)
프로미스(promise)에 거부 처리기 콜백을 추가하고 호출된 경우 콜백의 반환값 또는 프로미스가 대신 이행된 경우 그 원래 이행(fulfillment)값으로 결정하는(resolving) 새 프로미스를 반환합니다.
* Promise.prototype.then()
프로미스에 이행 또는 거부 처리기를 추가하고 호출된 처리기의 반환값 또는 프로미스가 처리되지 않은 경우 그 원래 처리된(settled) 값으로 결정하는 새 프로미스를 반환합니다 (즉 관련 처리기 onFulfilled 또는 onRejected가 undefined인 경우).
* Promise.prototype.finally()
Appends a handler to the promise, and returns a new promise which is resolved when the original promise is resolved. The handler is called when the promise is settled, whether fulfilled or rejected.

> Basic Example
```java
let myFirstPromise = new Promise((resolve, reject) => {
  // We call resolve(...) when what we were doing asynchronously was successful, and reject(...) when it failed.
  // In this example, we use setTimeout(...) to simulate async code.
  // In reality, you will probably be using something like XHR or an HTML5 API.
  setTimeout(function() {
    resolve("Success!"); // Yay! Everything went well!
  }, 250);
});

myFirstPromise.then((successMessage) => {
  // successMessage is whatever we passed in the resolve(...) function above.
  // It doesn't have to be a string, but if it is only a succeed message, it probably will be.
  console.log("Yay! " + successMessage);
});
```
> Advanced Example
```java
'use strict';
var promiseCount = 0;

function testPromise() {
    var thisPromiseCount = ++promiseCount;

    var log = document.getElementById('log');
    log.insertAdjacentHTML('beforeend', thisPromiseCount +
        ') 시작 (<small>동기적 코드 시작</small>)<br/>');

    // 새 프로미스 생성 - 프로미스의 생성 순서를 전달하겠다는 약속을 함 (3초 기다린 후)
    var p1 = new Promise(
        // 실행 함수는 프로미스를 이행(resolve)하거나
        // 거부(reject)할 수 있음
        function(resolve, reject) {
            log.insertAdjacentHTML('beforeend', thisPromiseCount +
                ') 프로미스 시작 (<small>비동기적 코드 시작</small>)<br/>');
            // setTimeout은 비동기적 코드를 만드는 예제에 불과
            window.setTimeout(
                function() {
                    // 프로미스 이행 !
                    resolve(thisPromiseCount);
                }, Math.random() * 2000 + 1000);
        }
    );

    // 프로미스를 이행했을 때 할 일은 then() 호출로 정의하고,
    // 거부됐을 때 할 일은 catch() 호출로 정의
    p1.then(
        // 이행 값 기록
        function(val) {
            log.insertAdjacentHTML('beforeend', val +
                ') 프로미스 이행 (<small>비동기적 코드 종료</small>)<br/>');
        })
    .catch(
        // 거부 이유 기록
        function(reason) {
            console.log('여기서 거부된 프로미스(' + reason + ')를 처리하세요.');
        });

    log.insertAdjacentHTML('beforeend', thisPromiseCount +
        ') 프로미스 생성 (<small>동기적 코드 종료</small>)<br/>');
}
```
