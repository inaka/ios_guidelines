/* The Good */
+ (instancetype)restaurantWithDictionary:(NSDictionary *)dictionary delegate:(id <GDRestaurantDelegate>)delegate;

/* The Bad */
+ (instancetype)restaurantWithDictionary:(NSDictionary *)dictionary andDelegate:(id <GDRestaurantDelegate>)delegate;