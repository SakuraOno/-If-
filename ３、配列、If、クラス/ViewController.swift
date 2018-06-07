//
//  ViewController.swift
//  ３、配列、If、クラス
//
//  Created by 小野　櫻 on 2018/06/05.
//  Copyright © 2018年 小野　櫻. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var imagenumber = 0
    var namenumber = 0
    
    let mosterArray = [UIImage(named:"ウーパールーパー.jpg")!,UIImage(named:"ガンダム.jpg")!,UIImage(named:"スフィンクス.jpg")!,]
    let wordArray = ["ウーパールーパー", "ガンダム","スフィンクス"]
    
    //nextを押すと画像と名前を管理いている配列の数が共に１進む
    @IBAction func next(_ sender: Any) {
       
        imagenumber += 1
        displayimage()
        
        namenumber += 1
        displayname()
    }
    
    //backを押すと画像と名前を管理いている配列の数が共に１戻る
    @IBAction func back(_ sender: Any) {
        
        imagenumber -= 1
        displayimage()
        
        namenumber -= 1
        displayname()
    }
    
    //画像について
    func displayimage(){
        
    //０より下がったら２に戻る
        if imagenumber < 0 {
            imagenumber = 2
        }
    //２を超したら０に戻る
        if imagenumber > 2 {
            imagenumber = 0
        }
        
        image.image = mosterArray[imagenumber]
        
    }
    //名前について
    func displayname(){
       
    //０より下がったら２に戻る
        if namenumber < 0 {
            namenumber = 2
        }
    //２を超したら０に戻る
        if namenumber > 2 {
            namenumber = 0
        }
        
        label.text = wordArray[namenumber]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //最初に表示する画像に関して
        let monster = UIImage(named:"ウーパールーパー.jpg")
        image.image = monster
        
        let name = "ウーパールーパー"
        label.text = name
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
