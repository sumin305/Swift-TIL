//
//  Enumpractice.swift
//  SwiftStudywithSwiftUI
//
//  Created by 이수민 on 2023/01/12.
//

import SwiftUI
//enum의 property case 별로 잘 정렬
enum Drink { //-> drink를 좀 더 세분화한다 (switch - case 문 사용)
    case coffee(hasMilk : Bool)
    case juice
    case soda(color : Color)
    
    var name : String {
        switch self{
            case .coffee(let hasMilk) :
                if hasMilk{
                    return "Latte"
                }else{
                    return "Americano"
                }
            case .juice :
                return "juice"
            case .soda(let color) :
                switch color{
                    case .orange :
                        return "환타"
                    case .black :
                        return "콜라"
                    default :
                        return "우웩"
            }
        }
    }
}
struct Enumpractice: View {
    let myDrinks : Drink = .soda(color : .black)
    var body: some View {
        VStack {
            Text(myDrinks.name)
        }
        
    }
}

struct Enumpractice_Previews: PreviewProvider {
    static var previews: some View {
        Enumpractice()
    }
}
