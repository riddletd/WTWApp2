//
//  MapViewController.swift
//  WTWApp2
//
//  Created by Alec Rieger on 4/12/17.
//  Copyright © 2017 Trevor. All rights reserved.
//

import Foundation
import UIKit
import GoogleMaps

class MapViewController: UIViewController {
    
    // You don't need to modify the default init(nibName:bundle:) method.
    
    override func loadView() {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: 36.219409, longitude: -81.685650, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 36.219409, longitude: -81.685650)
        marker.title = "Boone"
        marker.snippet = "North Carolina"
        marker.map = mapView
    }
}
