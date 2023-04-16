//
//  File.swift
//  
//
//  Created by kevin marinho on 16/04/23.
//

import Foundation
import SpriteKit

class LeafAnimation: SKScene {
    let sceneNode = SKNode()
    
    override func sceneDidLoad() {
        scene?.addChild(sceneNode)
        createParticle()
    }
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        view.allowsTransparency = true
        self.backgroundColor = .clear
    }
    
    func createParticle(){
        if let particle = SKEmitterNode(fileNamed: "LeafAnimation.sks"){
            particle.position = CGPoint(x: 0, y: 200)
            sceneNode.addChild(particle)
        }
    }
}


