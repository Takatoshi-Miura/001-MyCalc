//
//  ResultViewController.swift
//  001 MyCalc
//
//  Created by Takatoshi Miura on 2020/05/17.
//  Copyright © 2020 Takatoshi Miura. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var price:Int = 0               // 最初の画面で入力した金額を受け取るプロパティ
    let percentValue:Float = 0.1    // 割引き率10%
    
    // 計算結果を表示するフィールド
    @IBOutlet weak var resultField: UITextField!
    
    
    // 割引き後の価格を算出、表示する
    override func viewDidLoad() {
        super.viewDidLoad()
        //割引額を算出する
        let waribikiPrice = Float(price) * percentValue

        //割引後の価格を算出する
        let percentOffPrice = price - Int(waribikiPrice)

        //結果を表示する
        resultField.text = "\(percentOffPrice)"
    }
    
}
