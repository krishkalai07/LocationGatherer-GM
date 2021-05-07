import UIKit
import GameplayKit
import SpriteKit

import FirebaseCore
import FirebaseFirestore
import FirebaseFirestoreSwift
import GoogleMaps

class ViewController: UIViewController {

    var db: Firestore!
    //var graph: Graph? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // [START setup]
        //let settings = FirestoreSettings()
        //Firestore.firestore().settings = settings
        // [END setup]
        //db = Firestore.firestore()
                
        let camera = GMSCameraPosition.camera(withLatitude: 47.75837578968782, longitude: -122.19094658042256, zoom: 100)
        let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
        mapView.delegate = self
        self.view.addSubview(mapView)

//        let uw1Points: [CLLocationCoordinate2D] = [CLLocationCoordinate2D(latitude: 47.75838549334945, longitude: -122.19061681548861),
//                                                    CLLocationCoordinate2D(latitude: 47.758994950326276, longitude: -122.19070331672711),
//                                                    CLLocationCoordinate2D(latitude: 47.7581503130333, longitude: -122.19082729372501),
//                                                    CLLocationCoordinate2D(latitude: 47.75848519962103, longitude: -122.19090530762247),
//                                                    CLLocationCoordinate2D(latitude: 47.75901298148929, longitude: -122.19052494983148),
//                                                    CLLocationCoordinate2D(latitude: 47.75936053093113, longitude: -122.19075159648662),
//                                                    CLLocationCoordinate2D(latitude: 47.75946350790549, longitude: -122.19085353445303)
//        ]
//        let titles: [String] = ["Southdoor", "UW1", "Crosswalk", "W", "Welcome Desk", "UW1ND GM", "UW1ND"]
//        
//        for i in 0..<uw1Points.count {
//            let marker = GMSMarker(position: uw1Points[i])
//            marker.title = titles[i]
//            marker.map = mapView
//        }
        
//        let marker = GMSMarker()
//        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
//        marker.title = "Sydney"
//        marker.snippet = "Australia"
//        marker.map = mapView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController : GMSMapViewDelegate {
    func mapView(_ mapView: GMSMapView, didTapAt coordinate: CLLocationCoordinate2D) {
        print("(\(coordinate.longitude), \(coordinate.latitude))")
    }
}
