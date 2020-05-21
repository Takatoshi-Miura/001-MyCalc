//
//  ResultViewController.swift
//  001 MyCalc
//
//  Created by Takatoshi Miura on 2020/05/17.
//  Copyright © 2020 Takatoshi Miura. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var priceLeft :Int = 0               // 金額フィールド(左)の入力値を受け取るプロパティ
    var priceRight:Int = 0               // 金額フィールド(右)の入力値を受け取るプロパティ
    var arithmeticOperator:String = ""   // 算術演算子フィールドの入力値を受け取るプロパティ
    let percentValue:Float = 0.1         // 割引き率10%
    
    // 計算結果を表示するフィールド
    @IBOutlet weak var resultField: UITextField!
    
    
    // 割引き後の価格を算出、表示する
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 計算結果を表示する
        calculate()
    }
    
    
    // 金額フィールドの値を使用して計算するメソッド
    func calculate() {
        switch arithmeticOperator {
        case "+":
            resultField.text = "\(priceLeft + priceRight)"
        case "-":
            resultField.text = "\(priceLeft - priceRight)"
        case "×":
            resultField.text = "\(priceLeft * priceRight)"
        case "÷":
            // 右辺が0の場合は計算できない旨を表示
            if priceRight == 0 {
                resultField.text = "計算できません"
            } else {
                resultField.text = "\(priceLeft / priceRight)"
            }
        case "10%引き":
            //割引額を算出する
            let waribikiPrice = Float(priceLeft) * percentValue
            //割引後の価格を表示する
            resultField.text = "\(priceLeft - Int(waribikiPrice))"
        case "":
            resultField.text = "算術演算子を入力してください"
        default:
            resultField.text = "不明なエラーです"
        }
    }
    
}
