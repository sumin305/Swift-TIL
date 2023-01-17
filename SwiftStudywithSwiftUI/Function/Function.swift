//
//  Function.swift
//  SwiftStudywithSwiftUI
//
//  Created by 이수민 on 2023/01/11.
//

import SwiftUI

struct Function: View {
    let expressions : [String] = ["🥰", "🤪", "🧐", "😭", "🥵"]
    
    @State var isClicked : Bool = true
    @State var stateText : String = "ON"
    @State var pickExpression : String = ""
    
    var body: some View {
        VStack{
            Text("Choose\nYour present Expression")
                .font(.custom("title", size: 50))
                .padding(.bottom,100)
            
            HStack{
                ForEach(expressions, id: \.self) { expression in
                    Button("\(expression)"){
                        pickExpression = expression
                    }
                }
                }.padding()
                
                Button("\(stateText)"){
                    isClicked.toggle()
                    stateText = switchLook(bool: isClicked)
                }.padding()
                
                if isClicked{
                    Group{
                        Text("This is my EXPRESSION")
                            .font(.title)
                        Text("\(pickExpression)")
                            .font(.custom("ch", size: 100))
                            .shadow(radius: 3)
                        //                    Text("\(expressions[pickExpression])")
                    }.padding()
                    
                }
                
            }
        }
        
        func switchLook (bool : Bool) -> String {
            if bool{
                return "ON"
            }else{
                return "OFF"
            }
        }
    
}



struct Function_Previews: PreviewProvider {
    static var previews: some View {
        Function()
    }
}
