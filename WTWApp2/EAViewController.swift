//
//  EAViewController.swift
//  WTWApp2
//
//  Created by Alec Rieger on 5/3/17.
//  Copyright © 2017 Trevor. All rights reserved.
//

import Foundation
import UIKit
import GoogleMaps

class EAViewController: UIViewController {
    
    // You don't need to modify the default init(nibName:bundle:) method.
    
    override func loadView() {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate 1, 32at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: 1, longitude: 32, zoom: 7.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 1, longitude: 32)
        marker.title = "Kampala"
        marker.snippet = "Uganda"
        marker.map = mapView
    }
}

