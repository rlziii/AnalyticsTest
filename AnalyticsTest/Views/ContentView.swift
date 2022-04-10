import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                NavigationLink(
                    "List using AnalyticsView",
                    destination: ListUsingAnalyticsView()
                )
                NavigationLink(
                    "List using AnalyticsModifier",
                    destination: ListUsingAnalyticsModifier()
                )
                NavigationLink(
                    "ScrollView using GeometryAnalyticsModifier",
                    destination: ScrollViewUsingGeometryAnalyticsModifier()
                )
                NavigationLink(
                    "Buttons View",
                    destination: ButtonsView()
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
