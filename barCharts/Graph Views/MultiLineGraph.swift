//
//  MultiLineGraph.swift
//  barCharts
//
//  Created by Griffin Muir on 2024-02-06.
//

import SwiftUI
import Charts
struct MultiLineGraph: View {
    var body: some View {
        Chart {
            ForEach(chartData, id: \.city) { series in
                ForEach(series.data) { item in
                    LineMark(
                        x: .value("Month", item.date),
                        y: .value("Temp", item.temperature)
                    )
                }
                .foregroundStyle(by: .value("City", series.city))
            }
        }
    }
}

#Preview {
    MultiLineGraph()
}
