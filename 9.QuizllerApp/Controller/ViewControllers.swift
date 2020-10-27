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
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    
    @IBOutlet weak var questionLbl: UILabel!
    @IBOutlet weak var progressLbl: UILabel!
    @IBOutlet weak var scoreLbl: UILabel!
    
    @IBOutlet weak var preogressBar: UIProgressView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let first = allQuestion.list[0]
        questionLbl.text = first.question

      
    }
    
    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        print(sender.tag)
        
        if sender.tag == 1
        {
            pickedAnswer = true
        }
        else
        {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        questionNumber = questionNumber + 1
        
        
        nextQuestion()
        
        
        
    }
    
    
    
    func checkAnswer()
    {
        let correctAnswer = allQuestion.list[questionNumber].CorrectAnswer
        
        if correctAnswer == pickedAnswer
        {
            print("yes")
        }
        
        else
        {
            print("no")
        }
    }
    
    func nextQuestion()
    {
        
        if questionNumber <= 12
        {
        questionLbl.text = allQuestion.list[questionNumber].question
        }
        else
        {
            print("end")
            questionNumber = 0
        }
    }
   
}
