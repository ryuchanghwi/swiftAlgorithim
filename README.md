# 🍎 Swift와 친해지기


### Swift 자주 사용하는 메서드 정리

<details markdown="1">
<summary>✅ 배열에 값이 위치한 index 찾기 - firstIndex(of:), lastIndex(of:) </summary>
<pre>
Array.min)
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
<summary>✅ 최대 최소값 찾기 - max(), min() </summary>
<pre>
Array.min)
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






