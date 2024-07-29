//
//  AllTagsViewController.swift
//  Hashtag
//
//  Created by Vivek Patel on 27/07/24.
//

import UIKit

class AllTagsViewController: UIViewController {

    @IBOutlet weak var txtView: UITextView!
    @IBOutlet weak var btnCopy: UIButton!
    var navTitle: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    @IBAction func actionCopy(_ sender: Any) {
        print("Copy")
    }
    private func setUI() {
        self.title = navTitle
        let text = txtView.text ?? ""
        let attributedString = NSMutableAttributedString(string: text)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 5
        attributedString.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, attributedString.length))
        txtView.attributedText = attributedString
        txtView.font = UIFont.Sarabun.regular.size(16)
        txtView.textColor = .white
        btnCopy.titleLabel?.font = UIFont.Arimo.arimoBold.size(18)
        addBackButton()
    }
    private func addBackButton() {
        let backButton = UIButton(type: .system)
        backButton.setImage(UIImage(named: "BackButtonIcon"), for: .normal)
        backButton.setTitle("  History", for: .normal)
        backButton.sizeToFit()
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        let backBarButtonItem = UIBarButtonItem(customView: backButton)
        self.navigationItem.leftBarButtonItem = backBarButtonItem
    }
    @objc func backButtonTapped() {
        self.navigationController?.popViewController(animated: true)
    }
}
