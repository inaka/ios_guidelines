/* The Good */

#import "SeatButton.h"
#import "Seat.h"

CGSize MPSeatButtonSize = {20.0f, 20.0f};

@interface MPSeatButton ()

@end

@implementation MPSeatButton

#pragma mark - Lifecycle

+ (instancetype)buttonWithSeat:(MPSeat *)seat delegate:(id<SeatButtonDelegate>)delegate {
    CGRect frame = CGRectZero;
    frame.size = MPSeatButtonSize;
    MPSeatButton *button = [[MPSeatButton alloc] initWithFrame:frame];
    button.seat = seat;
    button.delegate = delegate;
    [button addTarget:button action:@selector(selectButton:) forControlEvents:UIControlEventTouchUpInside];
    return button;
}

#pragma mark - Accessors

- (void)setSeat:(MPSeat *)seat {
    _seat = seat;
    self.enabled = seat.available && (seat.type != MPSeatTypeCompanion);
    [self updateImage];
}

- (void)setSelected:(BOOL)selected {
    [super setSelected:selected];
    [self updateImage];
}

#pragma mark - Target-action

- (void)selectButton:(id)sender {
    BOOL wasSelected = self.selected;
    if (self.delegate) {
        [self.delegate seatButtonWillChangeSelectedStatus:self];
    }
    
    self.selected = !wasSelected;
    if (self.delegate) {
        [self.delegate seatButtonDidChangeSelectedStatus:self];
    }
}

#pragma mark - Private

- (void)updateImage {
    UIImage *image = [self imageForSeat:self.seat];
    [self setImage:image forState:UIControlStateNormal];
}

- (UIImage *)imageForSeat:(MPSeat *)seat {
    NSString *imageName = nil;
    
    switch (seat.type) {
        case MPSeatTypeStandard:
            if (seat.available) {
                imageName = self.selected ? @"SeatIcon-Selected" : @"SeatIcon-Available";
            }
            else {
                imageName = @"SeatIcon-Unavailable";
            }
            break;
        case MPSeatTypeCompanion:
            imageName = @"SeatIcon-Unavailable";
            break;
        case MPSeatTypeWheelchair:
            imageName = self.selected ? @"SeatIcon-Wheelchair-Selected" : @"SeatIcon-Wheelchair";
            break;
        default:
            break;
    }
    
    return [UIImage imageNamed:imageName];
}

@end








/* The Bad */

#import "SeatButton.h"

#import "Seat.h"

CGSize MPSeatButtonSize = {20.0f, 20.0f};
@interface MPSeatButton ()

@end

@implementation MPSeatButton

#pragma mark - Lifecycle
+ (instancetype)buttonWithSeat:(MPSeat *)seat delegate:(id<SeatButtonDelegate>)delegate {
    
    
    CGRect frame = CGRectZero;
    frame.size = MPSeatButtonSize;
    MPSeatButton *button = [[MPSeatButton alloc] initWithFrame:frame];
    button.seat = seat;
    button.delegate = delegate;
    [button addTarget:button action:@selector(selectButton:) forControlEvents:UIControlEventTouchUpInside];
    
    return button;
    
}



#pragma mark - Accessors

- (void)setSeat:(MPSeat *)seat {
    _seat = seat;
    self.enabled = seat.available && (seat.type != MPSeatTypeCompanion);
    [self updateImage];
}
- (void)setSelected:(BOOL)selected {
    [super setSelected:selected];
    [self updateImage];
}


#pragma mark - Target-action
- (void)selectButton:(id)sender {
    BOOL wasSelected = self.selected;
    
    if (self.delegate) {
        
        [self.delegate seatButtonWillChangeSelectedStatus:self];
        
    }
    self.selected = !wasSelected;
    
    if (self.delegate) {
        
        [self.delegate seatButtonDidChangeSelectedStatus:self];
        
    }
}


#pragma mark - Private

- (void)updateImage {
    UIImage *image = [self imageForSeat:self.seat];
    
    [self setImage:image forState:UIControlStateNormal];
}

- (UIImage *)imageForSeat:(MPSeat *)seat {
    
    NSString *imageName = nil;
    switch (seat.type) {
        case MPSeatTypeStandard:
            if (seat.available) {
                imageName = self.selected ? @"SeatIcon-Selected" : @"SeatIcon-Available";
            }
            else {
                imageName = @"SeatIcon-Unavailable";
            }
            break;
        case MPSeatTypeCompanion:
            imageName = @"SeatIcon-Unavailable";
            break;
        case MPSeatTypeWheelchair:
            imageName = self.selected ? @"SeatIcon-Wheelchair-Selected" : @"SeatIcon-Wheelchair";
            break;
        default:
            break;
    }
    return [UIImage imageNamed:imageName];
    
}

@end
