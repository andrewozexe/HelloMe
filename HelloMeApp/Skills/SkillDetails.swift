import Foundation
import SwiftUI

struct SkillDetails: View {
    @State var model: SkillsModel
    @State var newSkillLevel : Double = 0
    @State var isShowingPopup = false
    @State var newText: String = ""
    
    
    init(model: SkillsModel) {
        self._model = State(initialValue: model)
        self._newSkillLevel = State(initialValue: model.level)
    }
    
    var body: some View {
        
        VStack{
            Form{
                Section(header: Text("Habilidade")){
                    HStack {
                        Text(model.getName())
                            .font(.title2)
                        Spacer()
                        HStack{
                            ProgressView(value: model.level)
                            Text("\(Int(model.level*100))%")
                        }
                    }
                }
                Section(header: Text("Detalhes")){
                    Text(model.detail)
                    
                }
            }
        }
    }
}

class SkillDetails_Previews: PreviewProvider {
    static var previews: some View {
        SkillDetails(model: SkillsModel(level: 0.25, skill: "Programação", detail: "Programar é minha paixão"))
    }
}
