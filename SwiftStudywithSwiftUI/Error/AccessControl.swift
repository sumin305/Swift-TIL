
import SwiftUI

class Taxi{
    init (driver : String) {
        self.driver = driver
    }
    //다른 엔티티에서는 사용 불가능!
    private var driver : String
    
    func changeDriver(newDriver : String){
        driver = addDot (name : newDriver)
    }
    
    func getDriverName() -> String {
        return driver
    }
    // 이 메소드 내부에서만 사용되는 함수임! -> 다른 메소드의 도구
    private func addDot (name : String) -> String {
        return name + "."
    }
}
struct AccessControl: View {
    
    var myTaxi = Taxi(driver : "Soom")
    
    var body: some View {
        Text ("배치된 기사님 바꾸기")
        Button{
            myTaxi.changeDriver(newDriver : "Soom2")
        }label:{
            Text(myTaxi.getDriverName())
        }
    }
}

struct AccessControl_Previews: PreviewProvider {
    static var previews: some View {
        AccessControl()
    }
}
