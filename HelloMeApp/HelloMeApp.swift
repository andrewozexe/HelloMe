import SwiftUI

@main
struct HelloMeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(hobbiesSrc: HobbiesSource(), dataSrc: DataSource(), skills: SkillSource())
        }
    }
}


