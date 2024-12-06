import UIKit

protocol Monster {
    var name: String { get }
    
    func roar() -> String
}

protocol FlyingMonster: Monster {
    var wingSpan: Double { get }
    
    func fly() -> String
}

protocol WaterMonster: Monster  {
    var swimSpeed: Int { get }
    
    func swim() -> String
}

class Dragon: FlyingMonster {
    var name: String
    var wingSpan: Double
    
    init(name: String , wingSpan: Double) {
        self.name = name
        self.wingSpan = wingSpan
    }
    func roar() -> String {
        return "\(self.name)roars fiercely, shaking the ground!"
    }
    
    func fly() -> String {
        return "\(self.name)spreads it's \(self.wingSpan)-meter wings and takes to the sky!"
    }
}

class Gryphon: FlyingMonster {
    var name: String
    var wingSpan: Double
    
    init(name: String, wingSpan: Double) {
        self.name = name
        self.wingSpan = wingSpan
    }
    func roar() -> String {
        return "\(self.name)screeches with a piercing cry!"
    }
    func fly() -> String {
        return "\(self.name)soars high with it's majestic \(self.wingSpan)-meter wings! "
    }
    
}

class Kraken: WaterMonster {
    var name: String
    var swimSpeed: Int
    
    init(name: String , swimSpeed: Int) {
        self.name = name
        self.swimSpeed = swimSpeed
    }
    func roar() -> String {
        return "\(self.name)bellows from the deep, causing waves to crash!"
    }
    func swim() -> String {
        return "\(self.name)glides through the water at \(self.swimSpeed) knots! "
    }
}

class Merfolk: WaterMonster {
    var name: String
    var swimSpeed: Int
    
    init(name: String , swimSpeed: Int) {
        self.name = name
        self.swimSpeed = swimSpeed
    }
    func roar() -> String {
        return "\(self.name)sings an enchanting melody that stirs the seas!"
    }
    func swim() -> String {
        return "\(name)swims gracefully at \(self.swimSpeed) knots!"
    }
}

func printMonsterDetails(monsters: [Monster]) {
    for monster in monsters {
        print(monster.roar())
        
        if let flyingMonster = monster as? FlyingMonster {
            print(flyingMonster.fly())
            
        }else if let waterMonster = monster as? WaterMonster {
            print(waterMonster.swim())
        }
        print("-------------------------")
    }
    
}

let dragon:  Dragon = Dragon(name: "Fire Drake ", wingSpan: 15.0)
let gryphon: Gryphon = Gryphon(name: "Sky Hunter ", wingSpan: 12.0)
let kraken:  Kraken = Kraken(name: "Sea Terror ", swimSpeed: 20)
let merfolk: Merfolk = Merfolk(name: "Coral Queen ", swimSpeed: 10)

var monsters: [Monster] = [dragon, gryphon, kraken, merfolk]
printMonsterDetails(monsters: monsters)
