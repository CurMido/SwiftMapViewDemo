#SwiftMapView

###MKMapView
import:
>     import MapKit

code:
>     var mapView = MKMapView(frame:self.view.frame)
     self.view.addSubview(mapView)

###MKPointAnnotation
import:
>     import MapKit

code:
>      var mapView = MKMapView(frame: self.view.frame)
      self.view.addSubview(mapView)
      mapView.mapType = .Standard
      //定义地图区域和中心坐
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
image:
![1](http://1.swiftniubi.applinzi.com/swiftmapview/QQ20160421-0@2x.png)