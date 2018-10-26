//
//  listAddViewController.swift
//  listApp
//
//  Created by 小芝亮太 on 2018/10/23.
//  Copyright © 2018 小芝亮太. All rights reserved.
//

import UIKit

var textFieldString: [String] = []

class listAddViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var AddText: UITextField!
    
    @IBAction func AddButton(_ sender: Any) {
        // AddTextから文字を取得
        textFieldString.append(AddText.text!)
        // AddTextの中身をクリア
        AddText.text = ""
        
        UserDefaults.standard.set( textFieldString, forKey: "TodoList" )
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    /*
    //prepare = 画面が切り替わるときに呼び出されるメソッド.値も一緒に渡せるらしい？
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let lvc = segue.destination as! listViewController
        lvc.Memo1 = textFieldString
    }
    */
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
