//
//  GeneratorViewController.swift
//  Hashtag
//
//  Created by Vivek Patel on 29/07/24.
//

import UIKit

class GeneratorViewController: UIViewController {
    
    @IBOutlet weak var txtSearchField: UITextField!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblPay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    @IBAction func actionSearch(_ sender: Any) {
    }
    private func setUI() {
        lblDescription.font = UIFont.Arimo.regular.size(16)
        txtSearchField.font = UIFont.Arimo.regular.size(13)
        lblPay.font = UIFont.Arimo.regular.size(16)
    }
}
