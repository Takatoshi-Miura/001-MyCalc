//
//  ViewController.swift
//  001 MyCalc
//
//  Created by Takatoshi Miura on 2020/05/17.
//  Copyright © 2020 Takatoshi Miura. All rights reserved.
//
//  ＜概要＞
//  四則演算と10%引きの計算を行うプログラム。
//  中央の算術演算子フィールドの入力の有無によって金額の入力欄が切り替わる。
//     入力無し -> 金額フィールド(左)に入力可能
//     入力有り -> 金額フィールド(右)に入力可能
//  「＝」ボタンで計算結果表示画面に推移する。
//

import UIKit

class ViewController: UIViewController {
    
    // 金額フィールド(左)
    @IBOutlet weak var priceFieldLeft: UITextField!
    // 金額フィールド(右)
    @IBOutlet weak var priceFieldRight: UITextField!
    // 算術演算子フィールド
    @IBOutlet weak var arithmeticOperatorField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // フィールドをクリアする
        priceFieldLeft.text  = "0"
        priceFieldRight.text = "0"
        arithmeticOperatorField.text = ""
    }
    
    
    // 計算結果表示画面から戻ってきたときの処理
    @IBAction func restart(_ segue:UIStoryboardSegue){
        // フィールドをクリアする
        priceFieldLeft.text  = "0"
        priceFieldRight.text = "0"
        arithmeticOperatorField.text = ""
    }
    
    
    // 画面遷移時の処理
    override func prepare(for segue:UIStoryboardSegue,sender:Any?){
        // 次の画面を取り出す
        let viewController = segue.destination as! ResultViewController
        
        // 金額フィールド(左)の文字列を数値に変換する
        if let priceLeft = Int(priceFieldLeft.text!){
            // 数値に変換した金額を次の画面に設定する
            viewController.priceLeft = priceLeft
        }
        
        // 金額フィールド(右)の文字列を数値に変換する
        if let priceRight = Int(priceFieldRight.text!){
            // 数値に変換した金額を次の画面に設定する
            viewController.priceRight = priceRight
        }
        
        // 算術演算子フィールドの文字列を次の画面に設定する
        viewController.arithmeticOperator = arithmeticOperatorField.text!
    }
    
    
    //「＋」ボタンをタップした時の処理
    @IBAction func tapPlusButton(_ sender: Any) {
        // 算術演算子フィールドに「＋」を表示
        arithmeticOperatorField.text = "+"
    }
    
    
    // 「ー」ボタンをタップした時の処理
    @IBAction func tapMinusField(_ sender: Any) {
        // 算術演算子フィールドに「ー」を表示
        arithmeticOperatorField.text = "-"
    }
    
    
    //「×」ボタンをタップした時の処理
    @IBAction func tapMultiplyButton(_ sender: Any) {
        // 算術演算子フィールドに「×」を表示
        arithmeticOperatorField.text = "×"
    }
    
    //「÷」ボタンをタップした時の処理
    @IBAction func tapDivideButton(_ sender: Any) {
        // 算術演算子フィールドに「÷」を表示
        arithmeticOperatorField.text = "÷"
    }
    
    
    //「10%引きする」ボタンをタップした時の処理
    @IBAction func tapDiscountButton(_ sender: Any) {
        // 算術演算子フィールドに「10%引き」を表示
        arithmeticOperatorField.text = "10%引き"
    }
    
    
    //「1」ボタンをタップした時の処理
    @IBAction func tap1Button(_ sender: Any) {
        // 算術演算子フィールドに符号がなければ金額フィールド(左)に入力
        if arithmeticOperatorField.text == "" {
            // 金額表示フィールド(左)の文字列の末尾に「1」を追加
            let value:String = priceFieldLeft.text! + "1"
           
            // 整数型に変換することで先頭の0を削除する
            if let price = Int(value) {
                priceFieldLeft.text = "\(price)"
            }
        } else {
            // 金額表示フィールド(右)の文字列の末尾に「1」を追加
            let value:String = priceFieldRight.text! + "1"
            
            // 整数型に変換することで先頭の0を削除する
            if let price = Int(value) {
                priceFieldRight.text = "\(price)"
            }
        }
    }
    
    
    //「2」ボタンをタップした時の処理
    @IBAction func tap2Button(_ sender: Any) {
       // 算術演算子フィールドに符号がなければ金額フィールド(左)に入力
        if arithmeticOperatorField.text == "" {
            // 金額表示フィールド(左)の文字列の末尾に「2」を追加
            let value:String = priceFieldLeft.text! + "2"
           
            // 整数型に変換することで先頭の0を削除する
            if let price = Int(value) {
                priceFieldLeft.text = "\(price)"
            }
        } else {
            // 金額表示フィールド(右)の文字列の末尾に「2」を追加
            let value:String = priceFieldRight.text! + "2"
            
            // 整数型に変換することで先頭の0を削除する
            if let price = Int(value) {
                priceFieldRight.text = "\(price)"
            }
        }
    }
    
    
    //「3」ボタンをタップした時の処理
    @IBAction func tap3Button(_ sender: Any) {
        // 算術演算子フィールドに符号がなければ金額フィールド(左)に入力
        if arithmeticOperatorField.text == "" {
            // 金額表示フィールド(左)の文字列の末尾に「3」を追加
            let value:String = priceFieldLeft.text! + "3"
           
            // 整数型に変換することで先頭の0を削除する
            if let price = Int(value) {
                priceFieldLeft.text = "\(price)"
            }
        } else {
            // 金額表示フィールド(右)の文字列の末尾に「3」を追加
            let value:String = priceFieldRight.text! + "3"
            
            // 整数型に変換することで先頭の0を削除する
            if let price = Int(value) {
                priceFieldRight.text = "\(price)"
            }
        }
    }
    
    
    //「4」ボタンをタップした時の処理
    @IBAction func tap4Button(_ sender: Any) {
        // 算術演算子フィールドに符号がなければ金額フィールド(左)に入力
        if arithmeticOperatorField.text == "" {
            // 金額表示フィールド(左)の文字列の末尾に「4」を追加
            let value:String = priceFieldLeft.text! + "4"
           
            // 整数型に変換することで先頭の0を削除する
            if let price = Int(value) {
                priceFieldLeft.text = "\(price)"
            }
        } else {
            // 金額表示フィールド(右)の文字列の末尾に「4」を追加
            let value:String = priceFieldRight.text! + "4"
            
            // 整数型に変換することで先頭の0を削除する
            if let price = Int(value) {
                priceFieldRight.text = "\(price)"
            }
        }
    }
    
    
    //「5」ボタンをタップした時の処理
    @IBAction func tap5Button(_ sender: Any) {
        // 算術演算子フィールドに符号がなければ金額フィールド(左)に入力
        if arithmeticOperatorField.text == "" {
            // 金額表示フィールド(左)の文字列の末尾に「5」を追加
            let value:String = priceFieldLeft.text! + "5"
           
            // 整数型に変換することで先頭の0を削除する
            if let price = Int(value) {
                priceFieldLeft.text = "\(price)"
            }
        } else {
            // 金額表示フィールド(右)の文字列の末尾に「5」を追加
            let value:String = priceFieldRight.text! + "5"
            
            // 整数型に変換することで先頭の0を削除する
            if let price = Int(value) {
                priceFieldRight.text = "\(price)"
            }
        }
    }
    
    
    //「6」ボタンをタップした時の処理
    @IBAction func tap6Button(_ sender: Any) {
        // 算術演算子フィールドに符号がなければ金額フィールド(左)に入力
        if arithmeticOperatorField.text == "" {
            // 金額表示フィールド(左)の文字列の末尾に「6」を追加
            let value:String = priceFieldLeft.text! + "6"
           
            // 整数型に変換することで先頭の0を削除する
            if let price = Int(value) {
                priceFieldLeft.text = "\(price)"
            }
        } else {
            // 金額表示フィールド(右)の文字列の末尾に「6」を追加
            let value:String = priceFieldRight.text! + "6"
            
            // 整数型に変換することで先頭の0を削除する
            if let price = Int(value) {
                priceFieldRight.text = "\(price)"
            }
        }
    }
    
    
    //「7」ボタンをタップした時の処理
    @IBAction func tap7Button(_ sender: Any) {
        // 算術演算子フィールドに符号がなければ金額フィールド(左)に入力
        if arithmeticOperatorField.text == "" {
            // 金額表示フィールド(左)の文字列の末尾に「7」を追加
            let value:String = priceFieldLeft.text! + "7"
           
            // 整数型に変換することで先頭の0を削除する
            if let price = Int(value) {
                priceFieldLeft.text = "\(price)"
            }
        } else {
            // 金額表示フィールド(右)の文字列の末尾に「7」を追加
            let value:String = priceFieldRight.text! + "7"
            
            // 整数型に変換することで先頭の0を削除する
            if let price = Int(value) {
                priceFieldRight.text = "\(price)"
            }
        }
    }
    
    
    //「8」ボタンをタップした時の処理
    @IBAction func tap8Button(_ sender: Any) {
        // 算術演算子フィールドに符号がなければ金額フィールド(左)に入力
        if arithmeticOperatorField.text == "" {
            // 金額表示フィールド(左)の文字列の末尾に「8」を追加
            let value:String = priceFieldLeft.text! + "8"
           
            // 整数型に変換することで先頭の0を削除する
            if let price = Int(value) {
                priceFieldLeft.text = "\(price)"
            }
        } else {
            // 金額表示フィールド(右)の文字列の末尾に「8」を追加
            let value:String = priceFieldRight.text! + "8"
            
            // 整数型に変換することで先頭の0を削除する
            if let price = Int(value) {
                priceFieldRight.text = "\(price)"
            }
        }
    }
    
    
    //「9」ボタンをタップした時の処理
    @IBAction func tap9Button(_ sender: Any) {
        // 算術演算子フィールドに符号がなければ金額フィールド(左)に入力
        if arithmeticOperatorField.text == "" {
            // 金額表示フィールド(左)の文字列の末尾に「9」を追加
            let value:String = priceFieldLeft.text! + "9"
           
            // 整数型に変換することで先頭の0を削除する
            if let price = Int(value) {
                priceFieldLeft.text = "\(price)"
            }
        } else {
            // 金額表示フィールド(右)の文字列の末尾に「9」を追加
            let value:String = priceFieldRight.text! + "9"
            
            // 整数型に変換することで先頭の0を削除する
            if let price = Int(value) {
                priceFieldRight.text = "\(price)"
            }
        }
    }
    
    
    //「00」ボタンをタップした時の処理
    @IBAction func tap00Button(_ sender: Any) {
        // 算術演算子フィールドに符号がなければ金額フィールド(左)に入力
        if arithmeticOperatorField.text == "" {
            // 金額表示フィールド(左)の文字列の末尾に「00」を追加
            let value:String = priceFieldLeft.text! + "00"
           
            // 整数型に変換することで先頭の0を削除する
            if let price = Int(value) {
                priceFieldLeft.text = "\(price)"
            }
        } else {
            // 金額表示フィールド(右)の文字列の末尾に「00」を追加
            let value:String = priceFieldRight.text! + "00"
            
            // 整数型に変換することで先頭の0を削除する
            if let price = Int(value) {
                priceFieldRight.text = "\(price)"
            }
        }
    }
    
    
    //「0」ボタンをタップした時の処理
    @IBAction func tap0Button(_ sender: Any) {
        // 算術演算子フィールドに符号がなければ金額フィールド(左)に入力
        if arithmeticOperatorField.text == "" {
            // 金額表示フィールド(左)の文字列の末尾に「0」を追加
            let value:String = priceFieldLeft.text! + "0"
           
            // 整数型に変換することで先頭の0を削除する
            if let price = Int(value) {
                priceFieldLeft.text = "\(price)"
            }
        } else {
            // 金額表示フィールド(右)の文字列の末尾に「0」を追加
            let value:String = priceFieldRight.text! + "0"
            
            // 整数型に変換することで先頭の0を削除する
            if let price = Int(value) {
                priceFieldRight.text = "\(price)"
            }
        }
    }
    
    
    //「C」ボタンをタップした時の処理
    @IBAction func tapClearButton(_ sender: Any) {
        // 算術演算子フィールドに符号がなければ金額フィールド(左)をクリア
        if arithmeticOperatorField.text == "" {
            priceFieldLeft.text! = "0"
        } else if priceFieldRight.text! == "0" {
            // 金額フィールド(右)が0なら算術演算子フィールドをクリア
            arithmeticOperatorField.text = ""
        } else {
            // 算術演算子フィールドに符号があり、金額表示フィールド(右)が0以外なら金額表示フィールド(右)をクリア
            priceFieldRight.text! = "0"
        }
    }
    

}

