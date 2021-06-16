import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    "List using AnalyticsView",
                    destination: ListUsingAnalyticsView()
                )
                NavigationLink(
                    "List using AnalyticsModifier",
                    destination: ListUsingAnalyticsModifier()
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
