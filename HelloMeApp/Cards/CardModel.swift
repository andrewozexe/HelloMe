import Foundation

struct CardModel: Identifiable {
    let imageName: String
    let title: String
    let text: String
    
    var id = UUID()

}
