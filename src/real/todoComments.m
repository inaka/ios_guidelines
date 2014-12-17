/* Preferred */

// > Consistent
// > Syntax is always '// TODO:'
// > Easy to look up for

- (void)someMethod {
    // ...
    theater.tribuneTheaterID = 10955; // TODO: Remove hardcoded value
    // ...
}

- (void)someOtherMethod {
    // ...
    
    // TODO: this is a temporary fix to #809.
    // Until we can figure the exact cause of the crash, going with the ivar instead of the setter
    //        self.cancelBlock = nil;
    _cancelBlock = nil;
    
    // ...
}

- (void)yetAnotherMethod {
    // ...
    
    // TODO: Remove hardcoded credentials!!! Just for testing.
    self.username = @"inaka";
    self.password = @"123456";
    
    // ...
}




/* Not Preferred */

// > Inconsistent
// > Syntax is always different
// > Hard to find, easy to forget

- (void)someMethod {
    // ...
    theater.tribuneTheaterID = 10955; //TODO: Remove hardcoded value
    // ...
}

- (void)someOtherMethod {
    // ...
    
    // TODO: this is a temporary fix to #809.
    // Until we can figure the exact cause of the crash, going with the ivar instead of the setter
    //        self.cancelBlock = nil;
    _cancelBlock = nil;
    
    // ...
}

- (void)yetAnotherMethod {
    // ...
    
    // Warning: Remove hardcoded credentials!!! Just for testing.
    self.username = @"inaka";
    self.password = @"123456";
    
    // ...
}