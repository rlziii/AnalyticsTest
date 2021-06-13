struct AnalyticsOptions: OptionSet {
    let rawValue: Int

    static let shown  = AnalyticsOptions(rawValue: 1 << 0)
    static let tapped = AnalyticsOptions(rawValue: 1 << 1)

    static let all: AnalyticsOptions = [.shown, tapped]
}
