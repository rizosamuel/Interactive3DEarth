//
//  EarthNode.swift
//  Interactive3DEarth
//
//  Created by Rijo Samuel on 10/02/22.
//

import SceneKit

final class EarthNode: SCNNode {

	override init() {
		
		super.init()
		
		self.geometry = SCNSphere(radius: 1)
		self.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "Diffuse")
		self.geometry?.firstMaterial?.specular.contents = UIImage(named: "Specular")
		self.geometry?.firstMaterial?.emission.contents = UIImage(named: "Emission")
		self.geometry?.firstMaterial?.normal.contents = UIImage(named: "Normal")
		// self.geometry?.firstMaterial?.shininess = 0
		
		let action = SCNAction.rotate(by: 360 * CGFloat(Double.pi / 180), around: SCNVector3(0, 1, 0), duration: 100)
		let repeatAction = SCNAction.repeatForever(action)
		
		runAction(repeatAction)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
