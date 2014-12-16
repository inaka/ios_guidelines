/* The Good */
- (NSArray *)restaurantsWithDiscountFromRestaurants:(NSArray *)restaurants;

// When starting like this (describing the returned argument), you realize easily what the return argument is expected to be.





/* The Bad */
- (NSArray *)filterRestaurantsWithDiscountFrom:(NSArray *)restaurants;

// When using a verb to name such a method, it's likely the method will perform some action into (or from) a argument passed in without returning anything.