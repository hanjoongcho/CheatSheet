### Collection types, such as Iterable, Collection, List, Set, Map and related top-level and extension functions.
## sumBy
> Returns the sum of all values produced by [selector] function applied to each element in the collection.
```kotlin
public inline fun <T> Iterable<T>.sumBy(selector: (T) -> Int): Int {
    var sum: Int = 0
    for (element in this) {
        sum += selector(element)
    }
    return sum
}
```
