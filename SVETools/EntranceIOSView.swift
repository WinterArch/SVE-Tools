//
//  EntranceIOSView.swift
//  SVETools
//
//  Created by 张文涛 on 2024/10/4.
//

import SwiftUI

struct EntranceIOSView: View {
    @State private var tabviewSelection = Selection.deck
    var body: some View {
        NavigationStack {
            TabView(selection: $tabviewSelection) {
                ForEach(Selection.allCases, id: \.self) { (selected: Selection) in
                    NavigationLink(selected.rawValue, destination: { Text(selected.rawValue) })
                        .tabItem {
                            Text(selected.rawValue)
                        }
                }
            }
            .toolbar {
                NavigationLink("设置", destination: {
                    Text("设置")
                })
            }
        }
    }
    private enum Selection: String, CaseIterable {
        case deck = "我的牌组"
        case tool = "对决工具"
        case simu = "模拟抓牌"
    }
}

#Preview {
    EntranceIOSView()
}
