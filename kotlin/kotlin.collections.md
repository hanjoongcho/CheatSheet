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
## groupBy
> Groups elements of the original collection by the key returned by the given [keySelector] function applied to each element and returns a map where each group key is associated with a list of corresponding elements.   
> The returned map preserves the entry iteration order of the keys produced from the original collection.   
> @sample samples.collections.Collections.Transformations.groupBy
```kotlin
public inline fun <T, K> Iterable<T>.groupBy(keySelector: (T) -> K): Map<K, List<T>> {
    return groupByTo(LinkedHashMap<K, MutableList<T>>(), keySelector)
}
```
