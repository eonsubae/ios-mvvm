//
//  Stock.swift
//  StocksAppSwiftUI
//
//  Created by KRITSSEAN on 2021/02/03.
//

import Foundation

struct Stock: Decodable {
    let symbol: String
    let description: String
    let price: Double
    let change: String
}
