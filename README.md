# 🍎 Swift와 친해지기


### 문제풀며 공부한 메서드 

<details markdown="1">
<summary>✅ 지정된 element의 수를 포함하는 Collection 만들기  repeatElement(_:count:) </summary>
<pre>
Return Value 
- Repeated<T> : 모든 element인 카운트 element를 포함하는 컬렉션 값 
Parameters
- element: 반복하기 위한 String 값
- count: 요소를 반복할 횟수 


</pre>

``` swift
let zeroes = repeatElement(0, count: 5)
for x in zeroes {
    print(x)
}
// 0
// 0
// 0
// 0
// 0
```

</details>

<details markdown="1">
<summary>✅ 문자열 반복하기  String(repeating: String, count: Int) </summary>
<pre>
지정된 문자열이 지정된 횟수만큼 반복되어 새 문자열을 만들어내는 메서드
Parameters
- repeatedValue는 반복하기 위한 String 값
- count는 repeatedValue를 반복하는 횟수


</pre>

``` swift
let s = String(repeating: "ab", count: 10)
print(s)
// Prints "abababababababababab"
```

</details>


<details markdown="1">
<summary>✅ 컬렉션의 최대 길이까지 서브시퀀스를 반환  suffix(_:), prefix(_:) </summary>
<pre>
Array.prefix(_ maxLength: Int)
Array.suffix(_ maxLegnth : Int)
- prefix는 쵀대 maxLength 요소로 컬렉션의 시작 부분부터 시작하는 시퀀스
- suffix는 최대 maxLength 요소로  컬렉션의 끝 부분부터 시작하는 시퀀스

<br>
*주의*
- 파라미터인 maxLength는 반환할 최대 요소 수, 0보다 크거나 같아야함
- 반환 타입은 Self.SubSequence, array로 덮어주거나 타입을 변환해줘야 사용하기가 편함
<br>
*복잡도*
suffix(_:) - 컬렉션이 RandomAccessCollection을 따르는 경우 O(1), 아니면 O(K) k는 maxLength <br/>
prefix(_:) - 컬렉션이 RandomAccessCollection을 따르는 경우 O(1), 아니면 O(K) k는 시작부분에서 선택할 요소의 수

</pre>

``` swift
let numbers = [1, 2, 3, 4, 5]
print(numbers.suffix(2))
// Prints "[4, 5]"
print(numbers.suffix(10))
// Prints "[1, 2, 3, 4, 5]"

let numbers = [1, 2, 3, 4, 5]
print(numbers.prefix(2))
// Prints "[1, 2]"
print(numbers.prefix(10))
// Prints "[1, 2, 3, 4, 5]"
```

</details>

<details markdown="1">
<summary>✅ 정렬(관계연산자로 표현할 수 있는 요소) - sorted() </summary>
<pre>
Array.sorted()
String.sorted()
- 관계 연산자로 표시할 수 있는 요소를 정렬해서 반환

<br>
*주의*
- 반환시 [Self.Element] 형식
- 문자열 값에 메서드를 적용해도 [Self.Element] 형식으로 반환된다.
<br>
*복잡도*
O(n log n)
</pre>

``` swift
let students: Set = ["Kofi", "Abena", "Peter", "Kweku", "Akosua"]
let sortedStudents = students.sorted()
print(sortedStudents)
// Prints "["Abena", "Akosua", "Kofi", "Kweku", "Peter"]"

let descendingStudents = students.sorted(by: >)
print(descendingStudents)
// Prints "["Peter", "Kweku", "Kofi", "Akosua", "Abena"]"
```

</details>

<details markdown="1">
<summary>✅ 배열에 값이 위치한 index 찾기 - firstIndex(of:), lastIndex(of:) </summary>
<pre>
Array.firstIndex(of: )
- 특정 값이 나타나는 첫 번쨰 인덱스 반환
<br>
Array.lasgIndex(of: )
- 특정 값이 나타나는 마지막 인덱스 반환
<br>
*주의*
- 반환값이 옵셔널임
- 컬렉션(배열) 안에 값이 없다면, nil 반환
<br>
*복잡도*
O(n)
</pre>

``` swift
var students = ["Ben", "Ivy", "Jordell", "Maxime"]
if let i = students.firstIndex(of: "Maxime") { //"Maxime"이 요소인 index 찾기
    students[i] = "Max" //해당 인덱스에 요소를 "Max"로 교체
}
print(students)
// Prints "["Ben", "Ivy", "Jordell", "Max"]"

let index1 = ["a", "a", "c", "d"].lastIndex(of: "a")
print(index1) //Optional(1)
let index2 = ["a", "a", "c", "d"].firstIndex(of: "a")
print(index2) //Optional(0)
```

