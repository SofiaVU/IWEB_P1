//
//  ViewController.swift
//  P1_Hola Mundo
//
//  Created by Sofia Vidal Urriza on 09/09/2017.
//  Copyright © 2017 Sofia Vidal Urriza. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var slider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func holaPressed(_ sender: UIButton) {
        msgLabel.text = "HOLA"
        
        // Poner el slider al 0.5
        slider.value = 0.5
        slider.sendActions(for: .valueChanged)
        
        // Coordenadas Plaza roja mMscu
        let center = CLLocationCoordinate2D(latitude: 55.7558, longitude: 37.6173 )
        let span = MKCoordinateSpan(latitudeDelta: 0.004 , longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        mapView.setRegion(reg, animated: true)
        
        // mapa en modo Híbrido
        mapView.mapType = MKMapType.hybrid
        
    }
    
    @IBAction func mundoPressed(_ sender: UIButton) {
        msgLabel.text = "MUNDO"
        
        // Coordenadas ETSIT
        let center = CLLocationCoordinate2D(latitude: 40.452445, longitude: -3.726162)
        let span = MKCoordinateSpan(latitudeDelta: 0.004 , longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)        
        mapView.setRegion(reg, animated: true)
        
        mapView.mapType = MKMapType.satellite
    }
    
    @IBAction func updateAlpha(_ sender: UISlider) {
        msgLabel.alpha = CGFloat(sender.value)
    }
    
    @IBAction func pMayorPressed(_ sender: UIButton) {
        // Coordenadas Plaza Mayor Madrid
        let center = CLLocationCoordinate2D(latitude: 40.4154, longitude: -3.7074)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.004 , longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(reg, animated: true)
        
        
    }

  
}
