import SwiftUI

struct RowView: View {
    let id: Int

    var body: some View {
        HStack {
            Text(String(id))
            Spacer()
            Button("Button") {
                print("Regular button tap (\(id))")
            }
            .buttonStyle(PlainButtonStyle())
        }
        .foregroundColor(id.isMultiple(of: 2) ? Color.primary : Color.white)
        .listRowBackground(id.isMultiple(of: 2) ? Color.white : Color.gray)
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(id: 0)
    }
}
