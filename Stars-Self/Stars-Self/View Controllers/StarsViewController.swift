//
//  StarsViewController.swift
//  Stars-Self
//
//  Created by Percy Ngan on 12/25/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import UIKit

class StarsViewController: UIViewController {

	// MARK: - Outlets
	@IBOutlet weak var nameTextField: UITextField!
	@IBOutlet weak var distanceTextField: UITextField!
	@IBOutlet weak var tableView: UITableView!

	let starController = StarController()

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	// MARK: - Actions
	@IBAction func printStarButton(_ sender: UIButton) {



	}

	@IBAction func createStarButton(_ sender: UIButton) {

		guard let name = nameTextField.text,
			let distanceString = distanceTextField.text,
			!name.isEmpty,
			!distanceString.isEmpty,
			let distance = Double(distanceString) else { return }

		starController.createStar(named: name, withDistance: distance)
		nameTextField.text = ""
		distanceTextField.text = ""
		nameTextField.becomeFirstResponder()
		tableView.reloadData()
	}
}

