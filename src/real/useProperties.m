/* The Good */

@interface ItemsViewController ()

@property (strong, nonatomic) NSArray *items;
@property (readwrite, nonatomic) NSInteger itemsCount;

@end

/* The Bad */

@interface ItemsViewController () {
    NSArray *items;
    NSInteger itemsCount;
}