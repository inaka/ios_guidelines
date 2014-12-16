/* The Good */

// > Methods are grouped into different sections, labeled with pragma marks
// > Methods are ordered
// > Delegate protocol methods are easy to keep track of
// > Separation of class internal private methods

@implementation SomeImplementation

#pragma mark - Lifecycle

+ (instancetype)someConstructor {
    return something;
}

+ (instancetype)someConstructorWithArgument:(Argument)someArgument {
    return something;
}

#pragma mark - Accessors

- (void)setSomeProperty:(SomeProperty)withCustomSetter {
    
}

#pragma mark - SomeDelegate

- (void)someDelegateMethod {
    
}

- (void)someDelegateMethodNeedsYourAtention {
    
}

#pragma mark - SomeOtherDelegate

- (void)someOtherDelegateMethod {
    
}

- (void)someOtherDelegateMethodAlsoNeedsAtentionHere {
    
}

- (void)someOtherDelegateMethodYouWillEasilyKeepTrackOf {
    
}

#pragma mark - Private

- (void)somePrivateMethod {
    
}

- (void)someOtherPrivateMethod {
    
}

- (void)yetAnotherPrivateMethod {
    
}

@end





/* The Bad */

// > Methods have neither order nor labeling at all
// > The class feels like a bag full of unsorted stuff
// > You don't easily visualize delegation
// > Reading and finding things takes more time

@implementation MPSeatingSelectionView

+ (instancetype)someConstructor {
    return something;
}

- (void)somePrivateMethod {
    
}

+ (instancetype)someConstructorWithArgument:(Argument)someArgument {
    return something;
}

- (void)someOtherDelegateMethodYouWillHardlyKeepTrackOf {
    
}

- (void)yetAnotherPrivateMethod {
    
}

- (void)someDelegateMethod {
    
}

- (void)someDelegateMethodNeedsYourAtention {
    
}

- (void)setSomeProperty:(SomeProperty)withCustomSetter {
    
}

- (void)someOtherDelegateMethodAlsoNeedsAtentionHere {
    
}

- (void)someOtherPrivateMethod {
    
}

- (void)someOtherDelegateMethod {
    
}

@end


