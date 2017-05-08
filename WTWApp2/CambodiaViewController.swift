//
//  CambodiaViewController.swift
//  WTWApp2
//
//  Created by Alec Rieger on 5/3/17.
//  Copyright © 2017 Trevor. All rights reserved.
//

import Foundation
import UIKit
import GoogleMaps

class CambodiaViewController: UIViewController {
    
    // You don't need to modify the default init(nibName:bundle:) method.
    
    override func loadView() {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate 11.33, 104.55 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: 11.33, longitude: 104.55, zoom: 7.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 11.33, longitude: 104.55)
        marker.title = "Phnom Penh"
        marker.snippet = "Cambodia"
        marker.map = mapView
    }
}

