//
//  ViewController.swift
//  PlayingWithTableViewsRevisited
//
//  Created by Michael Vilabrera on 5/22/17.
//  Copyright © 2017 Michael Vilabrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let dataSource: QuotesDataSource
    
    required init?(coder aDecoder: NSCoder) {
        let quotes = [
            Quote(author: "Albert Einstein", text: "Two things are indefinite: the universe and human stupidity: and I am not sure about the universe."),
            Quote(author: "Steve Jobs", text: "Design is not just what it looks like and feels like. Design is how it works."),
            Quote(author: "John Lennon", text: "Life is what happens when you're busy making other plans."),
            Quote(author: "The Dude", text: "I'll tell you what I'm blathering about... I've got information man! New shit has come to light! And shit... man, she kidnapped herself. Well sure, man. Look at it... a young trophy wife, in the parlance of our times, you know, and she, uh, uh, owes money all over town, including to known pornographers, and that's cool... that's, that's cool, I'm, I'm saying, she needs money, man. And of course they're going to say that they didn't get it, because... she wants more, man! She's got to feed the monkey, I mean uh... hasn't that ever occurred to you, man? Sir?")
        ]
        self.dataSource = QuotesDataSource(quotes: quotes)
        super.init(coder: aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.estimatedRowHeight = 113
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.dataSource = dataSource
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

