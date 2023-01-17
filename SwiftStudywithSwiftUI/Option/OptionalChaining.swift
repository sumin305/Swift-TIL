//
//  OptionalChaining.swift
//  SwiftStudywithSwiftUI
//
//  Created by 이수민 on 2023/01/12.
//
import SwiftUI

struct Student {
    let name : String
    let pet : Pet?
}

struct Pet {
    let name : String
    let age : Int
}
//->  Optional Chaining : .으로 줄줄히 연결 중간에 옵셔널 껴있으면 중간에 그 옵셔널 값이 nil이라면 전체가 nil 
struct OptionalChaining: View {
    let leeo = Student(name:"leeo222", pet:Pet(name : "bangul", age : 15))
    var body: some View {
        VStack{
            Text(leeo.name)
            //leeo 의 펫은 있을수도 없을수도 있다.
            //없는 것에 접근할 경우 앱 사망
            Text(leeo.pet?.name ?? "None")  //값이 없다면  nil값 , 있다면 펫 이름값
            
            //if let petName = leeo.pet?.name{//실제 값이 있는지 없는지 한번 검사
            //    Text(petName)
            //}
        }
    }
}

struct OptionalChaining_Previews: PreviewProvider {
    static var previews: some View {
        OptionalChaining()
    }
}
