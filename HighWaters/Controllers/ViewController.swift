//
//  ViewController.swift
//  HighWaters
//
//  Created by Khidr Brinkley on 11/18/21.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    @IBOutlet weak var mapview: MKMapView!
    
    private lazy var locationManager: CLLocationManager = {
        
        let manager = CLLocationManager()
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.distanceFilter = kCLDistanceFilterNone
        manager.requestAlwaysAuthorization()
        return manager
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.locationManager.startUpdatingLocation()
        self.mapview.showsUserLocation = true
        // Do any additional setup after loading the view.
    }


}

