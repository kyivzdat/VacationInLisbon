//
//  DetailVC.swift
//  VacationInLisbon
//
//  Created by Vladyslav PALAMARCHUK on 1/20/20.
//  Copyright © 2020 Vladyslav PALAMARCHUK. All rights reserved.
//

import UIKit
import MapKit
import CenteredCollectionView

class DetailVC: UITableViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var aboutTextLabel: UILabel!
    
    @IBOutlet weak var callLabel: UILabel!
    @IBOutlet weak var mapLabel: UILabel!
    @IBOutlet weak var linkLabel: UILabel!

    @IBOutlet weak var callImage: UIImageView!
    @IBOutlet weak var mapImage: UIImageView!
    @IBOutlet weak var linkImage: UIImageView!
    
    // More Info
    @IBOutlet weak var mealServiceTitleLabel: UILabel!
    @IBOutlet weak var mealServiceLabel: UILabel!
    @IBOutlet weak var atmosphereTitleLabel: UILabel!
    @IBOutlet weak var atmosphereLabel: UILabel!
    @IBOutlet weak var sheduleTitleLabel: UILabel!
    @IBOutlet weak var sheduleLabel: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var moreInfoCell: UITableViewCell!
    let rowHeight = 33.0
    var moreInfoHeight = 0.0
    var contactRowHeight: [CGFloat] = [90, 90, 90]
    
    let cellPercentWidth: CGFloat = 0.8
    var centeredCollectionViewFlowLayout: CenteredCollectionViewFlowLayout!
    
    var place: Place!
    var imagesArray: [UIImage]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillView()
        setupCollectionCell()
    }
    
    func setupCollectionCell() {
        // Get the reference to the `CenteredCollectionViewFlowLayout` (REQUIRED STEP)
        centeredCollectionViewFlowLayout = (collectionView.collectionViewLayout as! CenteredCollectionViewFlowLayout)
        // Modify the collectionView's decelerationRate (REQUIRED STEP)
        collectionView.decelerationRate = UIScrollView.DecelerationRate.fast
        centeredCollectionViewFlowLayout.itemSize = CGSize(
            width: collectionView.bounds.width * cellPercentWidth,
            height: collectionView.bounds.height * cellPercentWidth
        )
        // Configure the optional inter item spacing (OPTIONAL STEP)
        centeredCollectionViewFlowLayout.minimumLineSpacing = 20
        
        // Get rid of scrolling indicators
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func fillView() {
        
        self.title = place.title
        aboutTextLabel.text = place.about
        
        // More Info
        let textArray = [place.mealService, place.atmosphere, place.shedule]
        let labelArray = [[mealServiceLabel, mealServiceTitleLabel],
                          [atmosphereLabel, atmosphereTitleLabel],
                          [sheduleLabel, sheduleTitleLabel]]
        
        for (index, text) in textArray.enumerated() {
            if (text ?? "").isEmpty {
                print("Remove label -", index)
                labelArray[index].first??.removeFromSuperview()
                labelArray[index].last??.removeFromSuperview()
            } else {
                labelArray[index].first??.text = text
                switch index {
                case 0, 1:
                    moreInfoHeight += rowHeight * 2
                case 2:
                    moreInfoHeight += rowHeight
                default:
                    break
                }
            }
        }
        if moreInfoHeight == 0.0 {
            print("Remove stack view")
            stackView.removeFromSuperview()
        }
        callLabel.text = place.phone
        if (place.phone ?? "").isEmpty {
            print("remove phone")
            contactRowHeight[0] = 0
        }
        mapLabel.text = place.location
        if (place.location ?? "").isEmpty {
            print("remove map")
            contactRowHeight[1] = 0
        }
        linkLabel.text = place.link
        if (place.link ?? "").isEmpty {
            print("remove link")
            contactRowHeight[2] = 0
        }
    }
    
    // Set height for rows
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0 where indexPath.row == 0:  // CollectionView photos
            return CGFloat(243)
        case 0 where [1, 2, 3].contains(indexPath.row):  // Buttons
            
            return contactRowHeight[indexPath.row - 1]
        case 1 where indexPath.row == 0: // More Info
            return CGFloat(moreInfoHeight)
        default:
            break
        }
        return UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return (place.additional ?? "") + ", \(place.price ?? "")"
        case 1 where moreInfoHeight > 0.0:
            return "More Info"
        default:
            return ""
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.isToolbarHidden = true
    }
    
    // MARK: - Buttons action
    func tapCallButton(_ indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) else { return }
        animateTap(cell) {
            guard let number = URL(string: "tel://" + (self.place.phone ?? "")),
                UIApplication.shared.canOpenURL(number)
                else { return print("bad url") }
            
            UIApplication.shared.open(number, options: [:], completionHandler: { bool in
                print("Phone call is ", bool)
            })
        }
    }
    
    
    func tapLinkButton(_ indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) else { return }
        animateTap(cell) {
            if (self.place.link ?? "").count == 0 {
                self.showErrorPopup(title: "Wrond url address", message: "Can't connect for this site")
            } else {
                self.performSegue(withIdentifier: "segueToWebVC", sender: nil)
            }
        }
    }
    
    
    func tapMapButton(_ indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) else { return }
        animateTap(cell) {
            
            if let latitude = self.place.latitude, let longitude = self.place.longitude {
                self.showMap(latitude: latitude, longitude: longitude)
            } else {
                self.showErrorPopup(title: "Wrong location", message: "Can not find a location")
            }
        }
    }
    
    func showMap(latitude: String, longitude: String) {
        
        let latit:CLLocationDegrees = Double(latitude)!
        let longit:CLLocationDegrees = Double(longitude)!
        let regionDistance: CLLocationDistance = 1000
        let coordinates = CLLocationCoordinate2D(latitude: latit, longitude: longit)
        let regioonSpan = MKCoordinateRegion(center: coordinates, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
        let option = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regioonSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regioonSpan.span)]
        let placeMark = MKPlacemark(coordinate: coordinates)
        let mapItemName = MKMapItem(placemark: placeMark)
        mapItemName.name = place.title
        mapItemName.openInMaps(launchOptions: option)
    }
    
    func showErrorPopup(title: String, message: String) {
        DispatchQueue.main.async {
            let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
            ac.addAction(okButton)
            self.present(ac, animated: true)
        }
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToWebVC" {
            guard let dvc = segue.destination as? WebVC else { return }
            
            dvc.url = URL(string: place.link ?? "")
        }
    }
    
    // MARK: - Table View Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 1:
            tapCallButton(indexPath)
        case 2:
            tapMapButton(indexPath)
        case 3:
            tapLinkButton(indexPath)
        default:
            break
        }
    }
}

extension DetailVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "detailCell", for: indexPath) as? DetailPhotoCVCell else { return UICollectionViewCell() }
        
        cell.photoImageView.image = imagesArray[indexPath.row]
        cell.photoImageView.layer.cornerRadius = 3
        
        return cell
    }
    
    
}
