//
//  ErrorHandling.swift
//  SwiftStudywithSwiftUI
//
//  Created by 이수민 on 2023/01/17.
//

import SwiftUI

enum NetworkError : Error {
    case notFound
    case forbidden
    case internalServer
    case timeOut
}
struct ErrorHandling2: View {
    
    @State var response : String = "Not yet"
    @State var inputNum : String = ""
    
    
    var body: some View {
        VStack{
            HStack{
                Text("What is Server's response")
                //서버에 응답에 따른 처리하기
                //200 -ok
                //404 -not found
                //403 -forbidden
                //501 -internal error
                //time out
              
                TextField("input Reponse : ", text: $inputNum)
            }.padding()
            
            Text(response)
            
            Button {
                do{
                    response = try requestData(by: inputNum)
                }catch NetworkError.forbidden{
                    response = ("권한이 없습니다")
                    //로그인 페이지 노출
                }catch NetworkError.notFound{
                    response = ("페이지를 찾을 수 없습니다")
                    // 돌아가기 혹은 다른 페이지 보여주기 버튼 노출
                }catch NetworkError.internalServer{
                    response = ("서버와의 연결이 불안정합니다")
                }catch NetworkError.timeOut{
                    response = ("요청 시간이 초과 되었습니다. 다시 시도해주세요")
                }catch {
                    
                }
            } label: {
                Text("print response")
            }.padding()
        }.padding()
    }
    //에러를 던질 수 있는 함수임
    private func requestData(by inputNum : String) throws -> String {
        if inputNum == "200"{
            return "OK"
        }else if inputNum == "403" {
            throw NetworkError.forbidden
        }else if inputNum == "404" {
            throw NetworkError.notFound
        }else if inputNum == "501" {
            throw NetworkError.internalServer
        }else{
            throw NetworkError.timeOut
        }
    }
}

struct ErrorHandling2_Previews: PreviewProvider {
    static var previews: some View {
        ErrorHandling2()
    }
}
