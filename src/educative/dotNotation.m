/* The Good */
NSString *aString = someInstance.someString;
NSInteger anInteger = someInstance.someInteger;
UIView *view = self.someView;
view.someProperty = [SomeClass someClassMethod];
SomeOtherClass *sharedInstance = [SomeOtherClass singletonMethod];


/* The Bad */
NSString *aString = [someInstance someString];
NSInteger anInteger = [someInstance someInteger];
UIView *view = [self someView];
[view setSomeProperty:[SomeClass someClassMethod]];
SomeOtherClass *sharedInstance = SomeOtherClass.singletonMethod;