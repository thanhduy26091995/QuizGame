//
//  ViewController.swift
//  QuizGame
//
//  Created by Cntt03 on 4/5/17.
//  Copyright © 2017 Cntt03. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var questionLabel: UILabel!
    var correctAnswer = String()
    
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomQuestions()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func randomQuestions(){
        var randomNumber  = arc4random() % 4
        randomNumber+=1
        
        
        switch randomNumber {
        case 1:
            questionLabel.text="Tên tôi là gì?"
            button1.setTitle("Duy", for: [.normal])
            button2.setTitle("Kiệt", for: [.normal])
            button3.setTitle("Thành", for: [.normal])
            button4.setTitle("Huy", for: [.normal])
            correctAnswer = "1"
            break;
        case 2:
            questionLabel.text="WTôi bao nhiêu tuổi?"
            button1.setTitle("18", for: [.normal])
            button2.setTitle("19", for: [.normal])
            button3.setTitle("20", for: [.normal])
            button4.setTitle("21", for: [.normal])
            correctAnswer = "4"
            break;
        case 3:
            questionLabel.text="Tôi xài điện thoại gì?"
            button1.setTitle("LG", for: [.normal])
            button2.setTitle("Iphone", for: [.normal])
            button3.setTitle("Samsung", for: [.normal])
            button4.setTitle("Nokia", for: [.normal])
            correctAnswer = "1"
            break;
        case 4:
            questionLabel.text="Tôi đang làm gì?"
            button1.setTitle("Chơi games", for: [.normal])
            button2.setTitle("Học", for: [.normal])
            button3.setTitle("Code", for: [.normal])
            button4.setTitle("Nghe nhạc", for: [.normal])
            correctAnswer = "3"
            break;
        default:
            break;
        }
        
    }
    
    @IBAction func button4Action(_ sender: Any) {
        if (correctAnswer == "4"){
            NSLog("correct", []);
        }
        else{
            //  NSLog("Wrong")
        }
    }
    @IBAction func button3Action(_ sender: Any) {
        if (correctAnswer == "3"){
            NSLog("correct", []);
        }
        else{
            //NSLog("Wrong")
        }
    }
  
    @IBAction func button2Action(_ sender: Any) {
        if (correctAnswer == "2"){
            NSLog("correct", []);
        }
        else{
            //  NSLog("Wrong")
        }

    }
    @IBAction func button1Action(_ sender: Any) {
        if (correctAnswer == "1"){
            NSLog("correct", []);
        }
        else{
            //NSLog("Wrong")
        }

    }
    
    
}

