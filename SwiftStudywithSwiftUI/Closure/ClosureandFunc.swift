//
//  ClosureandFunc.swift
//  SwiftStudywithSwiftUI
//
//  Created by 이수민 on 2023/01/13.
//

import SwiftUI

struct ClosureandFunc: View {
    @State var myName : String = "Not Yet"
    //문자열 두개 매개변수 각각 prefix와 name에 들어감 문자열 하나 반환해줌
    var myCustomClosure : (String,String) -> String = { prefix, name in
      return prefix+" "+name
    }
    var body: some View {
        VStack{
            Text(myName)
            Button {
                myName = myCustomClosure("Lee","sumin")
                //myName = createName(prefix : "Lee", name : "sumin")
            } label: {
                Text("Click me")
            }
            
        }
    }
        
    func createName (prefix : String, name : String) -> String {
            return prefix + " " + name
        }
    
}

struct ClosureandFunc_Previews: PreviewProvider {
    static var previews: some View {
        ClosureandFunc()
    }
}
