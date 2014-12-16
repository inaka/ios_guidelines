/* The Good */

- (void)someMethod {
    if (![someOther boolValue]) {
        return;
    }
    
    //Do something important
}

/* The Bad */

- (void)someMethod {
    if ([someOther boolValue]) {
        //Do something important
    }
}