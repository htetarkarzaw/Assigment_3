//
//  TalkVO.swift
//  Assigment_3_TalkList
//
//  Created by Htet Arkar Zaw on 8/23/19.
//  Copyright © 2019 Htet Arkar Zaw. All rights reserved.
//

import Foundation
class TalkVO {
    var speach : String = ""
    var speakerName : String = ""
    
    init(speach : String , speakerName: String) {
        self.speach = speach
        self.speakerName = speakerName
    }
}

extension TalkVO {
    
    static func getTalks() -> [TalkVO] {
        return [
            .init(speach: "To go wrong in one's own way is better than to go right in someone else's.",speakerName: "Fyodor Dostoevsky"),
            .init(speach: "Two things are infinite: the universe and human stupidity; and I am not sure about the universe.",speakerName: "Albert Einstein"),
            .init(speach: "Design is not just what it look like and feel like.Design is how it works.", speakerName: "Steve Jobs"),
            .init(speach: "The journey of a thousand miles begins with a single step.", speakerName: "Lao Tzu")
        ]
    }
    
    static func getTalkGrouped() -> [String:[TalkVO]]{
        
        return [
            "Albert Einstein" :[.init(speach: "Two things are infinite: the universe and human stupidity; and I am not sure about the universe.",speakerName: "Albert Einstein")],
            "Fyodor Dostoevsky" :[.init(speach: "To go wrong in one's own way is better than to go right in someone else's.",speakerName: "Fyodor Dostoevsky")],
            "Lao Tzu" :[.init(speach: "The journey of a thousand miles begins with a single step.",speakerName: "Lao Tzu")],
            "Steve Jobs" :[.init(speach: "Design is not just what it look like and feel like.Design is how it works.",speakerName: "Steve Jobs")]
        ]
    }
}
