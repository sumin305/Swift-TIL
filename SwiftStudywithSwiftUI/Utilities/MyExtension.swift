//
//  MyExtension.swift
//  SwiftStudywithSwiftUI
//
//  Created by 이수민 on 2023/01/16.
//

import SwiftUI

struct MyExtension: View {
    var body: some View {
        ZStack{
            Color.peach.ignoresSafeArea()
            Text("Leeo")
            
            //Text("010-3944-5278".checkHaveDoubleDash)
            
        }
    }
}

//Color의 기본값 이외에도 확장해서 명시해줌
extension Color {
    static let peach = Color("Peach")
    }

//기존 String 에서 제공하지 않는 메소드를 생성
//extension String{
//    func checkHaveDoubleDash() -> String{
//        name = name.replacingOccurrences(of: " ", with: "")
//        return name
//        
//    }
//}


struct MyExtension_Previews: PreviewProvider {
    static var previews: some View {
        MyExtension()
    }
}
