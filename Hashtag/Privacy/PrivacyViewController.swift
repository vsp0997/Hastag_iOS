//
//  PrivacyViewController.swift
//  Hashtag
//
//  Created by Vivek Patel on 26/07/24.
//

import UIKit

class PrivacyViewController: UIViewController {
    @IBOutlet weak var txtView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Privacy Policy"
        txtView.font = UIFont.Arimo.regular.size(16)
        /*
        let yourBackImage = UIImage(named: "BackButtonIcon")
        self.navigationController?.navigationBar.backIndicatorImage = yourBackImage
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = yourBackImage
        self.navigationController?.navigationBar.backItem?.title = "Settings"
        */
        setUI()
    }
    private func setUI() {
        let backButton = UIButton(type: .system)
        backButton.setImage(UIImage(named: "BackButtonIcon"), for: .normal)
        backButton.setTitle("  Settings", for: .normal)
        backButton.sizeToFit()
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        let backBarButtonItem = UIBarButtonItem(customView: backButton)
        self.navigationItem.leftBarButtonItem = backBarButtonItem
    }
    @objc func backButtonTapped() {
        self.navigationController?.popViewController(animated: true)
    }
}
