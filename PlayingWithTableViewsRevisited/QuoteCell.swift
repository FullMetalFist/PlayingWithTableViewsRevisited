//
//  QuoteCell.swift
//  PlayingWithTableViewsRevisited
//
//  Created by Michael Vilabrera on 5/22/17.
//  Copyright © 2017 Michael Vilabrera. All rights reserved.
//

import UIKit

class QuoteCell: UITableViewCell {
    
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var quoteLabel: UILabel!
    
    var author: String? {
        didSet {
            authorLabel.text = author
        }
    }
    
    var quoteText: String? {
        didSet {
            quoteLabel.text = quoteText
        }
    }
}
