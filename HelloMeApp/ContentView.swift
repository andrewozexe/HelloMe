import SwiftUI
import Foundation

struct ContentView: View {
    @State private var name = "André ☕️";
    @State private var bio = """
                             Olá, me chamo André Fabricio Wozniack. Estudo Engenharia de Computação na PUCPR, além de fazer parte da Apple Developer Academy entre muitas outras coisas que faço. Esse é um  pequeno aplicativo criado para me apresentar e para me desafiar a conhecer essa nova ferramenta e me aventurar na area de design (ainda que pouco)
                             """;
    @State private var programming = 15;
    @State private var design = 0;
    @State private var communication = 6;
    @State var isShowingPopup = false
    @State var newSkillName = ""
    @State var newSkillLevel: Double = 0
    @State var newDescriptionSkill: String = ""
    @State var newText: String = ""
    @State private var showFullText = false

    let hobbiesSrc: HobbiesSource;
    let dataSrc: DataSource;
    var skills : SkillSource;
    let gridItemLayout = Array(repeating: GridItem(.flexible()), count: 2)
    let columns = [GridItem(.flexible()),GridItem(.flexible())]
    let interests = ["Programação","Musica","Filmes de Ficção","Jogos","Volei","Café",]
    
    
    
    var body: some View {
        NavigationView{
                ScrollView{
                    VStack {
                        Image("hello_memoji")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .clipShape(Circle())
                            .padding();
                        
                        Text(name)
                            .font(.largeTitle)
                            .fontWeight(.bold);
                        
                        Text("19").bold()
                        
                        VStack{
                            Text(showFullText ? bio : String(bio.prefix(30)) + "...")
                                .lineLimit(showFullText ? nil : 2)
                                .padding()
                                .font(.body)
                                .multilineTextAlignment(.leading)
                                .padding(.bottom, -38)
                            Button(showFullText ? "Ver menos" : "Ver mais") {
                                showFullText.toggle()
                            }.padding()
                            
                            VStack {
                                Text("O que eu gosto:").font(.title3)
                                LazyVGrid(columns: gridItemLayout) {
                                    ForEach(interests, id: \.self) { interest in
                                        Text(interest)
                                            .padding(.vertical, 7)
                                            .padding(.horizontal,10)
                                            .background(Color.gray.opacity(0.1))
                                            .cornerRadius(10)
                                            .frame(maxWidth: .infinity)
                                            //.alignmentGuide(.leading) { d in d[.leading] }
                                    }
                                }
                                .frame(maxHeight: 300)
                                .padding(.horizontal,20)
                            }

                            
                            //Habilidades
                            Text("Minhas Habilidades")
                                .font(.title3)
                                .padding(.top, 30)
                            LazyVGrid(columns: gridItemLayout) {
                                ForEach(skills.getData()) { skill in
                                    NavigationLink{
                                        VStack{
                                            SkillDetails(model: skill)
                                        }
                                    } label : {
                                        SkillView(model: skill)
                                    }
                                }
                            }.padding()
                            
                            //Adicionar Habilidade
                            VStack {
                                List(skills.getData()) { skill in
                                    Text("\(skill.skill) - Nível \(skill.level)")
                                }
                                Button("Adicionar habilidade") {
                                    isShowingPopup = true
                                }
                                .sheet(isPresented: $isShowingPopup, content: {
                                    NavigationView {
                                        Form {
                                            Section(header: Text("Nova habilidade")) {
                                                TextField("Nome da habilidade", text: $newSkillName)
                                                HStack{
                                                    Slider(value: $newSkillLevel)
                                                    Text("\(Int(newSkillLevel*100))%")
                                                }
                                            }
                                            Section(header: Text("Detalhes")){
                                                TextEditor(text:$newText)
                                            }
                                            
                                        }
                                        .navigationTitle("Adicionar habilidade")
                                        .navigationBarItems(
                                            leading: Button("Cancelar") {
                                                isShowingPopup = false
                                                newSkillName = ""
                                                newSkillLevel = 0
                                            },
                                            trailing: Button("Adicionar") {
                                                skills.addSkill(skill: SkillsModel(level: (newSkillLevel/100), skill: newSkillName, detail: newText))
                                                isShowingPopup = false
                                                newSkillName = ""
                                                newText = ""
                                                newSkillLevel = 0
                                            }
                                        )
                                    }
                                })
                            }.padding(.vertical)
                            
                      
                            //Botões
                            HStack{
                                NavigationLink("Hobbies"){
                                    HobbiesView(hobbies: hobbiesSrc)
                                }.font(.title2).buttonStyle(.borderedProminent)
                                NavigationLink("Galeria"){
                                    MoreInfo()
                                    Spacer()
                                }.font(.title2).buttonStyle(.borderedProminent)
                            
                            }
                        }
                        .navigationTitle("Hello me!")
                    }
                }.navigationBarBackButtonHidden(true)
            
        }
    }
    
    class ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(hobbiesSrc: HobbiesSource(), dataSrc: DataSource(), skills: SkillSource())
        }
    }
}
