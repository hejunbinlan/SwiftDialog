// Copyright 2014 Thomas K. Dyas
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import UIKit

public class Element : NSObject {
    public weak var parent: Element? = nil
    
    public var root: RootElement? {
        get {
            var elementOpt = self.parent
            
            while (elementOpt != nil) {
                if let element = elementOpt {
                    if let elementAsRoot = element as? RootElement {
                        return elementAsRoot
                    }

                    elementOpt = element.parent
                }
            }
            
            return nil
        }
    }
    
    public func getCell(tableView: UITableView) -> UITableViewCell! {
        fatalError("This method must be overridden")
    }
    
    public func elementSelected(dialogController: DialogController, tableView: UITableView, atPath indexPath: NSIndexPath) {
    }

    public func elementDeselected(dialogController: DialogController, tableView: UITableView, atPath indexPath: NSIndexPath) {
    }
    
    public func accessoryButtonTapped(dialogController: DialogController, tableView: UITableView, atPath indexPath: NSIndexPath) {
    }
}
