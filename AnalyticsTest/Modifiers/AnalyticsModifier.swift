import SwiftUI

struct AnalyticsModifier<ID: Hashable>: ViewModifier {
    let id: ID
    let analyticsOptions: AnalyticsOptions

    func body(content: Content) -> some View {
        content
            .onAppear(perform: shown)
            .simultaneousGesture(TapGesture().onEnded(tapped))
    }

    private func shown() {
        guard analyticsOptions.contains(.shown) else {
            return
        }

        print("SHOWN: \(id)")
    }

    private func tapped() {
        guard analyticsOptions.contains(.tapped) else {
            return
        }

        print("TAPPED: \(id)")
    }
}

extension View {
    func analytics<ID: Hashable>(with id: ID, tracking analyticsOptions: AnalyticsOptions = .all) -> some View {
        modifier(AnalyticsModifier(id: id, analyticsOptions: analyticsOptions))
    }
}
