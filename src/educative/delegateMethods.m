/* The Good */

@protocol SomeClassDelegate <SomeProtocol>
- (void)someClassDidRefresh:(SomeClass *)someInstance;
- (void)someClass:(SomeClass *)someInstance willUpdateSomething:(Something *)something;
- (void)someClass:(SomeClass *)someInstance didUpdateSomething:(Something *)something;
- (void)SomeClass:(SomeClass *)someInstance shouldShowSomething:(BOOL)showSomething;
@end

// When implementing these signatures within the class that conforms to this delegate protocol, you can easily realize that these methods belong to here.





/* The Bad */

@protocol SomeClassDelegate <SomeProtocol>
- (void)refreshedSomeClassInstance;
- (void)updatedSomething;
- (void)showSomething:(BOOL)showSomething;
@end

// When implementing these signatures within the class that conforms to this delegate protocol, these methods can easily be confused with private methods of that class, or with other methods that are also included in that class but have nothing to do with this delegate.