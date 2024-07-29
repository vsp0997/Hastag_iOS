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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    private func setUI() {
        txtView.font = UIFont.Arimo.regular.size(16)
    }
}
