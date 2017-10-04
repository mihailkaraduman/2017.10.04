//
//  ViewController.swift
//  2017.10.04
//
//  Created by ST6 on 4.10.2017.
//  Copyright © 2017 kugim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var second = 0
    var timer = Timer()

    @IBOutlet weak var countDownLbl: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var stepperOutlet: UIStepper!
    @IBOutlet weak var actionViewOutlet: UIView!
    @IBAction func stepperAction(_ sender: UIStepper) {
        countDownLbl.text! = String(Int(sender.value))
        print(sender.value)

    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("ekrana dokundun")
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(ViewController.timerFunc)), userInfo: nil, repeats: true)
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("ekrandan elini çektin")
    }
    
    func timerFunc (){
    print("çalışıyor")
        if second <= 0 {
            timer.invalidate()
            second = 0
            return
            
        }
        second -= 1
        print(second)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
                progressBar.progress = 0.0
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

