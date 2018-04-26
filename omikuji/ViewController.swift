//
//  ViewController.swift
//  omikuji
//
//  Created by 勝村里佳 on 2018/04/23.
//  Copyright © 2018年 jako. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!

    @IBAction func getOmikuji(_ sender: Any) {
        // おみくじの配列を定義
        let results = ["かず吉", "りか吉", "じゃこ吉", "ひな吉", "つか吉"]

        // 乱数を生成する
        let random  = arc4random_uniform(UInt32(results.count))
        
        // myLabelに表示する
        self.myLabel.text = results[Int(random)]

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 正円にする
        myLabel.layer.cornerRadius  = myLabel.bounds.width / 2

        // 外縁をなくす
        myLabel.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

