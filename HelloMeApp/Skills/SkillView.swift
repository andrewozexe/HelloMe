import Foundation
import SwiftUI

struct SkillView : View {
    @State var model: SkillsModel;
    
    var body: some View {
        VStack {
            Text("\(model.getName())")
                .font(.headline)
            ProgressView(value: model.level).frame(width: 100)
        
             
            }
    }
}
