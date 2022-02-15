//
//  ViewController.swift
//  shoppingApp
//
//  Created by Ting on 2021/8/22.
//

import UIKit


class ViewController: UIViewController {

    //數量
    @IBOutlet weak var CatusQtyTextField: UILabel!
    @IBOutlet weak var SnackQtyTextField: UILabel!
    @IBOutlet weak var FigQtyTextField: UILabel!
    @IBOutlet weak var SucculentQtyTextField: UILabel!
    @IBOutlet weak var AnthuQtyTextField: UILabel!
    @IBOutlet weak var AglaoQtyTextField: UILabel!
    
    //價格
    @IBOutlet weak var CatusPriceTextField: UILabel!
    @IBOutlet weak var SnackPriceTextField: UILabel!
    @IBOutlet weak var FigPriceTextField: UILabel!
    @IBOutlet weak var SucculentPriceTextField: UILabel!
    @IBOutlet weak var AnthuPriceTextField: UILabel!
    @IBOutlet weak var AglaoPriceTextField: UILabel!
    
    //Stepper
    @IBOutlet weak var CatusStepper: UIStepper!
    @IBOutlet weak var SnackStepper: UIStepper!
    @IBOutlet weak var FigStepper: UIStepper!
    @IBOutlet weak var SucculentStepper: UIStepper!
    @IBOutlet weak var AnthuStepper: UIStepper!
    @IBOutlet weak var AglaoStepper: UIStepper!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    //建立儲存數量的變數
    var itemCatus:Int = 0
    var itemSnack:Int = 0
    var itemFig:Int = 0
    var itemSucculent:Int = 0
    var itemAnthu:Int = 0
    var itemAglao:Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //設定顯示價格
        CatusPriceTextField.text = "99"
        SnackPriceTextField.text = "999"
        FigPriceTextField.text = "1299"
        SucculentPriceTextField.text = "599"
        AnthuPriceTextField.text = "880"
        AglaoPriceTextField.text = "499"
    }
    
    //將 Stepper 上的數值傳入 QtyTextField 裡
    @IBAction func changeQty(_ sender: UIStepper) {
        itemCatus = Int(CatusStepper.value)
        itemSnack = Int(SnackStepper.value)
        itemFig = Int(FigStepper.value)
        itemSucculent = Int(SucculentStepper.value)
        itemAnthu = Int(AnthuStepper.value)
        itemAglao = Int(AglaoStepper.value)
        
        CatusQtyTextField.text = String(itemCatus)
        SnackQtyTextField.text = String(itemSnack)
        FigQtyTextField.text = String(itemFig)
        SucculentQtyTextField.text = String(itemSucculent)
        AnthuQtyTextField.text = String(itemAnthu)
        AglaoQtyTextField.text = String(itemAglao)
        
        calculate()
    }
  
    //清除購物車 將數值歸零
    @IBAction func clearAll(_ sender: UIButton) {
        CatusStepper.value = 0
        SnackStepper.value = 0
        FigStepper.value = 0
        SucculentStepper.value = 0
        AnthuStepper.value = 0
        AglaoStepper.value = 0
        
        CatusQtyTextField.text = "0"
        SnackQtyTextField.text = "0"
        FigQtyTextField.text = "0"
        SucculentQtyTextField.text = "0"
        AnthuQtyTextField.text = "0"
        AglaoQtyTextField.text = "0"
        
        totalLabel.text = "0"
    }
    
    //計算公式
    func calculate(){
        //字串轉數字
        let CatusPrice = Int(CatusPriceTextField.text!)!
        let SnackPrice = Int(SnackPriceTextField.text!)!
        let FigPrice = Int(FigPriceTextField.text!)!
        let SucculentPrice = Int(SucculentPriceTextField.text!)!
        let AnthuPrice = Int(AnthuPriceTextField.text!)!
        let AglaoPrice = Int(AglaoPriceTextField.text!)!
        
        //統計 金額x數量
        let sum = CatusPrice * Int(itemCatus) + SnackPrice * Int(itemSnack) + FigPrice * Int(itemFig) + SucculentPrice * Int(itemSucculent) + AnthuPrice * Int(itemAnthu) + AglaoPrice * Int(itemAglao)
       
        totalLabel.text = "\(sum)"
        
    }
    
}

