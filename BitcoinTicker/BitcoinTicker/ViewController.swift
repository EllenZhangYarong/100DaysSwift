//
//  ViewController.swift
//  BitcoinTicker
//
//  Created by 张亚荣 on 2018/8/19.
//  Copyright © 2018年 EllenAndAngel. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var arrayCurrency = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    let baseURL = "https://apiv2.bitcoinaverage.com/indices/global/ticker/BTC"
    var finalURL = ""
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayCurrency.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayCurrency[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(arrayCurrency[row])
        finalURL = baseURL + arrayCurrency[row]
        print(finalURL)
        fetchBitcoinPrice(url: finalURL)
    }
    

    @IBOutlet weak var lblBitcoinPrice: UILabel!
    @IBOutlet weak var pickerCurrency: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerCurrency.dataSource = self
        pickerCurrency.delegate = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func fetchBitcoinPrice(url: String) {
        Alamofire.request(url, method: .get).responseJSON { (response) in
            if response.result.isSuccess{
                print("Price get success!")
                let priceJSON: JSON = JSON(response.result.value!)
//                print(priceJSON)
                self.updateBitcoinPrice(json:priceJSON)
            }else{
                print("Error:\(String(describing: response.result.error))")
                self.lblBitcoinPrice.text = "Connection Issures"
            }
            
        }
    }
    
    func updateBitcoinPrice(json: JSON) {
        if let priceResult = json["averages"]["day"].double{
            self.lblBitcoinPrice.text = String(priceResult)
        }else{
            self.lblBitcoinPrice.text = "Price unavailable!"
        }
    }

}

