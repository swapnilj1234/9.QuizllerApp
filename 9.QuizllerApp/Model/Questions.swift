//
//  Questions.swift
//  9.QuizllerApp
//
//  Created by swapnil jadhav on 23/10/20.
//  Copyright © 2020 t. All rights reserved.
//

import Foundation

class Questions
{
    var question : String = ""
    var CorrectAnswer : Bool = false
    
    init(text:String,answer:Bool) {
        question = text
        CorrectAnswer = answer
    }
}
