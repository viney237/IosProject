//
//  ViewController.swift
//  MyApp
//
//  Created by Deepthi Mamillapalli on 17/05/2018.
//  Copyright © 2018 Vinay. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let name:NSArray = ["Paris", "Nice", "Marseille", "Lyon","Rennes","Bordeaux"]
    let country:NSArray = ["France","France","France","France","France","France"]
    let cityDescription = ["Paris, France's capital, is a major European city and a global center for art, fashion, gastronomy and culture. Its 19th-century cityscape is crisscrossed by wide boulevards and the River Seine. Beyond such landmarks as the Eiffel Tower and the 12th-century, Gothic Notre-Dame cathedral, the city is known for its cafe culture and designer shops along the Rue du Faubourg Saint-Honore.", "Nice, capital of the Alpes-Maritimes department on the French Riviera, sits on the pebbly shores of the Baie des Anges. Founded by the Greeks and later a retreat for 19th-century European elite, the city has also long attracted artists. Former resident Henri Matisse is honored with a career-spanning collection of paintings at Musée Matisse. Musée Marc Chagall features some of its namesake's major religious works.", "Marseille, a port city in southern France, has been a crossroads of immigration and trade since its founding by the Greeks circa 600 B.C. At its heart is the Vieux-Port (Old Port), where fishmongers sell their catch along the boat-lined quay. Basilique Notre-Dame-de-la-Garde is a Romanesque-Byzantine church. Modern landmarks include Le Corbusier’s influential Cité Radieuse complex and Zaha Hadid’s CMA CGM Tower.", "Lyon, the capital city in France’s Auvergne-Rhône-Alpes region, sits at the junction of the Rhône and Saône rivers. Its center reflects 2,000 years of history from the Roman Amphithéâtre des Trois Gaules, medieval and Renaissance architecture in Vieux (Old) Lyon, to the modern Confluence district on Presqu'île peninsula. Traboules, covered passageways between buildings, connect Vieux Lyon and La Croix-Rousse hill.","Rennes is the capital city of Brittany, northwest France. It's known for its medieval half-timbered houses and grand Rennes Cathedral. Parc du Thabor includes a rose garden and aviary. South of the Vilaine river, the Musée des Beaux-arts displays works by Botticelli, Rubens and Picasso. The Champs Libres cultural center houses the Musée de Bretagne (Brittany Museum) and Espace des Sciences, featuring a planetarium.","Bordeaux, hub of the famed wine-growing region, is a port city on the Garonne River in southwestern France. It’s known for its Gothic Cathédrale Saint-André, 18th- to 19th-century mansions and notable art museums such as the Musée des Beaux-Arts de Bordeaux. Public gardens line the curving river quays. The grand Place de la Bourse, centered on the Three Graces fountain, overlooks the Miroir d’Eau reflecting pool."]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(name.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! customTableViewCell
        
        cell.imgImage.image = UIImage(named: (name[indexPath.row] as! String))
        cell.lblTitle.text = name[indexPath.row] as? String
        cell.lblSubtitle.text = country[indexPath.row] as? String
        
        return (cell)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vell = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        vell?.image = UIImage(named: (name[indexPath.row] as! String))!
        vell?.name = (name[indexPath.row] as? String)!
        vell?.text = (cityDescription[indexPath.row] as? String)!
        self.navigationController?.pushViewController(vell!, animated: true)
    }

}
