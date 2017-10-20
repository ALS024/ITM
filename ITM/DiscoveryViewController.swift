//
//  DiscoveryViewController.swift
//  ITM
//
//  Created by Rolman De los Santos on 10/19/17.
//  Copyright © 2017 Rolman De los Santos. All rights reserved.
//

import UIKit
import Mapbox

class DiscoveryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpMap()
            
            let mapView = MGLMapView(frame: view.bounds)
            mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            
            // Set the map’s center coordinate and zoom level.
            mapView.setCenter(CLLocationCoordinate2D(latitude: 40.7326808, longitude: -73.9843407), zoomLevel: 12, animated: false)
            view.addSubview(mapView)
            
            // Set the delegate property of our map view to `self` after instantiating it.
            mapView.delegate = self
            
            // Declare the marker `hello` and set its coordinates, title, and subtitle.
            let hello = MGLPointAnnotation()
            hello.coordinate = CLLocationCoordinate2D(latitude: 40.7326808, longitude: -73.9843407)
            hello.title = "Hello world!"
            hello.subtitle = "Welcome to my marker"
            
            // Add marker `hello` to the map.
            mapView.addAnnotation(hello)
        }
        
        // Use the default marker. See also: our view annotation or custom marker examples.
        func mapView(_ mapView: MGLMapView, viewFor annotation: MGLAnnotation) -> MGLAnnotationView? {
            return nil
        }
        
        // Allow callout view to appear when an annotation is tapped.
        func mapView(_ mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool {
            return true
        }

        // Do any additional setup after loading the view.
    }

    
        private func setUpMap(){
        let url = URL(string: "mapbox://styles/mapbox/streets-v10")
        let mapView = MGLMapView(frame: view.bounds, styleURL: url)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            mapView.setCenter(CLLocationCoordinate2D(latitude:33.753746, longitude: -84.386330), zoomLevel: 9, animated: false)
        self.view.addSubview(mapView)
    }
}

