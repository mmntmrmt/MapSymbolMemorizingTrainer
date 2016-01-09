//
//  LoadDataModel.swift
//  MapSymbolMemorizingTrainer
//
//  Created by Ryo Morimoto on 2016/01/08.
//  Copyright © 2016年 Ryo Morimoto. All rights reserved.
//

import Foundation
import RealmSwift

class LoadDataModel: NSObject {
    let realm = try! Realm()
    var q :[QuestionsModel] = []
    func setQuestion(id:Int, answer:Int) {
        let qs = QuestionsModel()
        
        q.append(qs)
        q[id].id = id
        q[id].imageData = "image" + String(id) + ".jpg"
        q[id].answer = answer
        try! realm.write{
            self.realm.add(self.q[id], update: true)
        }
    }
    
    func load() {
        try! realm.write {
            self.realm.deleteAll()
        }
        //setQuestion(number, answer)
        setQuestion(0, answer: 1)
        setQuestion(1, answer: 2)
        setQuestion(2, answer: 3)
        setQuestion(3, answer: 4)
        setQuestion(4, answer: 1)
        setQuestion(5, answer: 2)
        setQuestion(6, answer: 3)
        setQuestion(7, answer: 4)
        setQuestion(8, answer: 1)
        setQuestion(9, answer: 2)
        setQuestion(10, answer: 3)

    }
    
    func randomlySelect() {
    }
    
}