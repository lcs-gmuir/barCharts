//
//  barChartsApp.swift
//  barCharts
//
//  Created by Griffin Muir on 2024-02-04.
//

import SwiftUI

@main
struct barChartsApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Image(systemName: "Graph.fill")
                        Text("Bar Graph")
                    }
                LineGraph()
                    .tabItem {
                        Image(systemName: "graph.fill")
                        Text("Line Graph")
                    }
                MultiLineGraph()
                    .tabItem {
                        Image(systemName: "graph.fill")
                        Text("Multi Line Graph")
                    }
            }
        }
    }
}
