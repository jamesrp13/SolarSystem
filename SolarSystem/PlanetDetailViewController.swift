//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by James Pacheco on 10/13/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var planetDistance: UILabel!
    @IBOutlet weak var planetDayLength: UILabel!
    @IBOutlet weak var planetDiameter: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func updateWithPlanet(planet: Planet) {

        title = planet.name
        planetImageView.image = UIImage(named: planet.imageName)
        planetDistance.text = "Distance from sun: \(planet.millionKMsFromSun)"
        planetDayLength.text = "Day length: \(planet.dayLength)"
        planetDiameter.text = "Diameter: \(planet.diameter)"
       
        
    }
    

    
}
