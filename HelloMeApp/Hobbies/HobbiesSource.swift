import Foundation

class HobbiesSource {
    
    
    var dataHobbies : [HobbiesModel] = [
        HobbiesModel(hobbie: "Tocar Violão ", images: ["Violao", "Violao2", "FotoComViolao", "violao3"]),
        HobbiesModel(hobbie: "Dançar no CTG", images: ["danca", "chulaComArthur", "irati2", "chulaGrupo", "CTG"]),
        HobbiesModel(hobbie: "Assar Carne", images: ["carne1", "carne2","carne3","carne4"]),
        HobbiesModel(hobbie: "Equipe de Robótica", images: ["robotica1","robotica2", "robotica3"])
    ]
    
    func getHobbies() -> [HobbiesModel] {
        dataHobbies
    }
}
