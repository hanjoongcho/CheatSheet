Reference Link:   
[https://kotlinlang.org/docs/coding-conventions.html](https://kotlinlang.org/docs/coding-conventions.html)   
[https://developer.android.com/kotlin/style-guide](https://developer.android.com/kotlin/style-guide)

# 소스 파일
모든 소스 파일은 UTF-8로 인코딩되어야 합니다.
## 이름 지정
소스 파일에 최상위 클래스가 하나 뿐인 경우 파일 이름에 대소문자를 구분하는 이름과 .kt 확장자가 반영되어야 합니다. 그렇지 않고 소스 파일에 최상위 수준 선언이 여러 개 있는 경우 파일의 콘텐츠를 설명하는 이름을 선택하고 PascalCase를 적용한 다음 .kt 확장자를 추가합니다.
```kotlin
// MyClass.kt
class MyClass { }
```
```kotlin
// Bar.kt
class Bar { }
fun Runnable.toBar(): Bar = // …
```
```kotlin
// Map.kt
fun <T, O> Set<T>.map(func: (T) -> O): List<O> = // …
fun <T, O> List<T>.map(func: (T) -> O): List<O> = // …
```
## 특수 문자
### 공백 문자
ASCII 수평 공백 문자(0x20)는 줄 마침 표시 시퀀스를 제외하고 소스 파일의 모든 부분에 나타나는 유일한 공백 문자입니다. 이 내용의 의미는 다음과 같습니다.
* 문자열과 문자 리터럴의 모든 다른 공백 문자는 이스케이프 처리됩니다.
* 탭 문자는 들여쓰기에 사용되지 않습니다.
