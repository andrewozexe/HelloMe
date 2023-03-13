import Foundation
import SwiftUI

struct HobbiesView : View {
    @State var hobbies: HobbiesSource
    
    
    
    var body: some View {
        NavigationView {
            List(hobbies.dataHobbies) { hobbie in
                NavigationLink(destination: HobbiesDetails(hobbie: hobbie)){
                    Text(hobbie.hobbie)
                }
            }
        }.navigationTitle("Meus Hobbies")
    }
}
