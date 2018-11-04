import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {

    let homeController = HomeController()
    router.get("", use: homeController.index)
}
