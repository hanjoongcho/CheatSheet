### Coroutine Example
## GlobalScope.launch
> ..
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
    println("Main-Start: ${Thread.currentThread()}")
    GlobalScope.launch() {
        repeat(3) {
            delay(1000L)
            println("GlobalScope ($it): ${Thread.currentThread()}")
        }
    }
    
    var i = 0
    while (i < 5) {
        println("Main-runBlocking ($i): ${Thread.currentThread()}")
        i = i.plus(1)
      	runBlocking {
            delay(1000)
        }
    }
    println("Main-End: ${Thread.currentThread()}")
}
```
```
Main-Start: Thread[main,5,main]
Main-runBlocking (0): Thread[main,5,main]
Main-runBlocking (1): Thread[main,5,main]
GlobalScope (0): Thread[DefaultDispatcher-worker-1 @coroutine#1,5,main]
GlobalScope (1): Thread[DefaultDispatcher-worker-1 @coroutine#1,5,main]
Main-runBlocking (2): Thread[main,5,main]
GlobalScope (2): Thread[DefaultDispatcher-worker-1 @coroutine#1,5,main]
Main-runBlocking (3): Thread[main,5,main]
Main-runBlocking (4): Thread[main,5,main]
Main-End: Thread[main,5,main]
```
