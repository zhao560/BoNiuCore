//
//  MyOneViewController.swift
//  WDUTMDemo
//
//  Created by GeorgeZJ on 2020/11/6.
//  Copyright © 2020 GeorgeZJ. All rights reserved.
//

import UIKit
import WDUTMSDK
import SDWebImage

class MyOneViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "导航栏按钮上报", style: .plain, target: self, action: #selector(onClickButton))
        
        let btn1 = UIButton(frame: CGRect(x: 50, y: 100, width: 250, height: 30))
        btn1.setTitleColor(.red, for: .normal)
        btn1.setTitle("按钮点击触发上报", for: .normal)
        btn1.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
        self.view.addSubview(btn1)
        
        let btn2 = UIButton(frame: CGRect(x: 50, y: 150, width: 250, height: 30))
        btn2.setTitleColor(.red, for: .normal)
        btn2.setTitle("无事件按钮点击不上报", for: .normal)
        self.view.addSubview(btn2)
        
        let label = UILabel(frame: CGRect(x: 50, y: 200, width: 250, height: 30))
        label.textAlignment = .center
        label.text = "添加点击手势的视图上报"
        label.isUserInteractionEnabled = true
        label.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onClickButton)))
        self.view.addSubview(label)
        
        let labe2 = UILabel(frame: CGRect(x: 50, y: 250, width: 250, height: 30))
        labe2.textAlignment = .center
        labe2.utm_name = "我是自定义名称"
        labe2.text = "自定义名称"
        labe2.isUserInteractionEnabled = true
        labe2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onClickButton)))
        self.view.addSubview(labe2)
        
        let labe3 = UILabel(frame: CGRect(x: 50, y: 300, width: 250, height: 30))
        labe3.textAlignment = .center
        labe3.text = "页面跳转"
        labe3.isUserInteractionEnabled = true
        labe3.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(gotoPageTwo)))
        self.view.addSubview(labe3)
        
        let labe4 = UILabel(frame: CGRect(x: 50, y: 350, width: 250, height: 30))
        labe4.textAlignment = .center
        labe4.text = "设置自定义页面标识"
        labe4.isUserInteractionEnabled = true
        labe4.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(gotoPageThree)))
        self.view.addSubview(labe4)
    }

    @objc func onClickButton() {
    }
    
    @objc func gotoPageTwo() {
        let vc = UIViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func gotoPageThree() {
        let vc = UIViewController()
        vc.utm_name = "MyCustomPageId" //这里也可以中文，不过在utm中会被utf8编码，不容易在日志中查看
        self.navigationController?.pushViewController(vc, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
