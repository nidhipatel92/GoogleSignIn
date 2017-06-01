# GoogleSignIn
Google Sign In Swift
Steps for implement GoogleSignIn :
1) Create project.
2) Two way to install google framework a) Manually b) Using Pods
3) Here implement pods.
  -> These steps for install pods:
     - First open terminal and write "sudo gem install cocoapods".
     - Go project folder cd FOLDERNAME.
     - pod init
     - Open podfile. Comment the next line "use_frameworks! " and write
          pod 'Google'
	        pod 'Google/SignIn'
     - pod install
     - open workspace and write code.
4) Open https://console.developers.google.com/ 
5) Create project and open that project enable Google+ API
  - Open Credentials and create Oauth client id.
6) AppDelegate file 
      func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: 
      [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        GIDSignIn.sharedInstance().clientID = "CLIENT ID"
        return true
    }
7) Target -> Info -> URLType. Click on + button add to URL scheme and also add bundle identifier.
8) Set delegate to viewWillAppear
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().delegate = self
9) Button click event add "GIDSignIn.sharedInstance().signIn()"
10) These are delegate method of GIDSignInDelegate:
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
    }
    
    func sign(_ signIn: GIDSignIn!, didDisconnectWith user: GIDGoogleUser!, withError error: Error!) {
    }




