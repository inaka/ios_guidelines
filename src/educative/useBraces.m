/* The Good */

- (void)anyMethod {
    if (safeConditional) {
        return;
    }
}

/* The Bad */

- (void)anyMethod {
    if (unsafeConditional)
        return;
}
