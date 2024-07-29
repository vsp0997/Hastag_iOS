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
        txtView.font = UIFont.Arimo.regular.size(16)
    }
}
