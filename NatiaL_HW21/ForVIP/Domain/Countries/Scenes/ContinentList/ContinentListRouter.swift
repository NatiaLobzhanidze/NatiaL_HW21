//
//  ContinentListRouter.swift
//  NatiaL_HW21
//
//  Created by Natia's Mac on 11.08.22.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol ContinentListRoutingLogic
{
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol ContinentListDataPassing
{
  var dataStore: ContinentListDataStore? { get }
}

class ContinentListRouter: NSObject, ContinentListRoutingLogic, ContinentListDataPassing
{
  weak var viewController: ContinentListViewController?
  var dataStore: ContinentListDataStore?
  
  // MARK: Routing
  
  //func routeToSomewhere(segue: UIStoryboardSegue?)
  //{
  //  if let segue = segue {
  //    let destinationVC = segue.destination as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  } else {
  //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
  //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //    navigateToSomewhere(source: viewController!, destination: destinationVC)
  //  }
  //}

  // MARK: Navigation
  
  //func navigateToSomewhere(source: ContinentListViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: ContinentListDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
