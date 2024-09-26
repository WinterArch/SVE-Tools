//
//  Item.swift
//  SVETools
//
//  Created by 张文涛 on 2024/9/27.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
