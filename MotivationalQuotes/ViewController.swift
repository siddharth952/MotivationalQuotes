//
//  ViewController.swift
//  MotivationalQuotes
//
//  Created by Siddharth Sen on 17/08/19.
//  Copyright © 2019 halfpolygon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var quoteTextLabel : UILabel!

   @IBOutlet weak var authorNameLabel: UILabel!
   @IBOutlet weak var authorImageView: UIImageView!
    
    let quotebook = QuoteBook()
    
    @IBAction func getNewQuote(){
        
        let newQuote = quotebook.getRandomQuotes()
        let author = quotebook.getAuthor(for: newQuote)
        let authorImageName = quotebook.getImageName(for: author)
        
        
        quoteTextLabel.text = newQuote
        authorNameLabel.text = author
        authorImageView.image = UIImage(named: authorImageName)
        
    }
    
}

