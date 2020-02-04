//
//  PlacesVC.swift
//  VacationInLisbon
//
//  Created by Vladyslav PALAMARCHUK on 1/20/20.
//  Copyright © 2020 Vladyslav PALAMARCHUK. All rights reserved.
//

import UIKit

class PlacesVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var bgBlurImage: UIImageView!
    
    var places: [Place]!
    var bgImage: UIImage!
    var titleStr: String!
    
    let bgColors = [#colorLiteral(red: 1, green: 0.8039215686, blue: 0, alpha: 1), #colorLiteral(red: 0, green: 0.462745098, blue: 1, alpha: 1), #colorLiteral(red: 0.2666666667, green: 0.8588235294, blue: 0.368627451, alpha: 1), #colorLiteral(red: 1, green: 0.5882352941, blue: 0, alpha: 1), #colorLiteral(red: 0.3294117647, green: 0.7803921569, blue: 0.9882352941, alpha: 1)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bgBlurImage.image = bgImage
        addBlurEffect(view)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        navigationController?.visibleViewController?.navigationItem.title = titleStr
    }
    
    
    @IBAction func unwindToHomeTVC(_ unwindSegue: UIStoryboardSegue) {
        tableView.reloadData()
    }
    
    //MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //TODO: - MapVC
//        if segue.identifier == "segueToMapVC" {
//            guard let dvc = segue.destination as? MapVC else { return }
//
//            dvc.places = places
//        } else
        if segue.identifier == "segueToDetailVC" {
            guard let dvc = segue.destination as? DetailVC,
                let indexPath = sender as? IndexPath else { return }
            
            let place = places[indexPath.row]
            dvc.place = place
            var imagesArray: [UIImage] = []
            if let images = places[indexPath.row].images {
                imagesArray = images
            }
            dvc.imagesArray = imagesArray
        }
        
    }
    
}

extension PlacesVC: UITableViewDelegate, UITableViewDataSource {
    // MARK: - Table view data source
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "placesCell", for: indexPath) as? PlacesTVCell else { return UITableViewCell() }
        
        var place: [Place] = []
        
        place = places
        
        var imagesArray: [UIImage] = []
        if let images = places[indexPath.row].images {
            imagesArray = images
        }

        cell.photoImageView.image = imagesArray.first
        
        let attributedText = outlineLabel(string: place[indexPath.row].title!, font: "AppleSDGothicNeo-Bold", size: 25, mainColor: nil, foregroundColor: nil)
        cell.titleLabel.attributedText = attributedText
        cell.additionalLabel.text = place[indexPath.row].additional
        cell.priceLabel.text = place[indexPath.row].price
        
        cell.bgView.backgroundColor = bgColors[indexPath.row % 5]
        
        return cell
    }
    
    //MARK: - Table view delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let cell = tableView.cellForRow(at: indexPath) else { return }
        
        animateTap(cell) {
            self.performSegue(withIdentifier: "segueToDetailVC", sender: indexPath)
        }
    }
    
}
