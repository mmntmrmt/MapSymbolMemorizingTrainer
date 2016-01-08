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
    func setQuestion(id:Int, answer:String) {
        let qs = QuestionsModel()
        
        q.append(qs)
        q[id-1].id = id
        q[id-1].imageData = "image" + String(id) + ".jpg"
        q[id-1].answer = answer
        try! realm.write{
            self.realm.add(self.q[id-1], update: true)
        }
    }
    
    func load() {
        try! realm.write {
            self.realm.deleteAll()
        }
        //setQuestion(number, answer)
        
        
    }
    
    func randomlySelect() {
    }
    
}