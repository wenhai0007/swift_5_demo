//
//  ViewController.swift
//  swift_5_demo
//
//  Created by wenhai on 3/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let label = UILabel(frame: CGRect(x:20,y:320,width:200,height: 300))
        label.text = "普通标签普通标签普通标签普通标签普通标签普通标签普通标签普通标签普通标签普通标签普通标签普通标签普通标签普通标签普通标签普通标签普通标签普通标签普通标签普通标签普通标签"
        self.view.addSubview(label)
        
        let label2 = UILabel(frame: CGRect(x:2,y:300, width:200, height:800))
        label2.text = "第二个标签"
        label2.font = UIFont.boldSystemFont(ofSize: 50)
        label2.textColor = UIColor.red
        label2.shadowColor  = UIColor.green
        label2.shadowOffset = CGSize(width: 2, height: 2)
        label2.textAlignment = NSTextAlignment.center
        self.view.addSubview(label2)
        
        let label3 = UILabel(frame: CGRect(x:2,y:3, width:100, height:200))
        label3.numberOfLines = 2
        let attri = NSMutableAttributedString(string: "我是adf个性化文本")
        attri.addAttributes([NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 20),NSAttributedString.Key.foregroundColor:UIColor.red], range: NSRange(location: 0, length: 2))
        attri.addAttributes([NSAttributedString.Key.font:UIFont.systemFont(ofSize: 13),NSAttributedString.Key.foregroundColor:UIColor.blue], range: NSRange(location: 1, length: 4))
        label3.attributedText = attri
        self.view.addSubview(label3)
        
        let button1 = UIButton(type: UIButton.ButtonType.system)
        button1.frame = CGRect(x: 120, y: 50, width: 50, height: 50)
        button1.backgroundColor = UIColor.purple
        button1.setTitleColor(UIColor.white, for: .highlighted)
        button1.setTitle("点我", for: .normal)
        self.view.addSubview(button1)
        
        button1.addTarget(self, action: #selector(touchBegin), for: UIControl.Event.touchUpInside)
        
    }

    @objc func touchBegin(){
        print("用户点击了按钮")
    }
}

