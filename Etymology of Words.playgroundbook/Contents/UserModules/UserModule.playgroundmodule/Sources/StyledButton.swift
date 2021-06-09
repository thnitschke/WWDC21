import SwiftUI

public struct StyledButton: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(8)
            .background(configuration.isPressed ? Color.gray.opacity(0.35) : Color.systemBackground)
            .clipShape(Circle())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2))
    }
}
