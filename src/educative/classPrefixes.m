// Class Prefixes example

// In this case, the project is called SomeProject.
// Therefore, preferred class prefix should be 'SP'





/* The Good */

// SPAnyClass.h
@interface SPAnyClass : NSObject

// SPAnyViewController.h
@interface SPAnyViewController : UIViewController





/* The Bad */

// AnyClass.h
@interface AnyClass : NSObject

// AnyViewController.h
@interface AnyViewController : UIViewController