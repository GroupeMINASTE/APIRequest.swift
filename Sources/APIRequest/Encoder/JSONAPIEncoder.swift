/*
*  Copyright (C) 2020 Groupe MINASTE
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License along
* with this program; if not, write to the Free Software Foundation, Inc.,
* 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
*
*/

import Foundation

public class JSONAPIEncoder: APIEncoder {
    
    /// Encode the object to JSON
    /// - Parameters:
    ///   - object: The object to Encode
    /// - Returns: The encoded data, or nil if an error occurs
    public func encode(from object: Encodable) -> Data? {
        return object.toJSONData()
    }
    
    /// Encode the dictionary to JSON
    /// - Parameters:
    ///   - object: The object to Encode
    /// - Returns: The encoded data, or nil if an error occurs
    public func encode(from dictionary: [String: Any]) -> Data? {
        return try? JSONSerialization.data(withJSONObject: dictionary, options: .prettyPrinted)
    }
    
    /// Content type of the request
    /// For JSON, it's `application/json`
    public var contentType: String? {
        "application/json"
    }
    
}
