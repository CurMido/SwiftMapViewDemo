//
//  ViewController.swift
//  SwiftMapView
//
//  Created by 李伟 on 16/4/21.
//  Copyright © 2016年 Jasoooon. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var tableview: UITableView!
    
    let data = ["MKMapView","MKPointAnnotation"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "SwiftMapViewDemo"
        // Do any additional setup after loading the view, typically from a nib.
        tableview.delegate = self
        tableview.dataSource = self
        
        tableview.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCellWithIdentifier("cell")
        cell?.textLabel?.text = data[indexPath.row]
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableview.deselectRowAtIndexPath(indexPath, animated: true)
        switch indexPath.row {
        case 0:
            next(MapViewController())
            break
        case 1:
            next(MKPointAnnotationView())
            break
        default:
            break
        }
    }
    
    func next(vc:UIViewController){
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 44
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

