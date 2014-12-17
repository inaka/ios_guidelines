/* Preferred */


// GDRestaurantCell.h
@property (strong, nonatomic) GDRestaurant *restaurant;


// GDRestaurantCell.m
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *subtitleLabel;
@property (strong, nonatomic) IBOutlet UIImageView *thumbnailImageView;

- (void)setRestaurant:(GDRestaurant *)restaurant {
    _restaurant = restaurant;
    
    self.titleLabel.text = restaurant.name;
    self.subtitleLabel.text = restaurant.address;
    self.thumbnailImageView.image = restaurant.image;
}


// GDRestaurantViewController.m
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // ...
    GDRestaurantCell *cell = [GDRestaurantCell cell];
    GDRestaurant *restaurant = [self restaurantAtIndexPath:indexPath];
    
    cell.restaurant = restaurant;
    // ...
}











/* Not Preferred */


// GDRestaurantCell.h
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *subtitleLabel;
@property (strong, nonatomic) IBOutlet UIImageView *thumbnailImageView;


// GDRestaurantViewController.m
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // ...
    GDRestaurantCell *cell = [GDRestaurantCell cell];
    GDRestaurant *restaurant = [self restaurantAtIndexPath:indexPath];
    
    cell.titleLabel.text = restaurant.name;
    cell.subtitleLabel.text = restaurant.address;
    cell.thumbnailImageView.image = restaurant.image;
    // ...
}