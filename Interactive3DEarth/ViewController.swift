//
//  ViewController.swift
//  Interactive3DEarth
//
//  Created by Rijo Samuel on 10/02/22.
//

import UIKit
import SceneKit

final class ViewController: UIViewController {
	
	private let scene = SCNScene()
	private var sceneView: SCNView = SCNView()
	private let cameraNode: SCNNode = SCNNode()

	override func viewDidLoad() {
		
		super.viewDidLoad()
		
		cameraNode.camera = SCNCamera()
		cameraNode.position = SCNVector3(0, 0, 5)
		scene.rootNode.addChildNode(cameraNode)
		
		// let particleSystem = SCNParticleSystem(named: "", inDirectory: "nil")
		// scene.rootNode.addChildNode(particleSystem)
		
		let lightNode = SCNNode()
		lightNode.light = SCNLight()
		lightNode.light?.type = .omni
		lightNode.position = SCNVector3(0, 10, 2)
		scene.rootNode.addChildNode(lightNode)
		
		let earthNode = EarthNode()
		scene.rootNode.addChildNode(earthNode)
		
		sceneView = self.view as! SCNView
		sceneView.scene = scene
		
		sceneView.showsStatistics = true
		sceneView.backgroundColor = .black
		sceneView.allowsCameraControl = true
	}
	
	override var prefersStatusBarHidden: Bool {
		return true
	}
}
