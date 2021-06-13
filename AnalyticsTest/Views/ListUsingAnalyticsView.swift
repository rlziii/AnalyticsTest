import SwiftUI

struct ListUsingAnalyticsView: View {
    var body: some View {
        List {
            ForEach(0..<100) { id in
                RowView(id: id)
                    .analytics(with: id)
                    // .analytics(with: id, tracking: .all)
                    // .analytics(with: id, tracking: .shown)
                    // .analytics(with: id, tracking: .tapped)
                    // .analytics(with: id, tracking: [.shown, .tapped])
            }
        }
    }
}

struct ListUsingAnalyticsView_Previews: PreviewProvider {
    static var previews: some View {
        ListUsingAnalyticsView()
    }
}
