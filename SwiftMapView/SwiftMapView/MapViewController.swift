//
//  MapViewController.swift
//  SwiftMapView
//
//  Created by 李伟 on 16/4/21.
//  Copyright © 2016年 Jasoooon. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var mapView:MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "MKMapView"
        
        mapView = MKMapView(frame: self.view.frame)
        self.view.addSubview(mapView)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
