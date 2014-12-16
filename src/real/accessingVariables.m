/* The Good */

- (instancetype)init {
    self = [super init];
    if (self) {
        _items = @[];
        _itemsCount = 0;
    }
    return self;
}

- (void)setItems:(NSArray *)items {
    _items = items;
    self.itemsCount = 0;
}

- (void)clearItems {
    self.items = @[];   // This way we make sure setItems: will be executed
}





/* The Bad */
- (instancetype)init {
    self = [super init];
    if (self) {
        self.items = @[];
        self.itemsCount = 0;
        
        // As self isn't totally defined at this point, calling self.something is dangerous
    }
    return self;
}


- (void)setItems:(NSArray *)items {
    _items = items;
    self.itemsCount = 0;
}

- (void)clearItems {
    _items = @[];
    
    // Notice in this case that setItems: will never be called. In consequence we're missing itemsCount to be reset to 0.
}
