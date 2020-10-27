//
//  ViewControllers.swift
//  9.QuizllerApp
//
//  Created by swapnil jadhav on 23/10/20.
//  Copyright © 2020 t. All rights reserved.
//

import UIKit

//Use an AVPlayer

class ViewControllers: UIViewController {

    
    
    
    let allQuestion = QuestionBank()
    
    @IBOutlet weak var questionLbl: UILabel!
    @IBOutlet weak var progressLbl: UILabel!
    @IBOutlet weak var scoreLbl: UILabel!
    
    @IBOutlet weak var preogressBar: UIProgressView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let first = allQuestion.list[0]
        questionLbl.text = first.question

      
    }
    
    
   
}
