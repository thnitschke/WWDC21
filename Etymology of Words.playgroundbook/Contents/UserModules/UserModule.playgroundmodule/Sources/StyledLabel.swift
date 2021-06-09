import SwiftUI

public struct StyledLabel: View {
    
    var text: String
    var visible: Bool
    
    public init(text: String, visible: Bool = true) {
        self.text = text
        self.visible = visible
    }
    
    public var body: some View {
        Group {
            if visible {
                Text(text)
                    .font(.title)
                    .fontWeight(.regular)
                    .padding(8)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.systemBackground)
                            .shadow(radius: 10))
                    .cornerRadius(20)
            } else {
                EmptyView()
            }
        }
    }
}

struct StyledLabel_Previews: PreviewProvider {
    static var previews: some View {
        StyledLabel(text: "🇩🇪 Hallo Welt!")
            .previewLayout(.sizeThatFits)
    }
}
