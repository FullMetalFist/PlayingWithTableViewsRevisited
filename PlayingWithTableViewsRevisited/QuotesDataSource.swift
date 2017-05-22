//
//  QuotesDataSource.swift
//  PlayingWithTableViewsRevisited
//
//  Created by Michael Vilabrera on 5/22/17.
//  Copyright © 2017 Michael Vilabrera. All rights reserved.
//

import UIKit

class QuotesDataSource: NSObject {
    let quotes: [Quote]
    
    init(quotes: [Quote]) {
        self.quotes = quotes
    }
}

extension QuotesDataSource: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quotes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: QuoteCell.self)) as! QuoteCell
        let quote = quotes[indexPath.row]
        cell.author = quote.author
        cell.quoteText = quote.text
        return cell
    }
}
