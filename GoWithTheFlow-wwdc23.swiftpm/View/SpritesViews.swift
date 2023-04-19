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


public class airPodsAnimation: SKScene{
    //static var shared = runHomeScene()
    
    public override func didMove(to view: SKView) {
         let airpods = SKSpriteNode(imageNamed: "airpodsOne.png")
        
        airpods.run(.repeatForever(.animate(with: [
        
            SKTexture(imageNamed: "airpodsOne"),
            SKTexture(imageNamed: "airpodsTwo"),
        ], timePerFrame: 1.0)))
        
        airpods.position = CGPoint(x: 425, y: 50)
        airpods.size = CGSize(width: 80, height: 60)
        view.allowsTransparency = true
        self.backgroundColor = .clear
        view.alpha = 1
        view.isOpaque = true
        view.backgroundColor = SKColor.clear.withAlphaComponent(0.0)
        
        
        
        addChild(airpods)
    }
}
