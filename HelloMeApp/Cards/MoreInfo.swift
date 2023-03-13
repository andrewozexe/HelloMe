import Foundation
import SwiftUI

struct MoreInfo : View {
    let cards = [
        CardModel(imageName: "programing", title: "Programando meu primeiro app", text: "Foto tirada em algum momento em que eu estava programando esse aplicativo"),
        CardModel(imageName: "ensaioChula", title: "Um dia qualquer de ensaio", text: "Uma foto aleatória de um ensaio de dança num dia quente pré canpeonato estadual"),
        CardModel(imageName: "montandoPC", title: "Desmonstando meu Notebook antigo", text: "Desmontei meu notebook antigo para limpar e trocar a pasta térmica, mas acabei perdendo alguns parafusos e quase queimando a placa mãe"),
        CardModel(imageName: "foto", title: "Foto de um role caótico ", text: "Foto coms meus amigos em um anivesário"),
        CardModel(imageName: "FotoComViolao", title: "Por do sol", text: "Foto tirada no por do sol em uma fazenda no interio de SC"),
        CardModel(imageName: "setup", title: "Meu novo Setup", text: "setup que terminei de montar no inicio de 2023, foi o primeiro computador que eu montei"),
        CardModel(imageName: "kitApple", title: "Kit Apple", text: "kit que recebi quando entrei na Apple Developer Academy, um dos dias mais felizes kkkk"),
        CardModel(imageName: "mao", title: "Braço Eletromecanico", text: "Projeto para matéria da facuildade que desenvolvi junto com um amigo, era controlada por comandos via arduino")
    ]
    
    var body: some View {
        NavigationView {
            List(cards) { card in
                NavigationLink(destination: DetailsView(model: card)) {
                    CardView(model: card)
                }.background(.opacity(0))
            }
            .navigationTitle("Galeria")
        }
    }
}

class MoreInfo_Previews: PreviewProvider {
    static var previews: some View {
        MoreInfo()
    }
}
