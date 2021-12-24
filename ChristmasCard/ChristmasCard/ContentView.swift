//
//  ContentView.swift
//  ChristmasCard
//
//  Created by Shreyas Vilaschandra Bhike on 23/12/21.
//  MARK: The App Wizard
//  Instagram
//  MARK: theappwizard2408

import SwiftUI

struct ContentView: View {
    var body: some View {
         ZStack{
             MainView()
            }
        }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
























struct MainView: View {
    var body: some View {
        ZStack{
            Image("gradient").edgesIgnoringSafeArea(.all)
            Image("trees").resizable()
                .frame(width: 1920, height: 1000)
                .offset(x: -270, y: 30)
            Image("snowman")
                .resizable()
                    .frame(width: 340, height: 500)
                    .offset(x: -250, y: 220)
            Image("xmas")
                .resizable()
                    .frame(width: 500, height: 500)
                    .offset(x: -130, y: -300)
                    .shadow(color: Color.red, radius: 2, x: 1, y: 1)
            ParticleSystem()
        }
    }
}


struct ParticleSystem: UIViewRepresentable {
   
    func makeUIView(context: Context) -> UIView {
        let size = CGSize(width: 0.05, height: 0.05)
        let host = UIView(frame: CGRect(x: 0.0, y: 0.0, width: size.width, height: size.height))

        let particlesLayer = CAEmitterLayer()
        
        particlesLayer.frame = CGRect(x: 2, y: 2, width: size.width, height: size.height)

        host.layer.addSublayer(particlesLayer)
        host.layer.masksToBounds = true

        particlesLayer.backgroundColor = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0).cgColor
        
        particlesLayer.emitterShape = .circle
        
        particlesLayer.emitterPosition = CGPoint(x: 509.4, y: 707.7)
        particlesLayer.emitterSize = CGSize(width: 1648.0, height: 1112.0)
        particlesLayer.emitterMode = .surface
        particlesLayer.renderMode = .oldestLast
        let imageParticle = UIImage(named: "snowflake")?.cgImage
        let snowParticles = CAEmitterCell()
        snowParticles.contents = imageParticle
        snowParticles.name = "Snow"
        snowParticles.birthRate = 92.0
        snowParticles.lifetime = 30
        snowParticles.velocity = 59.0
        snowParticles.velocityRange = -15.0
        snowParticles.xAcceleration = 5.0
        snowParticles.yAcceleration = 40.0
        snowParticles.emissionRange = 180.0 * (.pi / 45)
        snowParticles.spin = -28.6 * (.pi / 180.0)
        snowParticles.spinRange = 57.2 * (.pi / 180.0)
        snowParticles.scale = 0.002
        snowParticles.scaleRange = 0.05
        snowParticles.color = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0).cgColor
        particlesLayer.emitterCells = [snowParticles]
        return host
    }
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    typealias UIViewType = UIView
}
