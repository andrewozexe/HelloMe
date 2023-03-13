import Foundation

class SkillSource {
    
    
    private var data = [
        SkillsModel(level: 0.4, skill:"Programação", detail: "Gosto muito de programar! Atualmente é umas das coisas que mais passo tempo fazendo, seja por projetos da faculdade, quanto para coisas pessoais. Encontrei na programação uma meneira de criar e por em prática ideias minhas"),
        SkillsModel(level: 0.2, skill:"Design", detail: "Apesar de conhecer as ferramentas mais padrões de design, como photoshop e corelDraw, tenho bem pouca noção da parte teorica e de como fazer as coisas"),
        SkillsModel(level: 0.33, skill:"Comunicação", detail: "Sou levemente timido, mas por causa da minha participação no CTG, tendo que realizar apresentações e até mesmo competir, acabei desenvolvendo um pouco mais a minha maneira de me comunicar"),
        SkillsModel(level: 0.45, skill:"Musica", detail: "Eu sou apaixonado por música, eu toco violão fazem alguns anos e adoro o instrumento, gosto bastante de tocar música brasileira, principalmente MPB"),
        SkillsModel(level: 1, skill:"Beber Café", detail: "Pra mim não tem hora ruim pra tomar café, adoro essa bebida de qualquer maneira")
    ]
    
    func getData() -> [SkillsModel] {
        return self.data;
    }
    
    func addSkill(skill:SkillsModel) {
        self.data.append(skill);
    }
    
    func createSkill(name: String, level: Double, detail: String) {
        addSkill(skill: SkillsModel(level: level, skill: name, detail: detail));
        
    }
}
