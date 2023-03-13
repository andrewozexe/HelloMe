import Foundation

class SkillsModel : Identifiable {
    var level : Double
    var skill : String
    var detail : String
    
    var id = UUID()

    init(level: Double, skill: String, detail: String) {
        self.level = level
        self.skill = skill
        self.detail = detail
    }
    func getLevel() -> Double {
        level
    }

    func getName() -> String {
        skill
    }

    func getDetail() -> String {
        detail
    }

    func setLevel(newLevel :Double) {
        level = newLevel;
    }
}
