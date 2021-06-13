import SwiftUI

@main
struct AnalyticsTestApp: App {
    init() {
        // Set all navigation bars to be transparent.
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
