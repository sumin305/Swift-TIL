//
//  ErrorHandling.swift
//  SwiftStudywithSwiftUI
//
//  Created by 이수민 on 2023/01/17.
//

import SwiftUI

enum numberError : Error {
    case divideByZero
}
struct ErrorHandling: View {
    
    @State var num : Int = 0
    @State var inputNum : String = ""
    
    
    var body: some View {
        VStack{
            HStack{
                Text("100을 몇으로 나눌까요")
                TextField("input Int : ", text: $inputNum)
            }.padding()
            Text(num.description)
            Button {
                do{
                    num = try divideHundred(input: inputNum)
                }catch{
                    print("error : ")
                }
                
            } label: {
                Text("divide")
            }
            
        }
    }
    //에러를 던질 수 있는 함수임
    private func divideHundred(input : String) throws -> Int {
        
        if inputNum == "0" {
            throw numberError.divideByZero
        }else{
            return 100 / (Int(input) ?? 0)
        }
    }
}

struct ErrorHandling_Previews: PreviewProvider {
    static var previews: some View {
        ErrorHandling()
    }
}
