//
//  StockListViewModel.swift
//  StocksAppSwiftUI
//
//  Created by KRITSSEAN on 2021/02/05.
//

import Foundation

class StockListViewModel: ObservableObject {
    
    var searchTerm: String = ""
    @Published var stocks: [StockViewModel] = [StockViewModel]()
    
    func load() {
        fetchStocks()
    }
    
    private func fetchStocks() {
        
        WebService().getStocks { stocks in
            if let stocks = stocks {
                DispatchQueue.main.async {
                    self.stocks = stocks.map(StockViewModel.init)
                }
            }
        }
    }
}
