/* The Good */

- (instancetype)init {
    self = [super init];
    if (self) {
        _accessingCorrectly = YES;
    }
    return self;
}

- (void)setSomething:(Something *)something
    _something = something;
    self.wellAccessed = YES;
}

- (void)someMethod {
    self.something = [Something alloc] init];
}





/* The Bad */
- (instancetype)init {
    self = [super init];
    if (self) {
        self.accessingCorrectly = NO;
    }
    return self;
}

- (void)setSomething:(Something *)something
    self.something = something; // endless accessor call loop
    _wellAccessed = NO;
}

- (void)someMethod {
    _something = [Something alloc] init];   // wrong
}