</details>

<details markdown="1">
<summary>✅ 최대 최소값 찾기 - max(), min() </summary>
<pre>
Array.min()
- 순서 안에서 가장 작은 값을 반환
<br>
Array.max()
- 순서 안에서 가장 큰 값을 반환
<br>
*주의*
- Element는 비교 가능해야 함
- 반환값이 옵셔널임
- 시퀀스 안에 값이 없다면, nil 반환
<br>
*복잡도*
min() - O(n)
max() - O(n) 
</pre>

``` swift
let heights = [67.5, 65.7, 64.3, 61.1, 58.5, 60.3, 64.9]
let greatestHeight = heights.max()
print(greatestHeight)
// Prints "Optional(67.5)"

```

</details>


<details markdown="1">
<summary>✅ 배열의 첫 번째 요소부터 k개 삭제 - removeFirst(_:) , 배열의 마지막 요소부터 k개 삭제 - removeLast(_:)</summary>
<pre>
Array.removeFirst(3)
- 배열과 같은 컬렉션의 시작부터 특정 수의 요소들를 삭제하는 메서드
<br>
Array.removeLast(3)
- 배열과 같은 걸렉션의 마지막부터 특정 개수의 요소들을 삭제하는 메서드
<br>
*복잡도*
removeFirst(_:) - O(n) *n은 배열의 길이만큼*
removeLast(_:) - O(k) *k는 제거하고자 하는 요소의 개수*
</pre>

``` swift

var bugs = ["Aphid", "Bumblebee", "Cicada", "Damselfly", "Earwig"]
bugs.removeFirst(3)
print(bugs)
// Prints "["Damselfly", "Earwig"]"

```

</details>

<details markdown="1">
<summary>✅ 조건에 맞는 element 모두 제거 - removeAll(where:) </summary>
<pre>
Array.removeAll(where: (조건) )
- where 조건에서 조건에 맞는 element를 모두 제거함

<br>
*복잡도*
removeAll(where:) - O(n)
</pre>

``` swift

var numbers = [5, 6, 7, 8, 9, 10, 11]
numbers.removeAll(where: { $0 % 2 != 0 })
// numbers == [6, 8, 10]

var array = ["hello", "world"]
array.removeAll { value in
  return value == "hello"
}
// array is now ["world"]

```

</details>

<details markdown="1">
<summary>✅ 배열의 첫 번째 요소 삭제 - removeFirst() , 배열의 마지막 요소 삭제 - removeLast() </summary>
<pre>
Array.removeFirst()
- 배열과 같은 컬렉션의 첫 번째 요소를 삭제
<br>
Array.removeLast()
- 배열과 같은 컬렉션의 마지막 요소를 삭제
<br>
*복잡도*
removeFirst() - O(n)
removeLast() - O(1)
</pre>

``` swift

var bugs = ["Aphid", "Bumblebee", "Cicada", "Damselfly", "Earwig"]
bugs.removeFirst()
print(bugs)
// Prints "["Bumblebee", "Cicada", "Damselfly", "Earwig"]"

```

</details>

<details markdown="1">
<summary>✅ 대문자 -> 소문자 - lowercased() , 소문자 -> 대문자 - uppercased()</summary>
<pre>
String.lowercased()
- String값을 소문자로 바꾸는 method
<br>
String.uppercased()
- String값을 대문자로 바꾸는 method
<br>
*복잡도*
O(n)
</pre>

``` swift

let cafe = "Café 🍵"
print(cafe.uppercased())
// Prints "CAFÉ 🍵"

```
</details>




