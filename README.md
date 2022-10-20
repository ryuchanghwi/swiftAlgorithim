# 🍎 Swift와 친해지기
|   Day   |    푼 문제    |   What I Learned   |
| ------ | ---- |----------- |
| 22.10.09 | 1.가장큰수찾기<br/>2.순열 검사<br/>3.내적<br/>4.짝수와 홀수<br/>5.하샤드 수 | 1. array.max() - 배열 중 큰 값 찾는 메서드, array.index(of: ) - 배열 안에 특정 값의 인덱스를 찾는 메서드 <br/>2.-<br/>3.-<br/>4.-<br/>5.Int에 쉽게 접근하기 위해 String값으로 타입 변환|
| 22.10.10 | 1.두 수의 곱<br/>2.나머지 구하기<br/>3.세균 증식<br/>4.두 수의 차<br/>5.몫 구하기 | 1.-<br/>2.-<br/>3.거듭제곱에 쓰이는 메서드인 pow에 대해서 공부하였음. pow 메서드는 int 타입은 되지 않기 때문에 Double타입으로 타입 변환을 하고 마지막에 Int타입으로 변환하여 문제를 해결하였음<br/>4.-<br/>5.- |
| 22.10.11 | 1.배열의 평균값<br/>2.양꼬치<br/>3.숫자 비교하기<br/>4.나이 출력 | 1.고차함수(reduce)를 사용해 int배열을 모두 더하였음<br/>2.-<br/>3.3항연산자를 공부할 수 있었음<br/>4. - |
| 22.10.12 | 1.문자열 뒤집기<br/>2.머쓱이보다 키 큰 사람<br/>3.중복된 숫자 개수<br/>4.짝수의 합<br/>5.각도기 | 1.-<br/>2.고차함수(filter)을 사용하여 조건에 바로 접근<br/>3.for문이 아닌 고차함수(filter)를 사용해 조건에 바로 접근<br/>4.-<br/>5.switch문을 통해 조건문 사용 |
| 22.10.13 | 1.배열 뒤집기 <br/>2.문자열 뒤집기<br/>3.머쓱이보다 키 큰 사람<br/>4.중복된 숫자 개수  | 1.배열의 큰수부터 정렬(.reversed()) 메서드를 배움<br/>2.- <br/>3.고차함수(filter)을 이용해 배열안에 조건을 만족하는 value에 바로 접근이 가능<br/>4.for문을 이용하였지만 고차함수(filter)을 이용하면 조건에 바로 접근 가능|
| 22.10.14 | 1.점의 위치 구하기<br/>2.편지<br/>3.중앙값 구하기<br/>4.짝수 홀수 개수 | 1.if문을 사용하였지만 switch와 tuple을 이용하면 가독성이 좋은 코드 작성 가능<br/>2.-<br/>3.-<br/>4.반복문을 이용해 하나씩 비교하며 해결했지만 고차함수(filter)을 이용하면 조건에 바로 접근 가능 |
| 22.10.15 | 1.배열 원소의 길이<br/>2.모음제거<br/>3.특정 문자 제거하기<br/>4.자릿수 더하기 |1.- <br/>2.고차함수(map, filter)이용<br/>3.고차함수(map, filter)이용<br/>4.고차함수(filter, reduce)사용 |
| 22.10.16 | 1.배열의 유사도 <br/>2.문자열안에 문자열 <br/>3.옷가게 할인 받기<br/>4.배열 두배 만들기 | 1.고차함수(filter)를 이용해 반복문을 줄이는 방법을 알게되었음 <br/> 2.삼항연산자에 대해서 알게되었음<br/>3.if문 대신 switch문을 이용해 가독성이 좋게 하였음 <br/>4.고차함수(map)을 이용해 배열안에 값들을 한번에 접근 |
| 22.10.17 | 1.삼각형의 완성조건(1) <br/> 2.최댓값 만들기(2) <br/> 3.숫자 찾기 <br/>4.짝수는 싫어요 | 1. - <br/> 2. 음수, 양수가 섞여 있는 int배열을 정렬한 후 맨 앞 2개와 맨 뒤 2개의 곱을 비교 <br/> 3. - <br/>4. 1...n까지 배열을 만들 떄, for문을 사용해서 배열에 넣어주는 것 보다 Array(1...n)을 이용하면 쉽게 만들 수 있음. |
| 22.10.18 | 1.k의 개수 | 1. Int타입으로는 k의 개수를 구하기 쉽지 않아, Int타입을 String타입으로 바꿔서 같은 문자열이 있는지 확인(고차함수 사용) 
| 22.10.19 | 1.개미군단 <br/> | 1.그리디 알고리즘(가장 큰 값부터 대입시켜 인자의 value를 줄이며 카운트는 증가시킴) |
| 22.10.20 | 1.콜라츠 추측 <br/>2.팩토리얼 | 1.while문 속에 if와 else if의 차이에 대해서 공부를 하였음<br/>2.팩토리얼을 만들기 위해 변수의 할당 방법을 공부하였음  |
| 22.10.21 | 1.2차원으로 만들기| <br/>2.아이스 아메리카노 1.2차원 배열에 얽매이지 않고 1차원 배열로 생각하고 조건을 생각해보기<br/>2.반목문으로 보이지만 연산으로 해결할 수 있는 경우 고려해보기  |
| 22.10.21 | 1.2차원으로 만들기| <br/>2.아이스 아메리카노 1.2차원 배열에 얽매이지 않고 1차원 배열로 생각하고 조건을 생각해보기<br/>2.반목문으로 보이지만 연산으로 해결할 수 있는 경우 고려해보기  |

