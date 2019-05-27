//
//  HomeController.swift
//  App
//
//  Created by Mohamed Ali on 01/11/2018.
//

import Foundation
import Vapor


final class HomeController {
    
    let projects = [
        Project(id: nil,
                title: "Eurosport",
                description: "I contracted on Eurosport : Eurosport is the only application which can propose you all the news and results : football, rugby, tennis, winter olympics, PyeongChang 2018, Formula 1, cyclism, basketball, athleticism, handball, WRC, WTCC, ERC, Dakar’s race, Superbike, GP2, WEC, World Series by Renault, Abarth’s trophy, golf, Biathlon, alpine skiing, ice hockey, judo, fencing, boxing, snooker, US Football, University’s sports, equitation",
                appIcon: "images/portfolio/eurosport-app.jpg",
                role: "Manage the overall responsibility for code quality, reviews and development level testing, ensuring technical features are delivered to support all non-functional requirements. Translate technical designs into quality-engineered code using industry best practices and standards-based development. Key decision maker in application architecture guidance and project planning and execution.",
                appLink: "https://itunes.apple.com/app/eurosport/id324021126?mt=8",
                technologie: "Swift, Objective C, GoogleAd",
                image: "images/portfolio/eurosport.png",
                link:  "https://itunes.apple.com/app/eurosport/id324021126?mt=8"
        ),
        Project(id: nil,
                title: "Muller Intuitiv",
                description: "I contracted on Muller Intuitiv with Netatmo solution allows APPLIMO, AIRELEC, CAMPA & NOIROT electric heaters to adjust and customize your room to the desired level of comfort, and to track down any waste to optimize energy savings. The new Muller Intuitiv with Netatmo connection module, co-created in partnership with Netatmo, adapts to Smart ECOcontrol® and 3.0 electric radiator ranges.",
                appIcon: "images/portfolio/muller-intuitiv-app.jpg",
                role: "Built the version 1.0 as part of a team of three. Focused on building the UI and logic.",
                appLink: "https://itunes.apple.com/fr/app/muller-intuitiv-with-netatmo/id1282275284?mt=8",
                technologie: "Swift, Homekit, Real time, Programmatic User Interface",
                image: "images/portfolio/muller-intuitiv.jpg",
                link:  "https://www.muller-intuitiv.com"
                ),
        Project(id: nil,
                title: "ClashTV",
                description: "I contracted on ClashTV : ClashTV is the only application that allows you to watch TV and comment freely. The messaging is free, you can comment live on your favorite show and/or see what people think about it in real time. ClashTV integrates an IPTV player, enter your link to watch TV.",
                appIcon: "images/portfolio/clashtv-app.png",
                role: "Built the version 1.0. Focused on building the UI and logic.",
                appLink: "https://itunes.apple.com/fr/app/clashtv/id1448221179",
                technologie: "Swift, Real time, Programmatic User Interface",
                image: "images/portfolio/clashtv.png",
                link:  "https://itunes.apple.com/fr/app/clashtv/id1448221179"
        ),
        Project(id: nil,
                title: "Piksa",
                description: "I contracted on Piksa : PIKSA is the most honest place on the internet. See what your friends think of you , answer anonymous questions and ask others the things you have never dare to ask",
                appIcon: "images/portfolio/piksa-app.png",
                role: "Built the version 1.0. Focused on building the UI and logic.",
                appLink: "https://www.piksa.io",
                technologie: "Swift, Real time, Programmatic User Interface",
                image: "images/portfolio/piksa.jpg",
                link:  "https://www.piksa.io"
        ),
        Project(id: nil,
                title: "Indoor Geoloc",
                description: "An application which localises people indoor building, it's using magnestim sensor of mobile device.",
                appIcon: "images/portfolio/bandloc-app.jpg",
                role: "I was the sole iOS Developer on the project from zero to version 1.0.",
                appLink: "https://itunes.apple.com/us/app/b-loc/id1218772018",
                technologie: "Swift, Real time, Corelocation, IndoorsAtlas",
                image: "images/portfolio/bandloc.png",
                link:  "https://www.bouygues-es.com/"
        ),
        Project(id: nil,
                title: "AiOControl",
                description: "The only application that allows you to make the settings of your projection screen, your motorized support and your video projector at your fingertips. Save time and comfort while setting up your devices and enjoy the most user-friendly everyday use.",
                appIcon: "images/portfolio/aiocontrol-app.jpg",
                role: "I was the sole iOS Developer on the project from zero to version 1.0.",
                appLink: "https://itunes.apple.com/us/app/aiocontrol/id1308384596?mt=8",
                technologie: "Swift, Real time, Corelocation, IndoorsAtlas",
                image: "images/portfolio/aiocontrol.jpg",
                link:  "https://www.avconceptproducts.com/systeme-de-controle-homecinema-sans-fil-aiocontrol"
        ),
        Project(id: nil,
                title: "Smice",
                description: "Smice is the first mobile application dedicated to mystery shoppers in particular, and to quality auditors in general.",
                appIcon: "images/portfolio/smice-app.jpg",
                role: "I was in charge to add some new feature as an offline mode and update design",
                appLink: "https://itunes.apple.com/us/app/smice/id579002700?mt=8",
                technologie: "Objective C, CoreData, Reachability",
                image: "images/portfolio/smice.png",
                link:  "http://smice.com/smice-pro/"
        ),
        Project(id: nil,
                title: "Houtchi",
                description: "A mobile application which allows users giving their opinion on any trade in exchange for a discount.",
                appIcon: "images/portfolio/houtchi-app.jpg",
                role: "I was the sole iOS Developer on the project from zero to version 1.0",
                appLink: "https://itunes.apple.com/us/app/smice/id579002700?mt=8",
                technologie: "Java, CoreData, Reachability",
                image: "images/portfolio/houtchi.jpg",
                link:  "https://itunes.apple.com/fr/app/houtchi/id890977280?mt=8"
        ),

    ]

    let testimonials = [
        Testimonial(id: nil,
                    name: "Carlos",
                    image: "",
                    description: "Great job",
                    job: "Chief mobile application\n",
                    company: "Netatmo")
    ]
    
    func index(_ req: Request) throws -> Future<View> {
        let user = User(id: nil,
                        name: "Mohamed ali",
                        projects: self.projects,
                        testimonials: self.testimonials)
        
        return try req.view().render("index", ["user": user])
    }
    
}
