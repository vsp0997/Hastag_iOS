//
//  CarrotsViewController.swift
//  Hashtag
//
//  Created by Vivek Patel on 27/07/24.
//

import UIKit

class CarrotsViewController: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        print("View was tapped!")
    }
}
extension CarrotsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CarrotsTableViewCell.self), for: indexPath) as! CarrotsTableViewCell
        cell.cellView.layer.cornerRadius = 10
        cell.cellView.layer.masksToBounds = true
        cell.delegate = self
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
        print(indexPath.row.description)
    }
}
extension CarrotsViewController: CustomCellDelegate {
    func didTapButton(in cell: CarrotsTableViewCell) {
        print("Hi")
    }
}
