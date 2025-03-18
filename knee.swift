import Foundation

// Method 1: Using ProcessInfo (simplest)
func waitAndBeep() {
    let startTime = ProcessInfo.processInfo.systemUptime
    while ProcessInfo.processInfo.systemUptime - startTime < 1500 { // 1500 seconds = 25 minutes
        // Keep the thread alive but not busy
        Thread.sleep(forTimeInterval: 1)
    }
    print("beep")
}

// Method 2: Using Dispatch (more modern)
func waitAndBeepDispatch() {
    DispatchQueue.main.asyncAfter(deadline: .now() + 1500) {
        print("beep")
    }
}

// Method 3: Using Timer (most flexible)
func waitAndBeepTimer() {
    Timer.scheduledTimer(withTimeInterval: 1500, repeats: false) { _ in
        print("beep")
    }
}
