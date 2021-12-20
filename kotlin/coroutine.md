### Coroutine Example
## GlobalScope.launch
> ... 
```kotlin
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking

/**
 * You can edit, run, and share this code. 
 * play.kotlinlang.org 
 */

fun main() {    
    println("Main-Start: ${Thread.currentThread().name}")
    GlobalScope.launch() {
        repeat(3) {
            delay(1000L)
            println("GlobalScope ($it): ${Thread.currentThread().name}")
        }
    }
    
    for (i in 1..4) {            
        i = i.plus(1)
      	runBlocking {
            println("Main-runBlocking ($i): ${Thread.currentThread().name}")
            delay(1000)
        }
    }
    println("Main-End: ${Thread.currentThread().name}")
}
```
```
Main-Start: main
Main-runBlocking (1): main @coroutine#2
GlobalScope (0): DefaultDispatcher-worker-1 @coroutine#1
Main-runBlocking (2): main @coroutine#3
GlobalScope (1): DefaultDispatcher-worker-1 @coroutine#1
Main-runBlocking (3): main @coroutine#4
GlobalScope (2): DefaultDispatcher-worker-1 @coroutine#1
Main-runBlocking (4): main @coroutine#5
Main-End: main
```
> async {}.await()
```kotlin
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.async

/**
 * You can edit, run, and share this code. 
 * play.kotlinlang.org 
 */

fun main() { 
    println("Main-Start: ${Thread.currentThread().name}")
    GlobalScope.launch {
        launch {
            println("GlobalScope-launch: ${Thread.currentThread().name}")
        }
        val value: Int = async {
            var total = 0
            for (i in 1..10) total += i
            println("GlobalScope-async: ${Thread.currentThread().name}, value: $total")
            total
        }.await()
        println("GlobalScope: ${Thread.currentThread().name}, value: $value")
    }

    for (i in 1..3) {     
        runBlocking {
            println("Main-runBlocking ($i): ${Thread.currentThread().name}")
            delay(1000)
        }
    }
    println("Main-End: ${Thread.currentThread().name}")
}
```
```Main-Start: main
Main-Start: main
Main-runBlocking (1): main @coroutine#3
GlobalScope-launch: DefaultDispatcher-worker-2 @coroutine#2
GlobalScope-async: DefaultDispatcher-worker-2 @coroutine#4, value: 55
GlobalScope: DefaultDispatcher-worker-1 @coroutine#1, value: 55
Main-runBlocking (2): main @coroutine#5
Main-runBlocking (3): main @coroutine#6
Main-End: main
```
