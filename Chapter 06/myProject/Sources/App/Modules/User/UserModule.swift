import Vapor
import Fluent

struct UserModule: Module {

    var router: RouteCollection? { UserRouter() }
    
    var migrations: [Migration] {
        [
            UserMigration_v1_0_0(),
            UserMigrationSeed(),
        ]
    }
}
