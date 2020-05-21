//
//  ViewController.swift
//  001 MyCalc
//
//  Created by Takatoshi Miura on 2020/05/17.
//  Copyright © 2020 Takatoshi Miura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var priceField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    // 計算結果表示画面から戻ってきたときの処理
    @IBAction func restart(_ segue:UIStoryboardSegue){
        //金額フィールドを0でクリアする
        priceField.text = "0"
    }
    
    
    //画面遷移時の処理
    override func prepare(for segue:UIStoryboardSegue,sender:Any?){
        //次の画面を取り出す
        let viewController = segue.destination as! ResultViewController
        
        //金額フィールドの文字列を数値に変換する
        if let price = Int(priceField.text!){
            //数値に変換した金額を次の画面に設定する
            viewController.price = price
        }
    }
    
    
    //「1」ボタンをタップした時の処理
    @IBAction func tap1Button(_ sender: Any) {
        // 金額表示フィールドの文字列の末尾に「1」を追加
        let value:String = priceField.text! + "1"
        
        // 整数型に変換することで先頭の0を削除する
        if let price = Int(value) {
            priceField.text = "\(price)"
        }
    }
    
    
    //「2」ボタンをタップした時の処理
    @IBAction func tap2Button(_ sender: Any) {
        // 金額表示フィールドの文字列の末尾に「2」を追加
        let value:String = priceField.text! + "2"
        
        // 整数型に変換することで先頭の0を削除する
        if let price = Int(value) {
            priceField.text = "\(price)"
        }
    }
    
    
    //「3」ボタンをタップした時の処理
    @IBAction func tap3Button(_ sender: Any) {
        // 金額表示フィールドの文字列の末尾に「3」を追加
        let value:String = priceField.text! + "3"
        
        // 整数型に変換することで先頭の0を削除する
        if let price = Int(value) {
            priceField.text = "\(price)"
        }
    }
    
    
    //「4」ボタンをタップした時の処理
    @IBAction func tap4Button(_ sender: Any) {
        // 金額表示フィールドの文字列の末尾に「4」を追加
        let value:String = priceField.text! + "4"
        
        // 整数型に変換することで先頭の0を削除する
        if let price = Int(value) {
            priceField.text = "\(price)"
        }
    }
    
    
    //「5」ボタンをタップした時の処理
    @IBAction func tap5Button(_ sender: Any) {
        // 金額表示フィールドの文字列の末尾に「5」を追加
        let value:String = priceField.text! + "5"
        
        // 整数型に変換することで先頭の0を削除する
        if let price = Int(value) {
            priceField.text = "\(price)"
        }
    }
    
    
    //「6」ボタンをタップした時の処理
    @IBAction func tap6Button(_ sender: Any) {
        // 金額表示フィールドの文字列の末尾に「6」を追加
        let value:String = priceField.text! + "6"
        
        // 整数型に変換することで先頭の0を削除する
        if let price = Int(value) {
            priceField.text = "\(price)"
        }
    }
    
    
    //「7」ボタンをタップした時の処理
    @IBAction func tap7Button(_ sender: Any) {
        // 金額表示フィールドの文字列の末尾に「7」を追加
        let value:String = priceField.text! + "7"
        
        // 整数型に変換することで先頭の0を削除する
        if let price = Int(value) {
            priceField.text = "\(price)"
        }
    }
    
    
    //「8」ボタンをタップした時の処理
    @IBAction func tap8Button(_ sender: Any) {
        // 金額表示フィールドの文字列の末尾に「8」を追加
        let value:String = priceField.text! + "8"
        
        // 整数型に変換することで先頭の0を削除する
        if let price = Int(value) {
            priceField.text = "\(price)"
        }
    }
    
    
    //「9」ボタンをタップした時の処理
    @IBAction func tap9Button(_ sender: Any) {
        // 金額表示フィールドの文字列の末尾に「9」を追加
        let value:String = priceField.text! + "9"
        
        // 整数型に変換することで先頭の0を削除する
        if let price = Int(value) {
            priceField.text = "\(price)"
        }
    }
    
    
    //「00」ボタンをタップした時の処理
    @IBAction func tap00Button(_ sender: Any) {
        // 金額表示フィールドの文字列の末尾に「00」を追加
        let value:String = priceField.text! + "00"
        
        // 整数型に変換することで先頭の0を削除する
        if let price = Int(value) {
            priceField.text = "\(price)"
        }
    }
    
    
    //「C」ボタンをタップした時の処理
    @IBAction func tapClearButton(_ sender: Any) {
        // 金額表示フィールドに0を表示
        priceField.text = "0"
    }
    

}

