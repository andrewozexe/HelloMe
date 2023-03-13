import Foundation

class DataSource {
    func getData() -> [CardModel] {
        return Self.data
    }
    
    private static let data = [
        CardModel(imageName: "programing", title: "foto programando meu primeiro app", text: "Foto tirada em algum momento em que eu estava programando esse aplicativo"),
        CardModel(imageName: "montandoPC", title: "Desmonstando meu Notebook antigo", text: "Desmontei meu notebook antigo para limpar e trocar a pasta térmica, mas acabei perdendo alguns parafusos e quase queimando a placa mãe"),
        CardModel(imageName: "montandoPC", title: "Desmonstando meu Notebook antigo", text: "Desmontei meu notebook antigo para limpar e trocar a pasta térmica, mas acabei perdendo alguns parafusos e quase queimando a placa mãe"),
        CardModel(imageName: "foto", title: "Foto de um role caótico ", text: "Foto coms meus amigos em algum luga")
    ]
}
