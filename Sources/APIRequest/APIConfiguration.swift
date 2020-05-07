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

public class APIConfiguration {
    
    // Default configuration
    public static var current: APIConfiguration?
    
    // Configuration variables
    public var host: String
    public var scheme: String
    public var port: Int
    public var headers: () -> ([String: String])
    
    /// Initialize a configuration
    /// - Parameters:
    ///   - host: The server host
    ///   - protocol: The server protocol (http/https)
    ///   - port: The server port
    public init(host: String, scheme: String = "https", port: Int = 443, headers: @escaping () -> ([String: String]) = { return [:] }) {
        self.host = host
        self.scheme = scheme
        self.port = port
        self.headers = headers
    }
    
}