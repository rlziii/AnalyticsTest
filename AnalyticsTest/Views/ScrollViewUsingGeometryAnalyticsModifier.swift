import SwiftUI

struct ScrollViewUsingGeometryAnalyticsModifier: View {
    private let coordinateSpaceName = "ScrollViewUsingGeometryAnalyticsModifier"

    var body: some View {
        GeometryReader { proxy in
            ScrollView {
                ForEach(0..<100) { id in
                    RowView(id: id)
                        // Adjustments made because we are not showing in a List...
                        .padding(.horizontal)
                        .frame(height: 44)
                        .background(id.isMultiple(of: 2) ? Color.white : Color.gray)
                        .geometryAnalytics(with: id, coordinateSpace: .named(coordinateSpaceName), parentSize: proxy.size)
                }
            }
        }
        .coordinateSpace(name: coordinateSpaceName)
    }
}

struct ScrollViewUsingGeometryAnalyticsModifier_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewUsingGeometryAnalyticsModifier()
    }
}
