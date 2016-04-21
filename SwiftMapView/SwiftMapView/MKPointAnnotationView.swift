//
//  MKPointAnnotion.swift
//  SwiftMapView
//
//  Created by 李伟 on 16/4/21.
//  Copyright © 2016年 Jasoooon. All rights reserved.
//

import UIKit
import MapKit

class MKPointAnnotationView: UIViewController {
    
    var mapView:MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "MKPointAnnotation"
        
        mapView = MKMapView(frame: self.view.frame)
        self.view.addSubview(mapView)
        
        mapView.mapType = .Standard
        
        //定义地图区域和中心坐标
        let center:CLLocation = CLLocation(latitude: 30.657, longitude: 104.065)
        
        let currentRegion:MKCoordinateRegion = MKCoordinateRegionMakeWithDistance(center.coordinate, 500, 500)
        //设置显示区域
        mapView.setRegion(currentRegion, animated: true)
        
        //创建标注对象
        let annotation = MKPointAnnotation()
        //标注的位置
        annotation.coordinate = CLLocation(latitude: 30.657, longitude: 104.065).coordinate
        //标题
        annotation.title = "成都"
        //描述
        annotation.subtitle = "天府广场"
        
        mapView.addAnnotation(annotation)
        
        
        // Do any additional setup after loading the view.
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
