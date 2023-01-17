//
//  MyConcurrency.swift
//  SwiftStudywithSwiftUI
//
//  Created by 이수민 on 2023/01/17.
//

import SwiftUI

struct MyConcurrency: View {
    @State var myName : String = "Soom"
    var body: some View {
        VStack{
            Text(myName)
            Button("Delay")
            {
                downloadFile()
            }
        }
    }
    
    func downloadFile() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            myName = "Done"
        }
    }
}

struct MyConcurrency_Previews: PreviewProvider {
    static var previews: some View {
        MyConcurrency()
    }
}
