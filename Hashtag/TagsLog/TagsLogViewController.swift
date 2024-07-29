//
//  TagsLogViewController.swift
//  Hashtag
//
//  Created by Vivek Patel on 27/07/24.
//

import UIKit

class TagsLogViewController: UIViewController {
    
    @IBOutlet weak var tblView: UITableView!
    let historyList: [String] = ["Flowers (154)", "Coffee (77)", "Tomorrowland (55)", "Maldives (44)"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
extension TagsLogViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return historyList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TagsLogTableViewCell.self), for: indexPath) as! TagsLogTableViewCell
        cell.lblTitle.text = historyList[indexPath.row]
        cell.lblTitle.font = UIFont.Arimo.regular.size(16)
        cell.cellView.layer.cornerRadius = 10
        cell.cellView.layer.masksToBounds = true
        if indexPath.row == 0 {
            cell.cellView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        } else if indexPath.row == tableView.numberOfRows(inSection: indexPath.section) - 1 {
            cell.cellView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
            cell.seperatorView.isHidden = true
        } else {
            cell.cellView.layer.cornerRadius = 0
            cell.cellView.layer.maskedCorners = []
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = .clear
        return headerView
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextVC = storyboard?.instantiateViewController(withIdentifier: String(describing: AllTagsViewController.self)) as! AllTagsViewController
        nextVC.navTitle = historyList[indexPath.row]
        navigationController?.pushViewController(nextVC, animated: true)
    }
}
