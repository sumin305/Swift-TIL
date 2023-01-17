//
//  TrailingClosure.swift
//  SwiftStudywithSwiftUI
//
//  Created by 이수민 on 2023/01/13.
//

import SwiftUI

struct TrailingClosure: View {
    var body: some View {
        Text("soom!")
            .onAppear{
                //함수의 마지막 인자가 클로저 생략 !!!! trailing closure (무엇을 할지 행동만 나타내기에 이름을 지정할 필요 x)
                TrailingClosure(first: 3, second: 4) { a, b in
                    print("\(a) and \(b)")
                }
            }
    }
    
    func TrailingClosure(first : Int, second: Int, action: (Int, Int)->()){
        action(first,second)
    }
}

struct TrailingClosure_Previews: PreviewProvider {
    static var previews: some View {
        TrailingClosure()
    }
}
