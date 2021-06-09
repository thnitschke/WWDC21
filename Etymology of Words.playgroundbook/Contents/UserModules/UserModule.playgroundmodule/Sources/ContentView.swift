import SwiftUI
import NaturalLanguage

public struct ContentView: View {
    
    @EnvironmentObject var setup: Etymology
    
    @State var selectedWord: Word?
    @State var relatedWords: String?
    
    let embedding = NLEmbedding.wordEmbedding(for: .english)
    
    let columns = [
        GridItem(.fixed(58)),
        GridItem(.fixed(58)),
        GridItem(.fixed(58)),
        GridItem(.fixed(58)),
    ]
    
    public init() {
    }
    
    public var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: Alignment(horizontal: .center, vertical: .center)) {
                Image(uiImage: UIImage(named: "map")!)
                    .resizable()
                    .ignoresSafeArea()
                Rectangle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.black.opacity(0.7), Color.clear]),
                            startPoint: .top,
                            endPoint: .center))
                    .ignoresSafeArea()
                HStack(alignment: .center) {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(setup.wordsArray, id: \.self) { item in
                            Button(action: {
                                selectedWord = item
                                
                                if let emb = embedding {
                                    let similarWords = emb.neighbors(for: item.base.lowercased(), maximumCount: 5)
                                    
                                    var tempString = ""
                                    for word in similarWords {
                                        tempString += "\(word.0), "
                                    }
                                    tempString.removeLast(2)
                                    relatedWords = tempString + "."
                                }
                            }, label: {
                                Text(item.emoji)
                                    .font(.system(size: 40))
                            })
                            .buttonStyle(StyledButton())
                        }
                    }
                    .padding(.horizontal, 32)
                    Divider().padding(.vertical, 32)
                    VStack(alignment: .leading, spacing: 0) {
                        Text(selectedWord?.base ?? "Word")
                            .font(.system(.largeTitle, design: .rounded))
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .lineLimit(1)
                            .padding(.top, 16)
                        Text(selectedWord?.etymology ?? "Etymology description.")
                            .font(.title2)
                            .multilineTextAlignment(.leading)
                            .padding(.vertical, 10)
                        Spacer()
                        Text("Related words:\n " + (relatedWords ?? "None"))
                            .font(.system(.title2, design: .serif))
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom, 16)
                    }
                    .frame(minWidth: geometry.size.width * 0.3)
                    .padding(32)
                    Spacer()
                }
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.systemBackground)
                        .shadow(radius: 10)
                )
                .padding(
                    EdgeInsets(top: 16, leading: 16, bottom: geometry.size.height * 0.65, trailing: 16))
            }
            Group {
                StyledLabel(text: "🇬🇧 " + (selectedWord != nil ? selectedWord!.translate(to: .english) : ""),
                            visible: setup.visibleLanguages.contains(.english))
                    .offset(x: geometry.size.width * 0.2, y: geometry.size.height * 0.5)
                StyledLabel(text: "🇩🇪 " + (selectedWord != nil ? selectedWord!.translate(to: .german) : ""),
                            visible: setup.visibleLanguages.contains(.german))
                    .offset(x: geometry.size.width * 0.53, y: geometry.size.height * 0.65)
                StyledLabel(text: "🇳🇱 " + (selectedWord != nil ? selectedWord!.translate(to: .dutch) : ""),
                            visible: setup.visibleLanguages.contains(.dutch))
                    .offset(x: geometry.size.width * 0.36, y: geometry.size.height * 0.565)
                StyledLabel(text: "🇩🇰 " + (selectedWord != nil ? selectedWord!.translate(to: .danish) : ""),
                            visible: setup.visibleLanguages.contains(.danish))
                    .offset(x: geometry.size.width * 0.53, y: geometry.size.height * 0.46)
                StyledLabel(text: "🇫🇷 " + (selectedWord != nil ? selectedWord!.translate(to: .french) : ""),
                            visible: setup.visibleLanguages.contains(.french))
                    .offset(x: geometry.size.width * 0.3, y: geometry.size.height * 0.79)
                StyledLabel(text: "🇵🇹 " + (selectedWord != nil ? selectedWord!.translate(to: .portuguese) : ""),
                            visible: setup.visibleLanguages.contains(.portuguese))
                    .offset(x: geometry.size.width * 0.025, y: geometry.size.height * 0.86)
                StyledLabel(text: "🇪🇸 " + (selectedWord != nil ? selectedWord!.translate(to: .spanish) : ""),
                            visible: setup.visibleLanguages.contains(.spanish))
                    .offset(x: geometry.size.width * 0.27, y: geometry.size.height * 0.92)
                StyledLabel(text: "🇮🇹 " + (selectedWord != nil ? selectedWord!.translate(to: .italian) : ""),
                            visible: setup.visibleLanguages.contains(.italian))
                    .offset(x: geometry.size.width * 0.53, y: geometry.size.height * 0.79)
                StyledLabel(text: "🇵🇱 " + (selectedWord != nil ? selectedWord!.translate(to: .polish) : ""),
                            visible: setup.visibleLanguages.contains(.polish))
                    .offset(x: geometry.size.width * 0.75, y: geometry.size.height * 0.6)
                StyledLabel(text: "🇬🇷 " + (selectedWord != nil ? selectedWord!.translate(to: .greek) : ""),
                            visible: setup.visibleLanguages.contains(.greek))
                    .offset(x: geometry.size.width * 0.77, y: geometry.size.height * 0.9)
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environmentObject(Etymology())
                .colorScheme(.light)
            ContentView()
                .environmentObject(Etymology())
                .colorScheme(.dark)
        }
        .previewLayout(.fixed(width: 896, height: 1040))
    }
}
