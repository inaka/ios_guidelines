/* Preferred */

// GDRestaurantCell.h
+ (instancetype)cellWithDelegate:(id<GDRestaurantCellDelegate>)delegate;

// GDRestaurantViewController.m
GDRestaurantCell *cell = [GDRestaurantCell cellWithDelegate:self];





/* Not Preferred */

// GDRestaurantCell.h
+ (instancetype)cellWithDelegate:(id<GDRestaurantCellDelegate>)delegate;

// GDRestaurantViewController.m
GDRestaurantCell *cell = [GDRestaurantCell cell];
cell.delegate = self;