/***** The Good *****/


/* FLAppleCell.h */

#import <UIKit/UIKit.h>

@class FLApple; // FLAppleCell.h only needs to know that there is an FLApple class in order to be able to be compiled.

@interface FLAppleCell : UITableViewCell

@property (strong, nonatomic) FLApple *apple;

@end


/* FLAppleCell.m */

#import "FLAppleCell.h"
#import "FLApple.h" // Since FLAppleCell.m is leveraging FLApple's properties, then this file needs to know about FLApple's details. Therefore, an #import is needed here.

@interface FLAppleCell ()

@property (weak, nonatomic) IBOutlet UILabel *weightLabel;

@end

@implementation FLAppleCell

- (void)setApple:(FLApple *)apple {
    _apple = apple;
    self.weightLabel.text = [NSString stringWithFormat:@"Weight: %.2f", apple.weight];  // apple.weight is the property that needs to be read from FLApple.h
}

@end





/***** The Bad *****/


/* FLAppleCell.h */

#import <UIKit/UIKit.h>
#import "FLApple.h" // See that, when importing this file here, every file that imports FLAppleCell.h will import FLApple.h too. This makes the compilation process much slower and might lead to end up with an endless #import cycle.

@interface FLAppleCell : UITableViewCell

@property (strong, nonatomic) FLApple *apple;

@end


/* FLAppleCell.m */

#import "FLAppleCell.h"

@interface FLAppleCell ()

@property (weak, nonatomic) IBOutlet UILabel *weightLabel;

@end

@implementation FLAppleCell

- (void)setApple:(FLApple *)apple {
    _apple = apple;
    self.weightLabel.text = [NSString stringWithFormat:@"Weight: %.2f", apple.weight];
}

@end