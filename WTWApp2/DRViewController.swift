//
//  DRViewController.swift
//  WTWApp2
//
//  Created by Alec Rieger on 5/3/17.
//  Copyright © 2017 Trevor. All rights reserved.
//

import Foundation
import UIKit
import GoogleMaps

class DRViewController: UIViewController {
    
    // You don't need to modify the default init(nibName:bundle:) method.
    
    override func loadView() {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate 19.488017, -70.665715 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: 19.488017, longitude: -70.665715, zoom: 7.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 19.488017, longitude: -70.665715)
        marker.title = "Gurabo"
        marker.snippet = "Dominican Republic"
        marker.map = mapView
    }
}

