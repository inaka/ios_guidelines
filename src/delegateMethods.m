/* The Good */

@protocol GDRestaurantCellDelegate <NSObject>
- (void)restaurantCellDidRefresh:(GDRestaurantCell *)cell;
- (void)restaurantCell:(GDRestaurantCell *)cell willUpdateRestaurant:(GDRestaurant *)restaurant;
- (void)restaurantCell:(GDRestaurantCell *)cell didUpdateRestaurant:(GDRestaurant *)updatedRestaurant;
- (void)restaurantCell:(GDRestaurantCell *)cell shouldShowRatingStars:(BOOL)showStars;
@end

// When implementing these signatures within the class that conforms to this delegate protocol, you can easily realize that these methods belong to here.





/* The Bad */

@protocol GDRestaurantCellDelegate <NSObject>
- (void)refreshedRestaurantCell;
- (void)updatedRestaurant;
- (void)showRatingStars:(BOOL)showStars;
@end

// When implementing these signatures within the class that conforms to this delegate protocol, these methods can easily be confused with private methods of that class, or with other methods that are also included in that class but have nothing to do with this delegate.