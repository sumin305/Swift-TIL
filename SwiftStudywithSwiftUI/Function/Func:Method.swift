//
//  Func:Method.swift
//  SwiftStudywithSwiftUI
//
//  Created by 이수민 on 2023/01/12.
//

import SwiftUI

func returnLeeo3() -> String {
    return "LeeoLeeoLEeo"
}
//함수 { } 코드블럭
//메서드 : 함수보다 더 작은 개념 class, struct, enum등 객체안에서 사용
// (고양이의 달리기, 새의 날기) 특정 객체에서만 수행할 수 있는 메서드)
struct Func_Method: View {
    var body: some View {
        VStack{
            Text(returnLeeo3())
        }
    }
}

struct Func_Method_Previews: PreviewProvider {
    static var previews: some View {
        Func_Method()
    }
}
