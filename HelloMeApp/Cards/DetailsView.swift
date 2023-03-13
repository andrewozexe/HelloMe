import SwiftUI

struct DetailsView: View {
    let model: CardModel
    
    var body: some View {
    
        VStack(alignment: .leading) {
            Image(model.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
            Text(model.title)
                .font(.title)
                .bold()
                .padding(.horizontal, 20)
            ScrollView {
                Text(model.text)
                    .padding(.horizontal, 20)
                
            }
        }
        .navigationBarTitle(model.title, displayMode: .inline)
    }
}

