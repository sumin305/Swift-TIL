//
//  MyProtocol.swift
//  SwiftStudywithSwiftUI
//
//  Created by 이수민 on 2023/01/17.
//

import SwiftUI
 
// Vehicle이란 규칙은 name과 speed라는 값을 가지고 있다.
protocol Vehicle {
    var name : String {get}
    var speed : Int {get}
}
struct MyProtocol: View {
    
    struct Car : Vehicle {
        let name : String
        let speed : Int
    }
    
    struct Train : Vehicle {
        let name : String
        let speed : Int
    }
    
    struct AirPlane : Vehicle {
        let name : String
        let speed : Int
    }
    
    struct TestSoom : View {
        var body : some View {
            Text("SOOM HI")
        }
    }
    let car = Car(name: "Power", speed: 3)
    let train = Train(name: "PoPo", speed: 15)
    let vehicles: [Vehicle] = [Car(name: "Power", speed: 3),
                               Train(name: "PoPo", speed: 15),
                               AirPlane(name: "Baba", speed: 333)] //-> Car와 Train은 다른 놈들이기 때문에 Any를 넣어줘야한다
    var body: some View {
        //protocol 예시 중 하나인 VStack 에는 View 들만 들어올 수 있다.
        VStack{
            TestSoom()
//            HStack{
//                Text(car.name)
//                Text(car.speed.description)
//            }
//
//            HStack{
//                Text(train.name)
//                Text(train.speed.description)
//            }
            // 배열 생성하여 반복문으로 못할까? -> Vehicle 이라는 큰 규약인 protocol 생성해줌
            HStack{
                Text(vehicles[0].name)
                Text(vehicles[0].speed.description)
                
                Text(vehicles[1].name)
                Text(vehicles[1].speed.description)
                
                Text(vehicles[2].name)
                Text(vehicles[2].speed.description)
            }
        }
    }
}

struct MyProtocol_Previews: PreviewProvider {
    static var previews: some View {
        MyProtocol()
    }
}
