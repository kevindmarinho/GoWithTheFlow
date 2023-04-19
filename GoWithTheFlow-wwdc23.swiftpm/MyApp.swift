import SwiftUI
import SpriteKit

@available(iOS 16.0, *)
@main
struct MyApp: App {
    var scene: SKScene{
        let scene = LeafAnimation()
        scene.scaleMode = .resizeFill
        return scene
    }
    var body: some Scene {
        WindowGroup {
            NavigationView{
              //  SpriteView(scene: scene)
                IntroView()
            }
        }
    }
}
