//
//  ViewController.swift
//  jannkenn
//
//  Created by 服部翼 on 2019/03/29.
//  Copyright © 2019 服部翼. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var kotae = 0
    
    let x = 0
    let y = 1
    let z = 2
    
    var count = 0
    var win = 0
    var lose = 0

    
    
    @IBOutlet var gu: UIButton!
    @IBOutlet var tyoki: UIButton!
    @IBOutlet var paa: UIButton!
    
    @IBOutlet var label: UILabel!
    @IBOutlet var battle_count: UILabel!
    @IBOutlet var win_count: UILabel!
    @IBOutlet var lose_count: UILabel!
    
    
    //あいこの場合は続ける、勝つもしくは負けた場合はボタンを無効にする
    @IBAction func gu_1(_ sender: Any) {
        if kotae == x {
            label.text = "あいこで"
            kotae = Int(arc4random_uniform(3))
        } else if kotae == y  {
            label.text = "勝利！！"
            gu.isEnabled = false
            tyoki.isEnabled = false
            paa.isEnabled = false
            win = win + 1
            win_count.text = "総勝利数:\(win)勝"
        } else if kotae == z {
            label.text = "負け"
            gu.isEnabled = false
            tyoki.isEnabled = false
            paa.isEnabled = false
            lose = lose + 1
            lose_count.text = "総敗北数:\(lose)敗"
            
        }
    }
    
    @IBAction func tyoki_2(_ sender: Any) {
        if kotae == y {
            label.text = "あいこで"
            kotae = Int(arc4random_uniform(3))
        } else if kotae == z  {
            label.text = "勝利！！"
            gu.isEnabled = false
            tyoki.isEnabled = false
            paa.isEnabled = false
            win = win + 1
            win_count.text = "総勝利数:\(win)勝"
        } else if kotae == x {
            label.text = "負け"
            gu.isEnabled = false
            tyoki.isEnabled = false
            paa.isEnabled = false
            lose = lose + 1
            lose_count.text = "総敗北数:\(lose)敗"
            
        }
    }
    
    @IBAction func paa_3(_ sender: Any) {
        if kotae == z {
            label.text = "あいこで"
            kotae = Int(arc4random_uniform(3))
        } else if kotae == x {
            label.text = "勝利！！"
            gu.isEnabled = false
            tyoki.isEnabled = false
            paa.isEnabled = false
            win = win + 1
            win_count.text = "総勝利数:\(win)勝"
        } else if kotae == y {
            label.text = "負け"
            gu.isEnabled = false
            tyoki.isEnabled = false
            paa.isEnabled = false
            lose = lose + 1
            lose_count.text = "総敗北数:\(lose)敗"
            
        }
    }
    @IBAction func strat_button(_ sender: Any) {
        label.text = "最初はグー、ジャンケン"
        
        //startボタンを押すとボタンが有効になる
        gu.isEnabled = true
        tyoki.isEnabled = true
        paa.isEnabled = true
        kotae = Int(arc4random_uniform(3))
        
        count = count + 1
        battle_count.text = "総試合数:\(count)戦"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //ボタンの色設定
        //gu.backgroundColor = UIColor.red
        //tyoki.backgroundColor = UIColor.yellow
        //paa.backgroundColor = UIColor.blue
        
        
        //ボタンの角設定
        //gu.layer.cornerRadius = 8.0
        //tyoki.layer.cornerRadius = 8.0
        //paa.layer.cornerRadius = 8.0
        
        
        //startボタンを押すまではボタンを無効にする
        gu.isEnabled = false
        tyoki.isEnabled = false
        paa.isEnabled = false
        
        
        
        
        //ラベルの設定
        label.text = "準備はいい？"
        label.textAlignment = NSTextAlignment.center
        label.backgroundColor = UIColor(red: 0.9, green: 0.1, blue: 0.7, alpha: 1.0)
        label.textColor = UIColor.white
        label.layer.cornerRadius = 7.0
        label.clipsToBounds = true
        
        battle_count.text = "総試合数:\(count)戦"
        win_count.text = "総勝利数:\(win)勝"
        lose_count.text = "総敗北数:\(lose)敗"
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

