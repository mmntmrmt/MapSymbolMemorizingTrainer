//
//  QuestionViewController.swift
//  MapSymbolMemorizingTrainer
//
//  Created by Ryo Morimoto on 2016/01/05.
//  Copyright © 2016年 Ryo Morimoto. All rights reserved.
//

import UIKit
import RealmSwift

class QuestionViewController: UIViewController {

    @IBOutlet weak var QuestionUIImageView: UIImageView!
    var yourAnswer = 0
    var questions = [QuestionsModel()]
    var judge = JudgeAnswer()
    var count = 0
    var rw = RightOrWrong()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LoadDataModel().load()
        let realm = try! Realm()
        for q1 in realm.objects(QuestionsModel) {
            questions.append(q1)
            print("\(q1.answer)")
            print("\(q1.id)")
            print("\(q1.imageData)")
        }
        for q in questions {
            print(q.id)
            print(q.imageData)
        }
        questions.shuffle(questions.count-1)
        for q in questions {
            print(q.id)
            print(q.imageData)
        }
        QuestionUIImageView.image = UIImage(named: questions[count].imageData)
        judge.setAnswer(questions[count].answer)
    
    }
//数字のボタンをタップして解答を入力、解答を表示する
    @IBAction func oneUIButtonTouchUpInside(sender: UIButton) {
        yourAnswer = 1
        showAnswer()
    }
    
    @IBAction func twoUIButtonTouchUpInside(sender: UIButton) {
        yourAnswer = 2
        showAnswer()
    }
    
    @IBAction func threeUIButtonTouchUpInside(sender: UIButton) {
        yourAnswer = 3
        showAnswer()
    }
    
    @IBAction func fourButtonTouchUpInside(sender: UIButton) {
        yourAnswer = 4
        showAnswer()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showAnswer() {
        let myAlert: UIAlertController
        let myOkAction: UIAlertAction
        
        let myEndAction = UIAlertAction(title: "終了する", style: .Default) { action in
            print("End!!")
            print(self.rw.rightOrWrong)
            self.count++
            self.transition()
        }
        let mes = "正解は" + "\(self.questions[self.count].answer)" + "でした。"
        rw.rightOrWrong.append(judge.judgeAnswer(yourAnswer))
        
        if(rw.rightOrWrong[count]){
            myAlert = UIAlertController(title: "正解！", message: mes, preferredStyle: .Alert)
            myOkAction = UIAlertAction(title: "次の問題に進む", style: .Default) { action in
                print(self.count)
                self.rw.rightOrWrong[self.count] = true
                self.count++
                self.setQuestionData()
                print(self.rw.rightOrWrong)
            }
        }else{
            myAlert = UIAlertController(title: "残念!", message: mes, preferredStyle: .Alert)
            myOkAction = UIAlertAction(title: "次の問題に進む", style: .Default) { action in
                print(self.count)
                self.rw.rightOrWrong[self.count] = false
                self.count++
                self.setQuestionData()
                print(self.rw.rightOrWrong)
            }
            
        }
        myAlert.addAction(myOkAction)
        myAlert.addAction(myEndAction)
        myAlert.view.frame = (frame:CGRectMake(0, 0, 1000, 1000))
        presentViewController(myAlert, animated: true, completion: nil)
 
        
    }
    
    func setQuestionData(){
        if self.count == self.questions.count - 1 {
            self.transition()
        }else{
            self.QuestionUIImageView.image = UIImage(named: self.questions[self.count].imageData)
            self.judge.setAnswer(self.questions[self.count].answer)
        }
    }

    func transition() { //問題を解くのをやめて結果を表示する
        let resultViewController = self.storyboard!.instantiateViewControllerWithIdentifier("ResultView") as! ResultViewController
        //値を移す
        resultViewController.n = String(self.count)
        resultViewController.m = String(self.rw.countRight())
        self.presentViewController(resultViewController, animated: true, completion: nil)
    }

    
    
    

}
