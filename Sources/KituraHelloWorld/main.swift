/**
 * Copyright IBM Corporation 2016
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Foundation

import Kitura
import KituraHelloWorldRouter

import LoggerAPI
import HeliumLogger

// All Web apps need a router to define routes
let router = RouterCreator.create()

// Using an implementation for a Logger
Log.logger = HeliumLogger()

// Use port 8080 unless overridden by environment variable
let port = Int(ProcessInfo.processInfo.environment["PORT"] ?? "8080") ?? 8080

// Add HTTP Server to listen on the port
Kitura.addHTTPServer(onPort: port, with: router)

// start the framework - the servers added until now will start listening
Kitura.run()
