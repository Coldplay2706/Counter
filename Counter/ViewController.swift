//
//  ViewController.swift
//  Counter
//
//  Created by Денис Левицкий on 19.04.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counter: UILabel!
    
    @IBOutlet weak var logView: UITextView!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    
    private var countNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        counter.text = "Значеник счетчика : \(countNumber)"
        buttonPlus.tintColor = .red
        resetButton.tintColor = .green
        logView.text = "История изменений"
    }
    @IBAction func buttonCounter(_ sender: Any) {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        let time = formatter.string(from: date)
        countNumber += 1
        counter.text = "Значение счетчика : \(countNumber)"
        logView.text += "\n Значение изменено на +1 : "  + time
    }
    
    @IBAction  func buttonMinus(_ sender: Any) {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        let time = formatter.string(from: date)
        if countNumber > 0 {
            countNumber -= 1
            logView.text += "\n Значение изменено на -1 :" + time
        } else if countNumber == 0 {
            logView.text += "\n Попытка уменьшить значение счетчика ниже 0 :" + time
        }
        counter.text = "Значение счетчика : \(countNumber)"
        
    }
    
    @IBAction func resetButton(_ sender: Any) {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        let time = formatter.string(from: date)
        countNumber = 0
        counter.text = "Значение счетчика : \(countNumber)"
        logView.text += "\n Значение сброшено : " + time
    }
}
