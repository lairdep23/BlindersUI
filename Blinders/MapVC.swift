//
//  MapVC.swift
//  Blinders
//
//  Created by Evan on 3/18/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    
    let regionRadius: CLLocationDistance = 10000.0
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        map.delegate = self
        
        getPlacemarkFromAddress(selectedDate["address"]!)

        
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        locationAuthStatus()
        
    }
    
    func locationAuthStatus() {
        if CLLocationManager.authorizationStatus() == .AuthorizedWhenInUse {
            map.showsUserLocation = true
        } else {
            locationManager.requestWhenInUseAuthorization()
        }
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2, regionRadius * 2)
        map.setRegion(coordinateRegion, animated: true)
    }
    
    func mapView(mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation) {
        if let loc = userLocation.location {
            centerMapOnLocation(loc)
        }
    }
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        
        if annotation.isKindOfClass(DatesAnnotation) {
            
            let annoView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "default")
            annoView.pinTintColor = UIColor.darkGrayColor()
            annoView.animatesDrop = true
            return annoView
            
        } else if annotation.isKindOfClass(MKUserLocation) {
            return nil
        }
        
        return nil
    }
    
    func createAnnotationForLocation(location: CLLocation) {
        
        let perfectDate = DatesAnnotation(coordinate: location.coordinate)
        map.addAnnotation(perfectDate)
    }
    
    func getPlacemarkFromAddress(address: String) {
        CLGeocoder().geocodeAddressString(address) { (placemarks: [CLPlacemark]?, error: NSError?) -> Void in
            if let marks = placemarks where marks.count > 0 {
                if let loc = marks[0].location {
                    self.createAnnotationForLocation(loc)
                }
            }
        }
    }
    


}
