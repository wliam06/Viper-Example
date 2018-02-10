//
//  WelcomePresenter.swift
//  TestViper
//
//  Created by william on 3/14/17.
//  Copyright © 2017 PT. Kurio. All rights reserved.
//


class WelcomePresenter: WelcomeModuleInterface, WelcomeInteractorOutput{
    unowned let wireframe: WelcomeWireframe
    unowned let view: WelcomeView
    
    var interactor: WelcomeInteractorInput?
    
    init(wireframe: WelcomeWireframe, view: WelcomeView){
        self.wireframe = wireframe
        self.view = view
    }

    
    
    func viewButtonClicked() {
        print("Go to DetailView")
        
    }
    
    func buyButtonClicked() {
        print("")
    }
    

}
