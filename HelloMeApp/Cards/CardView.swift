import SwiftUI

struct CardView: View {
    let model: CardModel
    
    var preview: some View {
        VStack {
            Spacer()
            VStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text(model.title)
                        .foregroundColor(.white)
                        .font(.title3)
                        .bold()
                    Text(model.text)
                        .font(.body)
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(12)
            }
            .frame(maxWidth: .infinity, minHeight: 70, maxHeight: 70, alignment: .leading)
            .background(Color.black.opacity(0.7))
            
        }
    }
    
    var body: some View {
        Image(model.imageName)
            .resizable()
            .scaledToFill()
            .overlay {
                preview
            }
            .cornerRadius(30)
    }
}
