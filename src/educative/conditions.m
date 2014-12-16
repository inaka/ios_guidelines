/* The Good */

- (void)someMethod {
    if ([self someComplexCondition]) {
        // do something
    }
}

- (BOOL)someComplexCondition {
    return ((self.something + self.somethingElse) * self.someFactor) < self.someTreshold;
}





/* The Bad */

- (void)someMethod {
    if (((self.something + self.somethingElse) * self.someFactor) < self.someTreshold) {
        // do something
    }
}