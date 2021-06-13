import SwiftUI

struct ListUsingAnalyticsModifier: View {
    var body: some View {
        List {
            ForEach(0..<100) { id in
                AnalyticsView(id: id) {
                    RowView(id: id)
                }
            }
        }
    }
}

struct ListUsingAnalyticsModifier_Previews: PreviewProvider {
    static var previews: some View {
        ListUsingAnalyticsModifier()
    }
}
