/* Preferred */

- (void)theMainMethod {
    [self firstMethod];
    [self secondMethod];
    [self thirdMethod];
}

- (void)firstMethod {
    [self firstMethodSubA];
    [self firstMethodSubB];
}

- (void)firstMethodSubA {
    
}

- (void)firstMethodSubB {
    
}

- (void)secondMethod {
    
}

- (void)thirdMethod {
    
}




/* Not Preferred */

- (void)firstMethodSubA {
    
}

- (void)firstMethodSubB {
    
}

- (void)firstMethod {
    [self firstMethodSubA];
    [self firstMethodSubB];
}

- (void)theMainMethod {
    [self firstMethod];
    [self secondMethod];
    [self thirdMethod];
}

- (void)thirdMethod {
    
}

- (void)secondMethod {
    
}