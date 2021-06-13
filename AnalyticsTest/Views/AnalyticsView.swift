import SwiftUI

struct AnalyticsView<Content: View, ID: Hashable>: View {
    let id: ID
    var analyticsOptions: AnalyticsOptions = .all
    @ViewBuilder let content: Content

    var body: some View {
        content
            .onAppear(perform: shown)
            .simultaneousGesture(TapGesture().onEnded(tapped))
    }

    private func shown() {
        print("SHOWN: \(id)")
    }

    private func tapped() {
        print("TAPPED: \(id)")
    }
}

struct AnalyticsView_Previews: PreviewProvider {
    static var previews: some View {
        AnalyticsView(id: 0) {
            Text("Hello, world!")
        }
    }
}
