//
//  ViewController.swift
//  janken
//
//  Created by 手塚晋之介 on 2021/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    // UIImage のインスタンスを設定
    let image0 = UIImage(named:"face")!
    let image1 = UIImage(named:"gu")!
    let image2 = UIImage(named:"choki")!
    let image3 = UIImage(named:"pa")!
    let image4 = UIImage(named:"b_gu")!
    let image5 = UIImage(named:"b_choki")!
    let image6 = UIImage(named:"b_pa")!
    
    //labelを定義
    let label = UILabel()
        
    // 画面の横幅を取得//小数
    var screenWidth:CGFloat = 0
    var screenHeight:CGFloat = 0
        
    // UIButton のインスタンスを生成
    let button = UIButton()
    let button_gu = UIButton()
    let button_choki = UIButton()
    let button_pa = UIButton()
    //数字を定義するときはvar
    var count = 0
       
    
    override func viewDidLoad() {
    super.viewDidLoad()
            
    // 画面の横幅を取得
    screenWidth = view.frame.size.width
    screenHeight = view.frame.size.height
        
    //labelの位置とサイズの設定
    label.frame = CGRect(x:screenHeight/3-screenWidth/3, y:screenHeight/200,
            width:screenWidth/2, height:screenWidth/2)
    //labelの文字を設定
    label.text = "ジャンケン勝負！！！"
    // 文字を中央にalignする
    label.textAlignment = NSTextAlignment.center
    // ラベルのフォントサイズ
    label.font = UIFont.systemFont(ofSize: 20)
            
    //Buttonの位置とサイズの設定
    button.frame = CGRect(x:screenHeight/3-screenWidth/3, y:screenHeight/3-screenWidth/6,
        width:screenWidth/2, height:screenWidth/2)
    button_gu.frame = CGRect(x:screenWidth/2-screenHeight/4, y:screenHeight-screenWidth/3,
                width:screenWidth/4, height:screenWidth/4)
    button_choki.frame = CGRect(x:screenWidth/2-screenHeight/16, y:screenHeight-screenWidth/3,
            width:screenWidth/4, height:screenWidth/4)
    button_pa.frame = CGRect(x:screenWidth-screenHeight/6, y:screenHeight-screenWidth/3,
            width:screenWidth/4, height:screenWidth/4)
            
    // 画像を設定
    button.setImage(image0, for: .normal)
    button_gu.setImage(image4, for: .normal)
    button_choki.setImage(image5, for: .normal)
    button_pa.setImage(image6, for: .normal)
            
    // Aspect Fit
    button.imageView?.contentMode = .scaleAspectFit
    // Horizontal 拡大
    button.contentHorizontalAlignment = .fill
    // Vertical 拡大
    button.contentVerticalAlignment = .fill
    
    // Viewにラベルを追加
    self.view.addSubview(label)
        
    // ViewにButtonを追加
    self.view.addSubview(button)
    self.view.addSubview(button_gu)
    self.view.addSubview(button_choki)
    self.view.addSubview(button_pa)
            
    // タップされたときのactionをセット
    button.addTarget(self, action: #selector(ViewController.buttonTapped( sender:)),for: .touchUpInside)
    button_gu.addTarget(self, action: #selector(ViewController.buttonTapped( sender:)),for: .touchUpInside)
    button_choki.addTarget(self, action: #selector(ViewController.buttonTapped( sender:)),for: .touchUpInside)
    button_pa.addTarget(self, action: #selector(ViewController.buttonTapped( sender:)),for: .touchUpInside)
            
    // 背景色を設定
    self.view.backgroundColor = UIColor(displayP3Red: 0.86,green: 1.0, blue: 0.95, alpha: 1.0)
            
    }
    
    // タップ時のaction
    @objc func buttonTapped(sender : Any) {
    count += 1
            
    if(count%3 == 0){
        button.setImage(image1, for: .normal)
    }else if(count%3 == 1){
        button.setImage(image2, for: .normal)
        
    }else if(count%3 == 2){
        button.setImage(image3, for: .normal)
        
    }else{
        
    }
        
    }
            
}

