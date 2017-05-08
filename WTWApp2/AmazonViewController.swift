//
//  AmazonViewController.swift
//  WTWApp2
//
//  Created by Alec Rieger on 5/3/17.
//  Copyright © 2017 Trevor. All rights reserved.
//

import Foundation
import UIKit
import GoogleMaps

class AmazonViewController: UIViewController {
    
    // You don't need to modify the default init(nibName:bundle:) method.
    
    override func loadView() {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate 4.35, 74.4 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: 4.35, longitude: 74.4, zoom: 7.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 4.35, longitude: 74.4)
        marker.title = "Bogota"
        marker.snippet = "Colombia"
        marker.map = mapView
    }
}

