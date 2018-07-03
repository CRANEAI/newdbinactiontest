

        //
        //  loginVC.swift
        //  Created by Elly


        import UIKit
        

        class loginVC: UIViewController {

            
            

            override func viewDidLoad() {
                super.viewDidLoad()

                
            }

            

        //Mark: Function to handle standard server based login
            func loginViaServer()
            {
                //Show generic loading model (extension can be customized in AppDelegate)
                let loadingSpinner = UIViewController.displaySpinner(onView: self.view)
                
                
                let urlString = URL(string: "http://jsonplaceholder.typicode.com/users/1")
                if let url = urlString {
                    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                        if error != nil {
                            
                            //Show alert for error associated to login
                            DispatchQueue.main.async {
                                let alert = UIAlertController(title: "Try Again", message: error as! String, preferredStyle: UIAlertControllerStyle.alert)
                                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                                self.present(alert, animated: true, completion: nil)
                            }

                            
                        } else {
                            
                           //Convert response from JSON to dictionary and error check contents
                            do {
                                let json = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! [String:Any]
                                
                                //Create a new user based on user class
                                let user = User(username: json["username"] as! String, uid: json["username"] as! String)

                                //Encode data for proper support
                                let encodedUserData = NSKeyedArchiver.archivedData(withRootObject: user)

                                //flag user as logged in and set a arcieved object that can be retrived and used elsewhere
                                UserDefaults.standard.set(encodedUserData, forKey: "user")
                                UserDefaults.standard.set(true, forKey: "isUserLoggedIn")
                                
                                //Hide Generic Loading View
                                UIViewController.removeSpinner(spinner: loadingSpinner)
                                
                                //Example printed on how to recall a user by decoding
                                let loggedInUserData = UserDefaults.standard.data(forKey: "user")
                                let loggedInUser = NSKeyedUnarchiver.unarchiveObject(with: loggedInUserData!) as! User
                                print(loggedInUser.uid )
                                
                                //Present next UI view
                                DispatchQueue.main.async(execute: {
                                    if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainTabBar") as? MainTabBar {
                                        self.present(viewController, animated: true, completion: nil)
                                    }
                                })

                                
                                

                                
                            } catch let error as NSError {
                                print(error)
                            }
                            
                            
                           
                        }
                    }
                    task.resume()
                }
                
                
            }


            
            
            

            


        }

        

    