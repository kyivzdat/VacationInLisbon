//
//  ViewController.swift
//  FeelTheLisbon
//
//  Created by Vladyslav PALAMARCHUK on 1/17/20.
//  Copyright © 2020 Vladyslav PALAMARCHUK. All rights reserved.
//

import UIKit
import CollapsibleTableSectionViewController

class ViewController: CollapsibleTableSectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("viewDidLoad")
        self.delegate = self

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        navigationItem.title = "Vacation in Lisbon"
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToPlacesVC" {
            guard let dvc = segue.destination as? PlacesVC,
                let indexPath = sender as? IndexPath else { return }
            
            var passPlaces = [Place()]
            var titleStr = ""
            
            switch indexPath.section {
            case 0:
                if indexPath.row == 0 {
                    passPlaces = beatifulBars
                } else if indexPath.row == 1 {
                    passPlaces = pinkStreetBars
                    
                } else if indexPath.row == 2 {
                    passPlaces = roofTopBars
                }
                titleStr = barsTitle[indexPath.row]
            case 1:
                if indexPath.row == 0 {
                    passPlaces = bestCafes
                } else if indexPath.row == 1 {
                    passPlaces = kioskCafes
                }
                titleStr = cafesTitle[indexPath.row]
            case 2:
                if indexPath.row == 0 {
                    passPlaces = alfamaRestaurants
                } else if indexPath.row == 1 {
                    passPlaces = principeRealRestaurants
                }
                titleStr = restaurantsTitle[indexPath.row]
                
            default:
                return
            }
            dvc.places = passPlaces
            if let image = UIImage(named: titleStr) {
                dvc.bgImage = image
            }
            dvc.titleStr = titleStr
        }
    }
}

extension ViewController: CollapsibleTableSectionDelegate {
    func numberOfSections(_ tableView: UITableView) -> Int {
        return placesTitle.count
    }
    
    func collapsibleTableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return barsTitle.count
        case 1:
            return cafesTitle.count
        case 2:
            return restaurantsTitle.count
        default:
            return 0
        }
    }
    
    func collapsibleTableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.separatorStyle = .none

        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "ell") as? TableViewCell ?? TableViewCell(style: .default, reuseIdentifier: "ell")
        
        cell.selectionStyle = .none
        var titleText = ""
        
        switch indexPath.section {
        case 0:
            titleText = barsTitle[indexPath.row]
        case 1:
            titleText = cafesTitle[indexPath.row]
        case 2:
            titleText = restaurantsTitle[indexPath.row]
        default:
            break
        }

        // Text
        let atrText = outlineLabel(string: titleText, font: "AmericanTypewriter-Bold", size: 34, mainColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), foregroundColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        cell.titleLabel.attributedText = atrText
        
        // Image
        if let image = UIImage(named: titleText) {
            cell.bgImage.image = image
        }

        return cell
    }
    
    func collapsibleTableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return placesTitle[section]
    }
    
    func collapsibleTableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
    
    func collapsibleTableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) else { return }
        
        animateTap(cell) {
            self.performSegue(withIdentifier: "segueToPlacesVC", sender: indexPath)
        }
    }

}
