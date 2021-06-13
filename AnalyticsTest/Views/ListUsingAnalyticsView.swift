import SwiftUI

struct ListUsingAnalyticsView: View {
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

struct ListUsingAnalyticsView_Previews: PreviewProvider {
    static var previews: some View {
        ListUsingAnalyticsView()
    }
}
