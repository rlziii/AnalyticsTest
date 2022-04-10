import SwiftUI

struct GeometryAnalyticsModifier<ID: Hashable>: ViewModifier {
    let id: ID
    let analyticsOptions: AnalyticsOptions
    let coordinateSpace: CoordinateSpace
    let parentSize: CGSize

    func body(content: Content) -> some View {
        content
            .background(
                GeometryReader { proxy in
                    let frame = proxy.frame(in: coordinateSpace)
                    let isVisible: Bool = {
                        frame.midX >= 0 && frame.midX <= parentSize.width &&
                        frame.midY >= 0 && frame.midY <= parentSize.height
                    }()

                    Color.clear
                        .onAppear {
                            if isVisible { shown() }
                        }
                        .onChange(of: isVisible) {
                            if $0 { shown() }
                        }
                }
            )
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
    func geometryAnalytics<ID: Hashable>(with id: ID, tracking analyticsOptions: AnalyticsOptions = .all, coordinateSpace: CoordinateSpace, parentSize: CGSize) -> some View {
        modifier(GeometryAnalyticsModifier(id: id, analyticsOptions: analyticsOptions, coordinateSpace: coordinateSpace, parentSize: parentSize))
    }
}
