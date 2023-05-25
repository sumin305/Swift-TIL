
# 1. 통합 개발환경(IDE)이란

   - 통합 + 개발환경
   - swift 언어 → 해석기 → iOS app : 통합 개발환경을 사용하기 때문에 편리
    
   - 없을 경우 : terminal에 compile swift Myfile.swift 이렇게 일일히
        
        - 눈에 잘 안보여
        
        - 파일이 너무 많아서 한 눈에 보기 힘들어
        
        - 자동완성 기능 쓰지 못함 (오타에 민감) 빌드 실패
        
        -설정 값 들을 한 눈에 보고 싶어 
        
   - 통합 개발 환경의 예 : Xcode, ACcodev → 내 맘대로 커스터마이징 등 할 수 있음
   - editor compiler finder 설정값 simulator

- Swift vs SwiftUI
    - SwiftUI : 버튼과 같은 컴포넌트 그리는 도구이다 (import)
    - 다른 도구? storyboard→UIkit
        
                         swiftUI→swiftUI
        

# 2. swift playground 를 통한 swift 기본 문법 익히기
   - 명령
        - 명령 실행 시 collectGem()
         - 단어 사이에 공백 x
         - 명령 끝에는 항상 괄호를 붙임
    - 자료형
    
  ## 상수와 변수
    
   스위프트는 함수형 프로그래밍의 패러다임을 채용한 언어이므로 **불변 객체**를 굉장히 중요시 한다.
    
    ```
    // 상수의 선언
    let 이름 : 타입 = 값
    
    // 변수의 선언
    var 이름 : 타입 = 값
    ```
    
   값의 타입이 명확하면 타입 생략 가능하지만, 나중에 값을 넣어줄 때는 타입을 꼭 명시해주어야 한다.
    
    ```
    // 타입 생략
    let integer = 1
    var strings = "hello"
    
    // 값을 나중에 할당
    let name : String
    let age : Int
    
    // 값 할당
    name = "ssionii"
    age = 24
    
    ```
    
   ## 기본 데이터 타입
    
   스위프트는 데이터 타입에 엄격한 언어이다. 따라서 서로 다른 데이터 타입 간의 자료 교환이 굉장히 까다롭다.
    
   ### Bool
    
    true와 false만 값으로 가진다.
    
    ```
    var someBool : Bool = false
    someBool = true
    someBool = 1 // 컴파일 오류
    ```
    
   ### Int, UInt
    
   Int: 정수 타입. 64비트 정수형UInt: 양의 정수 타입. 64비트 양의 정수형
    
    ```
    var someInt : Int = 100
    
    var someUInt : UInt = 100
    someUInt = -100 // 컴파일 오류
    
    ```
    
   ### Float, Double
    
   Float: 실수 타입. 32비트 부동소수형Double: 실수 타입. 64비트 부동소수형
    
    ```
    var someFloat = 3.14
    someFloat = 3
    
    var someDouble = 3.14
    someDouble = 3
    someDouble = someFloat // 컴파일 오류
    ```
    
   ### Character, String
    
   Character: 문자 타입. 유니코드 사용. 큰따옴표("") 사용String: 문자열 타입. 유니코드 사용. 큰따옴표("") 사용
    
    ```
    var someCharacter : Character = "가"
    someCharacter = "a"
    someCharacter = "hello" // 컴파일 오류
    
    var someString : String = "hello"
    someString = someString + "월드"
    someString = someCharacter // 컴파일 오류
    ```
    
   ## Any, AnyObject, nil
    
   ### Any
    
   스위프트의 모든 타입을 지칭하는 키워드
    
    ```
    var someAny : Any = 100
    someAny = "아무거나 넣을 수 있다"
    someAny = 123.12
    
    // 마지막에 Double 타입의 값을 넣었더라도 Any는 Double이 아니기 때문에 할당 x
    // 명시적인 데이터 타입 변환 필요
    let someDouble = someAny // 컴파일 에러
    ```
    
   ### AnyObject
    
   모든 클래스 타입을 지칭하는 프로토콜
    
    ```
    class SomeClass{}
    var someAnyObject : AnyObject = SomeClass()
    
    // AnyObject는 클래스의 인스턴스만 수용 가능
    someAnyObject = 123.12 // 컴파일 에러
    ```
    
   ### nil
    
   스위프트에서 '없음'을 의미하는 키워드
    
    ```
    var someAny : Any
    var someAnyObject : AnyObject
    
    someAny = nil // 컴파일 오류
    someAnyObject = nil // 컴파일 오류
    ```
    
   ## 컬렉션 타입
    
   ### Array
    
   멤버가 순서(인덱스)를 가진 리스트 형태의 컬렉션 타입. 여러가지 리터럴 문법을 활용할 수 있다.
    
   1. Array 선언 및 생성
    
    ```
    var integers: Array<Int> = Array<Int>()
    
    // 위와 동일한 표현
    var integers : Array<Int> = [Int]()
    var integers : Array<Int> = []
    var integers : [Int] = Array<Int>()
    var integers : [Int] = [Int]()
    var integers : [Int] = []
    var integers = [Int]()
    
    ```
    
   2. Array 활용
    
    ```
    // 멤버 삽입
    integers.append(1)
    integers.appned(2)
    integers.appned(3)
    integers.append(123.12) // 오류
    
    // 멤버 포함 여부 확인
    integers.contains(1) // true
    integers.contains(4) // false
    
    // 멤버 교체
    integers[0] = 100
    
    // 멤버 삭제
    integers.remove(at:0) // 100 삭제
    integers.removeLast() // 2 삭제
    integers.removeAll() // 모두 삭제
    
    // 멤버 수
    print(integers.count) // 0
    ```
    
   ### Dictionary
    
   '키'와 '값'의 쌍으로 이루어진 컬렉션 타입. Array와 같이 여러가지 리터럴 문법을 활용할 수 있다.
    
   1. Dictionary의 선언과 생성
    
    ```
    var anyDictionary : Dictionary<String, Any> = [String : Any]()
    
    // 위와 동일한 표현
    var anyDictionary : Dictionary<String, Any> = Dictionary<String, Any>()
    var anyDictionary : Dictionary<String, Any> = [:]
    var anyDictionary : [String : Any] = Dictionary<String, Any>()
    var anyDictionary : [String : Any] = [String : Any]()
    var anyDictionary = [String : Any]()
    ```
    
   2. Dictionary 활용
    
    ```
    // 키에 해당하는 값 할당
    anyDictionary["someKey"] = "someValue"
    anyDictionary["anotherKey"] = 100
    
    // 위와 동일한 표현
    anyDictionary = ["someKey" : "someValue", "anotherKey" : 100]
    
    // 키에 해당하는 값 변경
    anyDictionary["someKey"] = "dictionary"
    
    // 키에 해당하는 값 제거
    anyDictionary.removeValue(forKey:"anotherKey")
    anyDictionary["someKey"] = nil
    
    ```
    
   ### Set
    
   중복되지 않는 멤버가 순서 없이 존재하는 컬렉션. Array, Dictionary와 달리 축약형이 없다.
    
   1. Set 선언 및 생성
    
    ```
    var integerSet : Set<Int> = Set<Int>()
    ```
    
   2. Set 활용
    
    ```
    // 멤버 추가
    integerSet.insert(1)
    integerSet.insert(2)
    integerSet.insert(99)
    integerSet.insert(3)
    integerSet.insert(99) // 반영 x
    
    // 멤버 포함 여부 확인
    integerSet.contains(1) // true
    integerSet.contains(100) // false
    
    // 멤버 삭제
    integerSet.remove(1) // {2, 3, 99}
    integerSet.removeFirst() // {3, 99}
    
    // 멤버 수
    print(integerSet.count) // 2
    ```
    
   멤버의 유일성이 보장되기 때문에 집합 연산에 활용하면 유용하다.
    
    ```
    let setA : Set<Int> = [1, 2, 3, 4, 5]
    let setB : Set<Int> = [3, 4, 5, 6, 7]
    
    // 합집합
    let union : Set<Int> = setA.union(setB)
    // 오름차순 정렬
    let orderedUnion : [Int] = union.sorted()
    
    // 교집합
    let intersection : Set<Int> = setA.intersection(setB)
    
    // 차집합
    let subtracting : Set<Int> = setA.subtracting(setB)
    ```
    
   - for루프
        
        ```swift
        let names : [String] = ["Alice", "Bambi", "Memmy"]
        
        //for문 사용
        //배열 변수 내에서 반복
        for name in names{
            print("name is \(name)")
        }
        print()
        //지정된 숫자 범위내에서 반복
        for i in 1...4{
            print("\(i)")
        }
        print()
        //지정된 범위 내에서 반복 (stride사용)
        for i in stride(from:10, to:0, by:-2){
            print("\(i)")
        }
        print()
        
        //while문 사용
        var i : Int = 0
        while true{
            print("\(i)")
            i+=1
            //4까지만 출력
            if i==5{
                break
            }
        }
        
        ```
        
        ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/08326cbd-4a99-49cd-b146-e55d99efc1d1/Untitled.png)
        
   - [https://tngusmiso.tistory.com/42](https://tngusmiso.tistory.com/42) → array 관련 함수 2
   - [https://tngusmiso.tistory.com/46](https://tngusmiso.tistory.com/46) → String 관련 함수
   - 조건 코드
     ```swift
        - if lightIsGreen{
             moveforward()
        
        }else{
        wait()
        }
   ```  
  
- 이런 느낌으로 if문은 if 후에 조건문(괄호없이) 하고 대괄호안에 수행문들을 적어준다. else, else if 가능

