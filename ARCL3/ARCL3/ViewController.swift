
import UIKit
import ARCL
import CoreLocation


class ViewController: UIViewController {

    
    var sceneLocationView = SceneLocationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        sceneLocationView.run()
        view.addSubview(sceneLocationView)
        
    }


    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        sceneLocationView.frame = view.bounds
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        
        /*------------- first node ---------*/
        var location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 48.432153, longitude: -123.323696), altitude: 30)
        var pin = UIImage(named: "bcpb2")!
        var annotationNode = LocationAnnotationNode(location: location, image: pin)
        
        
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        /*----------------------------------*/
        
        
        /*------------- second node ---------*/
         location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 48.424277, longitude: -123.306483), altitude: 30)
        pin = UIImage(named: "empressHotel")!
         annotationNode = LocationAnnotationNode(location: location, image: pin)
        
        
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        /*----------------------------------*/
        
    }
}

