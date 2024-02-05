import SwiftUI
import Charts

struct ContentView: View {
    var body: some View {
        Chart {
            BarMark(
                x: .value("Day", "Monday"),
                y: .value("Steps", 6019)
            )

            BarMark(
                x: .value("Day", "Tuesday"),
                y: .value("Steps", 7200)
            )
        }
    }
}
