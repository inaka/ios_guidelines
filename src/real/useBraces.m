/* The Good */

- (void)someMethod {
    if (!self.itemsCount) {
        return;
    }
    
    [self showAlert];
}

/* The Bad */

- (void)someMethod {
    if (!self.itemsCount)
        return;
    
    [self showAlert];
}
