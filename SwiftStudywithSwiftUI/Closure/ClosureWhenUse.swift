//
//  ClosureWhenUse.swift
//  SwiftStudywithSwiftUI
//
//  Created by 이수민 on 2023/01/13.
//

import SwiftUI

struct ClosureWhenUse: View {
    
    @State var result : String = "Not yet"
    var body: some View {
        VStack{
        
            Text(result)
            Button {
                result = calculateNumber( 3, 4, calculate : {first,second in
                    return first*second
                } )
            } label: {
                Text("Click me")
            }

        }
        
    }
    //인자 두 개와 클로저 (인자 두개 받아서 스트링으로 반환해줌)
    //calculate ~~~ 이것도 타입이다
    func calculateNumber(_ first: Int, _ second:Int, calculate:(Int,Int)-> Int) ->String {
        return String(calculate(first,second))
    }
//    func sumTwoNumber(_ first : Int, _ second : Int) -> String{
//        return String(first+second)
//    }
//    func minusTwoNumber(_ first : Int, _ second : Int) -> String{
//        return String(first-second)
//    }
//    func multipleTwoNumber(_ first : Int, _ second : Int) -> String{
//        return String(first*second)
//    }
}

struct ClosureWhenUse_Previews: PreviewProvider {
    static var previews: some View {
        ClosureWhenUse()
    }
}
