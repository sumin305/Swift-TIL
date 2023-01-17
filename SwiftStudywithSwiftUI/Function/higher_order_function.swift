//
//  higher_order_function.swift
//  SwiftStudywithSwiftUI
//
//  Created by 이수민 on 2023/01/16.
//

import SwiftUI

struct higher_order_function:
    View {
    let friends = ["Leeo", "Olivia", "Domi", "Ho"]
    let ages = [12,43,64,22]
    var body: some View {
        List{
            //map을 사용하여 string 뒤에 "map"추가
            ForEach(friends.map({item in
                item + " -Kor"
            }), id : \.self){ friend in
                Text(friend)
            }
            //map을 사용하여 Int값들을 String값들로 변환해준다
            ForEach(ages.map({item in
                String(item)
            }), id : \.self){ age in
                Text(age)
                
            }
            Spacer()
            
            //Filter 사용하여 짝수인 값들만 출력
            ForEach(ages.filter({item in
                item % 2 == 0
            }).map({item in
                String(item)
            }), id : \.self){ age in
                Text(age)
            }
            Spacer()
            
            //Reduce 사용하여 값 하나로 만들기
            Text(ages.reduce(0, { partialResult, next in
                partialResult + next
            }).description)
            }
        }
    }

struct higher_order_function_Previews: PreviewProvider {
    static var previews: some View {
        higher_order_function()
    }
}
