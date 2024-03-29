//
//  LineGraph.swift
//  barCharts
//
//  Created by Griffin Muir on 2024-02-06.
//

import SwiftUI
import Charts

let chartData = [ (city: "Hong Kong", data: hkWeatherData),
                  (city: "London", data: londonWeatherData),
                  (city: "Taipei", data: taipeiWeatherData) ]

struct LineGraph: View {
    
    var body: some View {
        VStack {
            Chart {
                ForEach(hkWeatherData) { item in
                    LineMark(
                        x: .value("Month", item.date),
                        y: .value("Temp", item.temperature)
                    )
                }
                
            }
            .chartXAxis {
                AxisMarks(values: .stride(by: .month)) { value in
                    AxisGridLine()
                    AxisValueLabel(format: .dateTime.month(.defaultDigits))
                }
            }
            .chartYAxis {
                AxisMarks(position: .leading)
            }
            .chartPlotStyle { plotArea in
                plotArea
                    .background(.purple.opacity(0.5))
            }
            .frame(height: 300)
        }
    }
}

