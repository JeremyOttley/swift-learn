// add @main attribute to struct or class OR create a file main.swift
// one or the other as an entry point but not both

import Figlet

@main
struct FigletTool {
  static func main() {
    Figlet.say("Hello, Swift!")
  }
}
