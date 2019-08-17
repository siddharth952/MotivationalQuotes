//
//  Quotes.swift
//  MotivationalQuotes
//
//  Created by Siddharth Sen on 17/08/19.
//  Copyright © 2019 halfpolygon. All rights reserved.
//

import Foundation


class QuoteBook{
    
    var quotes: [String] = [
    "If you do something and it turns out pretty good, then you should go do something else wonderful, not dwell on it for too long. Just figure out what’s next.",
    "No matter how small you start, start something that matters.",
    "The credit belongs to those who are actually in the arena, who strive valiantly; who know the great enthusiasms, the great devotions, and spend themselves in a worthy cause; who at best know the triumph of high achievement; and who, at worst, if they fail, fail while daring greatly, so that their place shall never be with those cold and timid souls who know neither victory nor defeat."
    
    
    ]
    
    var authors: [String] = [
    
    "Steve Jobs",
    "Brendon Burchard",
    "Theodore Roosevelt"
    ]
    
    var image_names: [String] = [
    
    "thumb_steve", "thumb_brendon", "thumb_theodore"
    
    ]
    
    func getRandomQuotes() -> String{
        
        let randomInt = Int.random(in: 0...quotes.count-1)
        return quotes[randomInt]
        
    }
    
    func getAuthor(for quote: String) -> String {
        if let index = quotes.index(of: quote){
            return authors[index]
        }else{
            return ""
        }
    }
    
    func getImageName(for author: String) -> String {
        if let index = authors.index(of: author){
            return image_names[index]
        } else {
            return ""
        }
    }
    
    
}



