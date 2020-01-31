import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var event: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var northOut: UIButton!
    @IBOutlet weak var southOut: UIButton!
    @IBOutlet weak var westOut: UIButton!
    @IBOutlet weak var eastOut: UIButton!
    
    
    
    
    var model: GameModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        model = GameModel()
        event.text = "Event Log:\nWelcome to Cat Table Game 😺"
        
    }
    
    @IBAction func north(_ sender: Any) {
        model.move(direction: Direction.north)
        let curlocation = model.currentLocation()
        let x = curlocation.coordinate.x
        let y = curlocation.coordinate.y
        
        
        
        print(curlocation)
        location.text = "Current Location:\n(x: " + String(x) + ", y: " + String(y) + ")"
        event.text = "Event Log:\nMoved North\n"
        if let events = curlocation.event {        event.text = "Event Log:\nMoved North\n" + events
        }
        if curlocation.allowedDirections.contains(.north)  { northOut.isEnabled = true }
        else{
            northOut.isEnabled = false
        }
        if curlocation.allowedDirections.contains(.south)  { southOut.isEnabled = true }
        else{
            southOut.isEnabled = false
        }
        if curlocation.allowedDirections.contains(.west)  { westOut.isEnabled = true }
        else{
            westOut.isEnabled = false
        }
        if curlocation.allowedDirections.contains(.east)  { eastOut.isEnabled = true }
        else{
            eastOut.isEnabled = false
        }
    }
    @IBAction func south(_ sender: Any) {
        model.move(direction: Direction.south)
        let curlocation = model.currentLocation()
        let x = curlocation.coordinate.x
        let y = curlocation.coordinate.y
        location.text = "Current Location:\n(x: " + String(x) + ", y: " + String(y) + ")"
        event.text = "Event Log:\nMoved South"
        if let events = curlocation.event {        event.text = "Event Log:\nMoved South\n" + events
        }
        if curlocation.allowedDirections.contains(.north)  { northOut.isEnabled = true }
        else{
            northOut.isEnabled = false
        }
        if curlocation.allowedDirections.contains(.south)  { southOut.isEnabled = true }
        else{
            southOut.isEnabled = false
        }
        if curlocation.allowedDirections.contains(.west)  { westOut.isEnabled = true }
        else{
            westOut.isEnabled = false
        }
        if curlocation.allowedDirections.contains(.east)  { eastOut.isEnabled = true }
        else{
            eastOut.isEnabled = false
        }
        
    }
    @IBAction func west(_ sender: Any) {
        model.move(direction: Direction.west)
        let curlocation = model.currentLocation()
        let x = curlocation.coordinate.x
        let y = curlocation.coordinate.y
        location.text = "Current Location:\n(x: " + String(x) + ", y: " + String(y) + ")"
        event.text = "Event Log:\nMoved West"
        if let events = curlocation.event {        event.text = "Event Log:\nMoved West\n" + events
        }
        if curlocation.allowedDirections.contains(.north)  { northOut.isEnabled = true }
        else{
            northOut.isEnabled = false
        }
        if curlocation.allowedDirections.contains(.south)  { southOut.isEnabled = true }
        else{
            southOut.isEnabled = false
        }
        if curlocation.allowedDirections.contains(.west)  { westOut.isEnabled = true }
        else{
            westOut.isEnabled = false
        }
        if curlocation.allowedDirections.contains(.east)  { eastOut.isEnabled = true }
        else{
            eastOut.isEnabled = false
        }
        
    }
    @IBAction func east(_ sender: Any) {
        model.move(direction: Direction.east)
        let curlocation = model.currentLocation()
        let x = curlocation.coordinate.x
        let y = curlocation.coordinate.y
        location.text = "Current Location:\n(x: " + String(x) + ", y: " + String(y) + ")"
        event.text = "Event Log:\nMoved East"
        if let events = curlocation.event {        event.text = "Event Log:\nMoved East\n" + events
        }
        if curlocation.allowedDirections.contains(.north)  { northOut.isEnabled = true }
        else{
            northOut.isEnabled = false
        }
        if curlocation.allowedDirections.contains(.south)  { southOut.isEnabled = true }
        else{
            southOut.isEnabled = false
        }
        if curlocation.allowedDirections.contains(.west)  { westOut.isEnabled = true }
        else{
            westOut.isEnabled = false
        }
        if curlocation.allowedDirections.contains(.east)  { eastOut.isEnabled = true }
        else{
            eastOut.isEnabled = false
        }
        
    }
    @IBAction func restart(_ sender: Any) {
        model.restart()
        let curlocation = model.currentLocation()
        let x = curlocation.coordinate.x
        let y = curlocation.coordinate.y
        location.text = "Current Location:\n(x: " + String(x) + ", y: " + String(y) + ")"
        event.text = "Event Log:"
        if let events = curlocation.event {        event.text = "Event Log:\n" + events
        }
        if curlocation.allowedDirections.contains(.north)  { northOut.isEnabled = true }
        else{
            northOut.isEnabled = false
        }
        if curlocation.allowedDirections.contains(.south)  { southOut.isEnabled = true }
        else{
            southOut.isEnabled = false
        }
        if curlocation.allowedDirections.contains(.west)  { westOut.isEnabled = true }
        else{
            westOut.isEnabled = false
        }
        if curlocation.allowedDirections.contains(.east)  { eastOut.isEnabled = true }
        else{
            eastOut.isEnabled = false
        }
        
    }
    
    
}
