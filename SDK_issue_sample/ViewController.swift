//
//  ViewController.swift
//  SDK_issue_sample
//
//  Created by KOBAYASHI Jun on 2018/05/07.
//  Copyright © 2018年 KOBAYASHI Jun. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController,GMSPanoramaViewDelegate {
    
    @IBOutlet
    weak var webView: UIWebView!
    
    @IBOutlet
    weak var panoView: GMSPanoramaView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        let svURL = "https://goo.gl/maps/KU6ACAjdYKE2"
        
        // let panoramaID = svURL.replacingOccurrences(of: "^https?://.+!1s(.+)!2e.+$", with: "$1", options: .regularExpression)
        
        // LOG(msg: "panoramaID: \(panoramaID)")
        
        // webView create
        let encURL = NSURL(string:svURL.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed)!)
        let urlRequest = NSURLRequest(url: encURL! as URL)
        webView.scrollView.bounces = false
        webView.loadRequest(urlRequest as URLRequest)
        
        // panoramaView create
        panoView.delegate = self
        // panoView.moveNearCoordinate(CLLocationCoordinate2D(latitude: 40.8507118, longitude:140.6777955))
        // panoView.move(toPanoramaID: panoramaID)
        panoView.move(toPanoramaID:
            "CAoSLEFGMVFpcFBRcDlOZW1DLTZoSkdqdzU2NlBUakFlT3RXLXJjTXVId3Fiamd1")
        panoView.camera = GMSPanoramaCamera(heading: 120.92, pitch: 179, zoom: 3 , fov: 75)


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func panoramaView(_ panoramaView: GMSPanoramaView, didMove camera: GMSPanoramaCamera) {
        LOG_METHOD()
        
    }
    
    func panoramaViewDidStartRendering(_ panoramaView: GMSPanoramaView) {
        LOG_METHOD()
    }

    func panoramaViewDidFinishRendering(_ panoramaView: GMSPanoramaView) {
        LOG_METHOD()
    }
    
    func panoramaView(_ view: GMSPanoramaView, willMoveToPanoramaID panoramaID: String) {
        LOG_METHOD()
    }
    
    func panoramaView(_ view: GMSPanoramaView, didMoveTo panorama: GMSPanorama?) {
        LOG_METHOD()

    }
    func panoramaView(_ view: GMSPanoramaView, error: Error, onMoveToPanoramaID panoramaID: String) {
        LOG_METHOD()
        LOG(msg: "\(error.localizedDescription)")
    }
    
    func panoramaView(_ view: GMSPanoramaView, error: Error, onMoveNearCoordinate coordinate: CLLocationCoordinate2D) {
        LOG_METHOD()
        LOG(msg: "\(error.localizedDescription)")
        
    }
    
    func panoramaView(_ view: GMSPanoramaView, didMoveTo panorama: GMSPanorama, nearCoordinate coordinate: CLLocationCoordinate2D) {
        LOG_METHOD()
    }
    
}


