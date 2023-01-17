//
//  HOFloop.swift
//  SwiftStudywithSwiftUI
//
//  Created by 이수민 on 2023/01/16.
//

import SwiftUI
// 반복문이 한 번만 사용된다면 고차함수로 변환해서 사용할 수 있다
struct HOFloop: View {
    
    @State var friends = ["soom Lee","james Park","jihun Kim","sungyu Sin","soom Lee"]
    @State var isbool1 = true
    @State var isbool2 = true
    var body: some View {
        VStack{
            List{
                ForEach(friends, id : \.self) {friend in
                    Text(friend)
                    }
            }
                Button("map button") {
                    // map 고차함수를 이용하여 띄어쓰기 없애기
                    // friends = removeSpace(friends)
                    friends = friends.map({ friend in
                        friend.replacingOccurrences(of: " ", with: "")
                    })
                }
                Button("Filter button") {
                   // riends = filterName(friends, filterName : "soom Lee")
                    friends = friends.filter({ friend in
                        friend == "soom Lee"
                    })
            }
            
            }

    }
    // 함수를 이용하여 띄어쓰기 없애기
    func removeSpace(_ names : [String])->([String]){
        var tempNames : [String] = []
        for item in names{
            tempNames.append(item.replacingOccurrences(of: " ", with: ""))
        }
        return tempNames
    }
    // 함수를 이용하여 동명이인 없애기
    func filterName(_ names: [String], filterName : String) -> ([String]) {
        var tempNames : [String] = []
        
        for item in names{
            if item == filterName{
                tempNames.append(item)
            }
        }
        return tempNames
    }
    
    
}

struct HOFloop_Previews: PreviewProvider {
    static var previews: some View {
        HOFloop()
    }
}
