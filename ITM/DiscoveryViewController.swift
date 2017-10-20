//
//  DiscoveryViewController.swift
//  ITM
//
//  Created by Kaleb Holley on 10/19/17.
//  Copyright © 2017 Rolman De los Santos. All rights reserved.
//

import UIKit
import Mapbox

class DiscoveryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpMap()

        // Do any additional setup after loading the view.
    }

        // Do any additional setup after loading the view.
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setUpMap(){
        let url = URL(string: "mapbox://styles/mapbox/streets-v10")
        let mapView = MGLMapView(frame: view.bounds, styleURL: url)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        mapView.setCenter(CLLocationCoordinate2D(latitude:33.753746, longitude: -84.386330), zoomLevel: 9, animated: false)
        self.view.addSubview(mapView)
        
    }

}
