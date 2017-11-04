import Foundation

enum FFTextAttributes:String {
	case bold = "bold"
	case dim = "dim"
	case underlined = "underlined"
	case inverted = "inverted"
	case hidden = "hidden"
	case `default` = "default"
	case black = "black"
	case red = "red"
	case green = "green"
	case yellow = "yellow"
	case blue = "blue"
	case magenta = "magenta"
	case cyan = "cyan"
	case lightGray = "lightGray"
	case darkGray = "darkGray"
	case defaultBak = "defaultBak"
	case blackBak = "blackBak"
        case redBak = "redBak"
        case greenBak = "greenBak"
        case yellowBak = "yellowBak"
        case blueBak = "blueBak"
        case magentaBak = "magentaBak"
        case cyanBak = "cyanBak"
        case lightGrayBak = "lightGrayBak"
        case darkGrayBak = "darkGrayBak"
	case whiteBak = "whiteBak"
}

class FFKit {

	static var uuid: String {
        	return URL(fileURLWithPath:FileManager.default.currentDirectoryPath).lastPathComponent
	}

	static func readPass() -> String? {
		print("<span class='hidden'>🔑", terminator:"")
		let value = readLine()
		print("</span>", terminator:"")
		return value
	}

	static func text(_ text_:String, withAttributes attributes:[FFTextAttributes]) -> String {
		var attributes_ = [String]()
	
		for attribute in attributes {
			attributes_.append(attribute.rawValue)
		}
		
		return "<span class='\(attributes_.joined(separator: " "))'>\(text_)</span>"
	} 
	
	static func showAlert(title:String?, message:String?, buttons:[String]) {
		if buttons.count == 0 {
			return print("Error: No buttons for alert!")
		}

		var alert = "<showAlert>"
		if title != nil {
			alert += "<title>\(title!)</title>"
		}

		if message != nil {
			alert += "<message>\(message!)</message>"
		}
		
		alert += "<buttons>"
	
		var index = 0
		for button in buttons {
			alert += button
			if buttons.count > index+1 {
				alert += "<bt>;"
			}

			index += 1
		}

		alert += "</buttons></showAlert>"

		return print(alert)
	} 
	

	static func clearShell() {
		print("Program output")
	}

	static func downloadExec() {
		print("DownloadBinaryFileNowInCurrentVC")
		system("pause ''")
	}

	static func showAI() {
		print("Show activity")
	}

	static func hideAI() {
		print("Hide activity")
	}

	static func createAppDir() {
        	if !FileManager.default.fileExists(atPath: FFKit.appDir) {
            		system("mkdir \(FFKit.appDir)")
        	}
    	}
    
    	static var appDir: String {
        	return "/home/swiftexec/.db/\(FFKit.uuid)/"
    	}
    
    	static func contentsOf(dir path:String) -> [String] {
        	var files = [String]()
        	if FileManager.default.fileExists(atPath: path) {
            		for file in try! FileManager.default.contentsOfDirectory(atPath: FFKit.appDir) {
                		files.append(appDir+"/"+file)
            		}
       		}
        
        	return files
    	}
    
    	static func contentsOf(file path:String) -> Data? {
        	return FileManager.default.contents(atPath: path)
    	}
    
    	static func create(dir path: String) {
        	system("mkdir '\(path)'")
    	}
    
    	static func create(file path: String) {
        	system("touch '\(path)'")
    	}
    
    	static func remove(item path: String) {
        	system("rm -rf '\(path)'")
    	}
    
    	static func write(text: String, toFile file:String, append: Bool) throws {
        	try text.write(to: URL(fileURLWithPath:file), atomically: append, encoding: String.Encoding.utf8)
    	}


}