### 문제 풀이 한줄 기록
|   Day   |    푼 문제    |   What I Learned   |
| ------ | ---- |----------- |
| 22.12.07 | 1.이상한 문자 만들기 | 1. 2중 배열을 만들고 반복문을 통해 문자 하나씩 확인하며 짝수, 홀수 인덱스를 판별해 대소문자 구분  |
| 22.12.06 | 1.올바른 괄호 | 1. 괄호가 형성되는 조건 2가지를 통해 for문을 돌리며 맞는지 확인   |
| 22.12.05 | 1.최대 공약수와 최소 공배수 | 1. 최대공약수는 반복문을 통해 공통으로 나머지가 0이 되는 수 찾가, 최소공배수는 두 수의 곱 나누기 최대  |
| 22.12.04 | 1.한 번만 겹치는 문자 | 1. 완전 탐색 후 겹치는 문제 빈 배열에 담기, removeAll을 통해 해당 문자  |
| 22.12.03 | 1.없는 숫자 더하기 | 1. 0부터 9까지 reduce 고차함수를 사용해 더하고 없는 수 배열을 reduce 함수로 더한 후 둘을   |
| 22.12.02 | 1.최댓값과 최솟값 | 1. min(), max() 메서드를 통해 배열 중 큰 값과 작은 값   |
| 22.12.01 | 1.진료 순서 정하기 | 1. 2중 for 문을 통해, 인덱스 구하기  |
| 22.11.29 | 1.가까운 수 | 1. 딕셔너리의 key와 value의 정렬을 통해 문제   |
| 22.11.26 | 1.제일 작은 수 제거하기 | 1. 배열을 정렬한 후 제일 작은 수 찾기, 작은 수를 토대로 배열의 인덱스 값  |
| 22.11.24 | 1.직사각형 별찍기   | 1. String(repeating: "", count: )함수와 repeatElement("", count: ) 함수에 대해서 공부했음 |
| 22.11.23 | 1.나누어 떨어지는 숫자 배열   | 1. 나머지가 0인 배열 고차함수로 찾기 |
| 22.11.22 | 1.핸드폰 번호 가리기  | 1. suffix, prefix 함수  |
| 22.11.21 | 1.두 수의 나눗셈  | 1. double타입으로 나눈 후, Int타입으로 변환하면 소숫점은 자동으로 버림 |
| 22.11.20 | 1.나머지가 1이 되는 수 찾기  | 1. - |
| 22.11.19 | 1.문자열을 정수로 바꾸기  | 1. 정수로 타입변환을 한 후, 언래핑 작업을 통해 해결 |
| 22.11.18 | 1.캐릭터의 좌표 <br/> 2.모스부호 | 1.-  <br/> 2. 딕셔너리를 통해 key를 통해 바로 value에 접근하기 <br/> 조건문  |
| 22.11.17 | 1.x만큼 간격이 있는 n개의 숫자 | 1. for문을 통한 풀이, 고차함수를 통한 풀이로 해결 |
| 22.11.16 | 1.약수의 개수와 덧셈 | 1. 약수 구하는 방법 공부 |
| 22.11.15 | 1.수박수박수박수? | 1. 복잡한 3항 연산자로 문제 풀이 |
| 22.11.14 | 1.문자열 내 p와 y의 개수| 1. 고차함수를 더 적게 사용할 수 있는 방법을 공부하였음. |
| 22.11.13 | 1.자연수 뒤집어 배열로 만들기| 1.고차함수 compactMap에 대해서 공부할 수 있었음. |
| 22.11.12 | 1.정수 제곱근 판별 | 1.제곱근인지 아닌지 판별하는 변수를 추가해서 예외처리를 해주었음. |
| 22.11.10 | 1.등수 매기기 | 1.반복문과 조건문이 어려운 경우를 공부해볼 수 있었음. |
| 22.11.09 | 1.A로 B 만들기<br/> 2.자릿수 더하기 | 1.sorted() 메서드에 대해서 공부하였음 <br/> 2.고차함수를 이용해 형태 변환을 고민하였음. |
| 22.11.07 | 1.피자 나눠 먹기(2) | 1.최소 공배수를 구하기 위한 방법을 고민해봄 |
| 22.11.06 | 1.중복된 문자 제거 | 1.빈 배열에 문자를 넣으며 중복을 확인함 |
| 22.11.05 | 1.7의 개수 | 1.[Int]에 Int값을 String으로 바꿔서 접근하는 방법을 연습함 |
| 22.11.04 | 1.합성수 찾기 | 1.for문을 통해서 구현하고 그것을 고차함수로 구현해보는 연습을 함 |
| 22.11.03 | 1.369게임 | 1.타입을 변환하여 그 안에 특정 값이 있는지 판별하는 방법을 공부함 |
| 22.11.02 | 1.특이한 정렬 | 1.딕션너리를 sorted하는 방법에 대해서 공부함(클로저를 이용해서) |
| 22.11.01 | 1.주사위의 개수| 1. 가로, 세로, 높이에 어떻게 해야 많은 육면체를 넣을 수 있는지 구현하는 문제 |
| 22.10.31 | 1.외계행성의 나이<br/>2.배열 회전시키기| 1.튜플을 사용해서 문제를 해결했지만 반복문을 2번이나 사용해서 개인적으로 아쉬운 풀이<br/>2.배열의 값을 교체하기 위한 함수 .removeLast() - 마지막 인덱스 값 삭제, .removeFirst() - 첫번째 인덱스 값 삭제, .insert( ,at: ) - 해당 인덱스에 값을 넣는 함수 등을 공부하였음. |
| 22.10.30 | 1.인덱스 바꾸기<br/>2.컨트롤 제트| 1.고차함수(map)을 사용하여 간결하게 구현하는 방법을 연습함 <br/>2.개인적으로 많이 헤맨 문제, 컨트롤 제트(되돌리기)라는 문제의 의미를 파악하는 연습을 했음. |
| 22.10.29 | 1.가위바위보<br/>2.음양 더하기| 1.같은 문제를 반복문, 고차함수로 구현해봄 <br/>2.모든 값을 더하고 빼야하는 수는 *2를 통해서 빼서 구현 |
| 22.10.28 | 1.문자 반복 출력하기<br/>2.직각삼각형 출력하기<br/>3.문자열 정렬하기(1)| 1.반복해서 출력해야 하는 문자를 "String(repeating: String(value), count: n)"을 통해서 구현이 가능하다는 것을 배움<br/>2.-<br/>3.문제풀이를 반복문, 고차함수 2가지 방법으로 구현해봄 |
| 22.10.27 | 1.암호 해독<br/>2.OX퀴즈<br/>3.부족한 금액 계산하기| 1.String을 배열로 만들고 배수의 인덱스 값만 뽑아서 결과 도출<br/>2.components(separatedBy: " ") - 원하는 기준으로 나눌 수 있는 메서드를 배웠음<br/>3.조건을 모두 충족시키기 위한 연습이 되었음(제한 조건 꼭 확인하기!) |
| 22.10.26 | 1.대문자와 소문자<br/>2.순서쌍의 개수<br/>3.영어가 싫어요. | 1.String의 uppercased() - 대문자, lowercased() - 소문자에 대해서 공부함<br/>2. filter 사용해서 조건을 만족시킴<br/>3.String.replacingOccurences(of: , with: ) - of의 인자를 with의 인자로 바꿔주는 메서드에 대해서 알게 되었음. |
| 22.10.25 | 1.평균 구하기<br/>2.약수의 합<br/>3.문자열 정렬하기(2)| 1.배열을 map을 사용해 Double타입으로 변환하고 reduce를 통해 더함<br/>2.제약조건을 잘 확인하자!<br/>3.문자열도 정렬이 가능하다는 것을 알게되었음. |
| 22.10.24 | 1.약수 구하기<br/>2.피자 나눠 먹기(3)| 1.반복문으로 푼 문제를 고차함수를 사용해 코드를 줄이는 연습을 함<br/>2.- |
| 22.10.23 | 1.최댓값 만들기(1)<br/>2.피자 나눠 먹기(1) | 1.sorted(by: >) 메서드를 통해 큰 수부터 나열하면 더 쉽게 index를 접근할 수 있음<br/>2.- |
| 22.10.22 | 1.배열 자르기<br/>2.n의 배수 고르기<br/>3.제곱수 판별하기<br/>4.숨어있는 숫자의 덧셈(1) | 1.-<br/>2.고차함수(filter)를 사용하여 특정 조건만 걸러냄<br/>3.while반복문 대신 filter를 사용하여 제곱수 판별도 가능<br/>4. .isNumber 메서드를 알게 되었음. string값이 숫자에 해당하는 값인지 확인할 수 있는 메서드  |
| 22.10.21 | 1.2차원으로 만들기<br/>2.아이스 아메리카노 | 1.2차원 배열에 얽매이지 않고 1차원 배열로 생각하고 조건을 생각해보기<br/>2.반목문으로 보이지만 연산으로 해결할 수 있는 경우 고려해보기  |
| 22.10.20 | 1.콜라츠 추측 <br/>2.팩토리얼 | 1.while문 속에 if와 else if의 차이에 대해서 공부를 하였음<br/>2.팩토리얼을 만들기 위해 변수의 할당 방법을 공부하였음  |
| 22.10.19 | 1.개미군단 <br/> | 1.그리디 알고리즘(가장 큰 값부터 대입시켜 인자의 value를 줄이며 카운트는 증가시킴) |
| 22.10.18 | 1.k의 개수 | 1. Int타입으로는 k의 개수를 구하기 쉽지 않아, Int타입을 String타입으로 바꿔서 같은 문자열이 있는지 확인(고차함수 사용) |
| 22.10.17 | 1.삼각형의 완성조건(1) <br/> 2.최댓값 만들기(2) <br/> 3.숫자 찾기 <br/>4.짝수는 싫어요 | 1. - <br/> 2. 음수, 양수가 섞여 있는 int배열을 정렬한 후 맨 앞 2개와 맨 뒤 2개의 곱을 비교 <br/> 3. - <br/>4. 1...n까지 배열을 만들 떄, for문을 사용해서 배열에 넣어주는 것 보다 Array(1...n)을 이용하면 쉽게 만들 수 있음. |
| 22.10.16 | 1.배열의 유사도 <br/>2.문자열안에 문자열 <br/>3.옷가게 할인 받기<br/>4.배열 두배 만들기 | 1.고차함수(filter)를 이용해 반복문을 줄이는 방법을 알게되었음 <br/> 2.삼항연산자에 대해서 알게되었음<br/>3.if문 대신 switch문을 이용해 가독성이 좋게 하였음 <br/>4.고차함수(map)을 이용해 배열안에 값들을 한번에 접근 |
| 22.10.15 | 1.배열 원소의 길이<br/>2.모음제거<br/>3.특정 문자 제거하기<br/>4.자릿수 더하기 |1.- <br/>2.고차함수(map, filter)이용<br/>3.고차함수(map, filter)이용<br/>4.고차함수(filter, reduce)사용 |
| 22.10.14 | 1.점의 위치 구하기<br/>2.편지<br/>3.중앙값 구하기<br/>4.짝수 홀수 개수 | 1.if문을 사용하였지만 switch와 tuple을 이용하면 가독성이 좋은 코드 작성 가능<br/>2.-<br/>3.-<br/>4.반복문을 이용해 하나씩 비교하며 해결했지만 고차함수(filter)을 이용하면 조건에 바로 접근 가능 |
| 22.10.13 | 1.배열 뒤집기 <br/>2.문자열 뒤집기<br/>3.머쓱이보다 키 큰 사람<br/>4.중복된 숫자 개수  | 1.배열의 큰수부터 정렬(.reversed()) 메서드를 배움<br/>2.- <br/>3.고차함수(filter)을 이용해 배열안에 조건을 만족하는 value에 바로 접근이 가능<br/>4.for문을 이용하였지만 고차함수(filter)을 이용하면 조건에 바로 접근 가능|
| 22.10.12 | 1.문자열 뒤집기<br/>2.머쓱이보다 키 큰 사람<br/>3.중복된 숫자 개수<br/>4.짝수의 합<br/>5.각도기 | 1.-<br/>2.고차함수(filter)을 사용하여 조건에 바로 접근<br/>3.for문이 아닌 고차함수(filter)를 사용해 조건에 바로 접근<br/>4.-<br/>5.switch문을 통해 조건문 사용 |
| 22.10.11 | 1.배열의 평균값<br/>2.양꼬치<br/>3.숫자 비교하기<br/>4.나이 출력 | 1.고차함수(reduce)를 사용해 int배열을 모두 더하였음<br/>2.-<br/>3.3항연산자를 공부할 수 있었음<br/>4. - |
| 22.10.10 | 1.두 수의 곱<br/>2.나머지 구하기<br/>3.세균 증식<br/>4.두 수의 차<br/>5.몫 구하기 | 1.-<br/>2.-<br/>3.거듭제곱에 쓰이는 메서드인 pow에 대해서 공부하였음. pow 메서드는 int 타입은 되지 않기 때문에 Double타입으로 타입 변환을 하고 마지막에 Int타입으로 변환하여 문제를 해결하였음<br/>4.-<br/>5.- |
| 22.10.09 | 1.가장큰수찾기<br/>2.순열 검사<br/>3.내적<br/>4.짝수와 홀수<br/>5.하샤드 수 | 1. array.max() - 배열 중 큰 값 찾는 메서드, array.index(of: ) - 배열 안에 특정 값의 인덱스를 찾는 메서드 <br/>2.-<br/>3.-<br/>4.-<br/>5.Int에 쉽게 접근하기 위해 String값으로 타입 변환|






