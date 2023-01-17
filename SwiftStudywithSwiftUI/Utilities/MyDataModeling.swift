//
//  MyDataMoeling.swift
//  SwiftStudywithSwiftUI
//
//  Created by 이수민 on 2023/01/17.
//

import SwiftUI

struct MyDataModeling: View {
    
    //틀을 생성
    struct Pet{
        let name : String
        let ownerName : String
        let type : String
    }

    let myPet = Pet(name: "soom", ownerName: "soom", type: "soom")
    let myPet2 = Pet(name: "dodo", ownerName: "sumin", type: "cat")
    
    var body: some View {
        VStack{
            //애완동물의 이름
            Text("Bangul")
            //애완동물의 주인
            Text("Soom")
            //애완동물의 종류
            Text("Cat")
            //애완동물의 이름과 주인과 종류가 같아진다면..? -> 데이터 모델링 사용해보자
         
            Text(myPet.name)
            Text(myPet.ownerName)
            Text(myPet.type)
     
            Text(myPet2.name)
            Text(myPet2.ownerName)
            Text(myPet2.type)
        }.padding()
     
    }
}

struct MyDataMoeling_Previews: PreviewProvider {
    static var previews: some View {
        MyDataModeling()
    }
}
