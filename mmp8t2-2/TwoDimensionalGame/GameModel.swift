import Foundation

enum Direction {
    case north, east, west, south
}

struct Coordinate {
    let x: Int
    let y: Int
}

struct Location {
    let coordinate: Coordinate
    let allowedDirections: [Direction]
    let event: String?
}

struct Row {
    let locations: [Location]
}

class GameModel {
    private var grid = [Row]()
    
    private var currentRowIndex = 0          // start at (x: 0, y: 0)
    private var currentLocationIndex = 0
    
    private let minXYvalue = -2
    private let maxXYvalue = 2
    
    init() {
        self.grid = createGameGrid()
    }
}

// MARK: - Public facing methods
extension GameModel {
    func restart() {
        currentRowIndex = 0
        currentLocationIndex = 0
    }
    
    func currentLocation() -> Location {
        
        // HINT: - You will need to replace the following
        let coordinate = Coordinate(x: currentRowIndex, y: currentLocationIndex)
        let allowedButtons: [Direction] = allowedDirections(forCoordinate: coordinate)
        let events: String? = event(forCoordinate: coordinate)
        
        return Location(coordinate: coordinate, allowedDirections: allowedButtons, event: events)
    }
    
    func move(direction: Direction) {
        
        if case .north = direction{
            currentLocationIndex -= 1
            
        }
        if case .south = direction{
            currentLocationIndex += 1
        }
        if case .west = direction{
            currentRowIndex -= 1
        }
        if case .east = direction{
            currentRowIndex += 1
        }
        
    }
}

// MARK: - Helper methods for creating grid
extension GameModel {
    private func createGameGrid() -> [Row] {
        let possibleXYValues = Array(minXYvalue...maxXYvalue)
        let gameGrid: [Row] = possibleXYValues.map { yValue in
            let locations: [Location] = possibleXYValues.map { xValue in
                let coordinate = Coordinate(x: xValue, y: yValue)
                let allowedDirections = self.allowedDirections(forCoordinate: coordinate)
                let event = self.event(forCoordinate: coordinate)
                
                return Location(coordinate: coordinate, allowedDirections: allowedDirections, event: event)
            }
            
            return Row(locations: locations)
        }
        
        return gameGrid
    }
    
    private func allowedDirections(forCoordinate coordinate: Coordinate) -> [Direction] {
        var directions = [Direction]()
        
        switch coordinate.y {
        case minXYvalue: directions += [.south]
        case maxXYvalue: directions += [.north]
        default: directions += [.north, .south]
        }
        
        switch coordinate.x {
        case minXYvalue: directions += [.east]
        case maxXYvalue: directions += [.west]
        default: directions += [.east, .west]
        }
        
        return directions
    }
    
    private func event(forCoordinate coordinate: Coordinate) -> String? {
        var event = ""
        switch (coordinate.x, coordinate.y) {
        case (0,0):
            event = "Welcome to Cat Table Game 😺"
        case (0,-2):
            event = "You pushed a cup off the table 😹"
        case (0,2):
            event = "You pushed a bowl off the table 😸"
        case (2,0):
            event = "You spilled a soda 😼"
        case (-2,0):
            event = "Bye-Bye remote control 😽"
        case (-2,-2):
            event = "Almost fell off 🙀"
        case (2,-2):
            event = "30 mins since last feeding 😿"
        case (2,2):
            event = "Time to pounce on owner 😾"
        default:
            event = ""
        }
       
        return event
    }
}
