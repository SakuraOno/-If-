//
//  ViewController.swift
//  ３、配列、If、クラス
//
//  Created by 小野　櫻 on 2018/06/05.
//  Copyright © 2018年 小野　櫻. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var monstername: UILabel!
    
    var monster: [Monster] = []
    var number: Int = 0
    
    //nextを押すと画像と名前を管理している配列の数が共に１進む、２以上になると０に戻る
    @IBAction func next(_ sender: Any) {
        number += 1
        if number > 2 {
            number = 0
        }
        monstername.text = monster[number].name
        imageView.image = monster[number].image
    }
    
    //backを押すと画像と名前を管理している配列の数が共に１戻る、０以下になると２に進む
    @IBAction func back(_ sender: Any) {
        number -= 1
        if number < 0 {
            number = 2
        }
        monstername.text = monster[number].name
        imageView.image = monster[number].image
    }
    
    func displayImage() {
        let imageNameArray = ["monster.jpg", "monster1.jpg", "monster2.jpg"]
        let name = imageNameArray[number]
        let image = UIImage(named: name)
        imageView.image = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //pngとjpgの違いでかなり時間をとった
        let monster1 = Monster(image: UIImage(named: "monster.jpg")!, name: "ウーパールーパー")
        let monster2 = Monster(image: UIImage(named: "monster1.jpg")!, name: "ガンダム")
        let monster3 = Monster(image: UIImage(named: "monster2.jpg")!, name: "スフィンクス")
        
        monster = [monster1, monster2, monster3]
        
        //最初に表示する画像について
        let image = UIImage(named: "monster.jpg")
        monstername.text = monster1.name
        imageView.image = image
    }
    
    //Swiftは別ファイルを作らなくても大丈夫らしい　http://tea-leaves.jp/swift/content/クラス
    
    class Monster {
        var name: String
        var image: UIImage
        
        init(image: UIImage, name: String) {
            self.name = name
            self.image = image
        }
    }
}
