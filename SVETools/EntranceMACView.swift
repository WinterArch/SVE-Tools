//
//  EntranceMACView.swift
//  SVETools
//
//  Created by 张文涛 on 2024/9/28.
//

import SwiftUI

struct EntranceMACView: View {
    var body: some View {
        NavigationSplitView {
            HStack {
                VStack(alignment: .leading) {
                    ForEach(Selection.allCases, id: \.self) { (selected: Selection) in
                        NavigationLink(selected.rawValue, destination: { Text(selected.rawValue) })
                            .tabItem {
                                Text(selected.rawValue)
                            }
                        /*
                         NavigationLink(Selection.deck.rawValue, destination: {  })
                         .tabItem {
                         Text(Selection.deck.rawValue)
                         }
                         NavigationLink(Selection.simu.rawValue, destination: {  })
                         .tabItem {
                         Text(Selection.simu.rawValue)
                         }
                         NavigationLink(Selection.tool.rawValue, destination: {  })
                         .tabItem {
                         Text(Selection.tool.rawValue)
                         }
                         NavigationLink(Selection.conf.rawValue, destination: {  })
                         .tabItem {
                         Text(Selection.conf.rawValue)
                         }
                         */
                    }
                    Spacer()
                    NavigationLink("设置", destination: {
                        Text("设置")
                    })
                }
                Spacer()
            }
        } detail: {
            Text("Select an item")
        }
    }
    
    private enum Selection: String, CaseIterable {
        case deck = "我的牌组"
        case tool = "对决工具"
        case simu = "模拟抓牌"
    }
}

#Preview {
    EntranceMACView()
}
