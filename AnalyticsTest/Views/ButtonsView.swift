import SwiftUI

struct ButtonsView: View {
    var body: some View {
        VStack {
            HStack {
                button(letter: "A")
                button(letter: "B")
            }

            HStack {
                button(letter: "C")
                button(letter: "D")
            }
        }
        .padding()
    }

    private func button(letter: String) -> some View {
        Button(
            action: { print(letter) },
            label: {
                RoundedRectangle(cornerRadius: 25.0)
                    .aspectRatio(contentMode: .fit)
                    .overlay(
                        Text(letter)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    )
            }
        )
        .analytics(with: letter)
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
