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
        txtSearchField.delegate = self
        setUI()
        if let placeholder = txtSearchField.placeholder {
            txtSearchField.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.appTextPlaceholder])
        }
    }
    @IBAction func actionSearch(_ sender: Any) {
        let alertController = UIAlertController(title: "Choose an option", message: "", preferredStyle: .actionSheet)
        let action1 = UIAlertAction(title: "Open Gallery", style: .default) { (action) in
            print("Option 1 selected")
        }
        
        let action2 = UIAlertAction(title: "Start Camera", style: .default) { (action) in
            print("Option 2 selected")
        }
        
        let cancelAction = UIAlertAction(title: "Done", style: .cancel) { (action) in
            print("Done")
        }
        alertController.addAction(action1)
        alertController.addAction(action2)
        alertController.addAction(cancelAction)
        
        if let popoverController = alertController.popoverPresentationController, let sourceView = sender as? UIView {
            popoverController.sourceView = sourceView
            popoverController.sourceRect = sourceView.bounds
            popoverController.permittedArrowDirections = .any
        }
        present(alertController, animated: true, completion: nil)
    }
    private func setUI() {
        lblDescription.font = UIFont.Arimo.regular.size(16)
        txtSearchField.font = UIFont.Arimo.regular.size(13)
        lblPay.font = UIFont.Arimo.regular.size(16)
    }
}
extension GeneratorViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
