//
//  DatesAnnotation.swift
//  Blinders
//
//  Created by Evan Laird on 4/2/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import Foundation
import MapKit

class DatesAnnotation: NSObject, MKAnnotation {
    var coordinate = CLLocationCoordinate2D()
    
    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
    }
}