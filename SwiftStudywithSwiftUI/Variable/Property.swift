//
//  Property.swift
//  SwiftStudywithSwiftUI
//
//  Created by 이수민 on 2023/01/12.
//

import SwiftUI

struct Property: View {
    
    // 프로퍼티 -> 저장 프로퍼터 (변수)
    //       |-> 연산 프로퍼티 () : 저장 프로퍼티를 통해 연산을 하는 프로퍼티 , @State 붙일 수 없음
    @State var koreanMoney : Int = 1000 //-> State를 넣어줬기 때문에 struct이지만 변형가능 property 가 mutating 할 수 있는 이유!!!!
    var japaneseMoney : Int{
        get{
            return koreanMoney / 10
        }
        set{
            koreanMoney = japaneseMoney * 10
        }
        //set : 어떠한 값을 설정함
        
    }
    var body: some View {
        VStack{
            Text("\(koreanMoney)원 있습니다") //int를 문자열에 삽입하기 위해 \()안에 변수를 넣어준다
            Text("\(japaneseMoney)엔 있습니다")
            Button{
                koreanMoney = 2000
                //에러 japaneseMoney = 32
            }label : {
                Text("Button")
            }
        }
        
    }
}

struct Property_Previews: PreviewProvider {
    static var previews: some View {
        Property()
    }
}
