//
//  ViewController.swift
//  BMI-index
//
//  Created by Hadi Mortaja on 05/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var massTF: UITextField!
    
    @IBOutlet weak var heightTf: UITextField!
    
   
    @IBOutlet weak var resultLab: UILabel!
    
    @IBOutlet weak var mView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mView.setRoundedCorner(cornerRaduis: 20)
       
    }
    
    @IBAction func calculateBtnPressed(_ sender: Any) {
        print("Hello")
        guard let mass = massTF.text, let massVal = Double(mass) else{//if(mass!=null){}
            resultLab.text = "Empty"
            return
        }
        resultLab.text = String(format: "%.2f", massVal)
        print(mass)

    }
    
   
    }
extension UIView{
    func setRoundedCorner (cornerRaduis:CGFloat){
        self.layer.cornerRadius = cornerRaduis
        self.layer.masksToBounds = true        }


}

