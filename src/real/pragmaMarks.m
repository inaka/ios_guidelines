/* The Good */

// > Methods are grouped into different sections, labeled with pragma marks
// > Methods are ordered
// > Delegate protocol methods are easy to keep track of
// > Separation of class internal private methods

#import "MPSeatingSelectionView.h"
#import "MPSeatButton.h"
#import "MPSeat.h"

@interface MPSeatingSelectionView () <MPSeatButtonDelegate>

@property (readwrite, nonatomic) NSInteger rows;
@property (readwrite, nonatomic) NSInteger columns;

@end

@implementation MPSeatingSelectionView

#pragma mark - Lifecycle

+ (instancetype)viewWithDelegate:(id<MPSeatSelectionViewDelegate>)delegate {
    MPSeatingSelectionView *view = [[[NSBundle mainBundle] loadNibNamed:@"MPSeatingSelectionView" owner:nil options:nil] firstObject];
    view.delegate = delegate;
    return view;
}

#pragma mark - Accessors

- (void)setSeats:(NSArray *)seats {
    _seats = seats;
    [self redrawLayout];
}

#pragma mark - MPSeatButtonDelegate

- (void)seatButtonWillChangeSelectedStatus:(MPSeatButton *)button {
    for (MPSeatButton *button in self.subviews) {
        button.selected = NO;
    }
}

- (void)seatButtonDidChangeSelectedStatus:(MPSeatButton *)button {
    MPSeat *selectedSeat = button.selected ? button.seat : nil;
    if (self.delegate) {
        [self.delegate seatSelectionViewDidSelectSeat:selectedSeat];
    }
}

#pragma mark - Private

- (void)redrawLayout {
    [self removeLayout];
    [self parseDimensions];
    [self drawLayout];
}

- (void)removeLayout {
    for (UIView *view in self.subviews) {
        [view removeFromSuperview];
    }
}

- (void)parseDimensions {
    NSInteger highestRow = 0;
    NSInteger highestColumn = 0;
    for (MPSeat *seat in self.seats) {
        highestRow = MAX(highestRow, seat.location.row);
        highestColumn = MAX(highestColumn, seat.location.column);
    }
    self.rows = highestRow;
    self.columns = highestColumn;
}

- (void)drawLayout {
    for (MPSeat *seat in self.seats) {
        MPSeatButton *button = [MPSeatButton buttonWithSeat:seat delegate:self];
        CGRect frame = button.frame;
        frame.origin = [self positionForSeat:seat];
        button.frame = frame;
        [self addSubview:button];
    }
}

- (CGPoint)positionForSeat:(MPSeat *)seat {
    CGFloat x = (seat.location.column - 1) * [self horizontalSpacing] + [self horizontalMargin];
    CGFloat y = (seat.location.row - 1) * [self verticalSpacing] + [self verticalMargin];
    return CGPointMake(x, y);
}

- (CGFloat)horizontalSpacing {
    return self.frame.size.width / self.columns;
}

- (CGFloat)verticalSpacing {
    return self.frame.size.height / self.rows;
}

- (CGFloat)horizontalMargin {
    return ([self horizontalSpacing] - SeatButtonSize.width) / 2;
}

- (CGFloat)verticalMargin {
    return ([self verticalSpacing] - SeatButtonSize.height) / 2;
}

@end





/* The Bad */

// > Methods have neither order nor labeling at all
// > The class feels like a bag full of unsorted stuff
// > You don't easily visualize delegation
// > Reading and finding things takes more time

#import "MPSeatingSelectionView.h"
#import "MPSeatButton.h"
#import "MPSeat.h"

@interface MPSeatingSelectionView () <MPSeatButtonDelegate>

@property (readwrite, nonatomic) NSInteger rows;
@property (readwrite, nonatomic) NSInteger columns;

@end

@implementation MPSeatingSelectionView

+ (instancetype)viewWithDelegate:(id<MPSeatSelectionViewDelegate>)delegate {
    MPSeatingSelectionView *view = [[[NSBundle mainBundle] loadNibNamed:@"MPSeatingSelectionView" owner:nil options:nil] firstObject];
    view.delegate = delegate;
    return view;
}

- (void)redrawLayout {
    [self removeLayout];
    [self parseDimensions];
    [self drawLayout];
}

- (void)seatButtonDidChangeSelectedStatus:(MPSeatButton *)button {
    MPSeat *selectedSeat = button.selected ? button.seat : nil;
    if (self.delegate) {
        [self.delegate seatSelectionViewDidSelectSeat:selectedSeat];
    }
}

- (void)setSeats:(NSArray *)seats {
    _seats = seats;
    [self redrawLayout];
}

- (void)removeLayout {
    for (UIView *view in self.subviews) {
        [view removeFromSuperview];
    }
}

- (void)seatButtonWillChangeSelectedStatus:(MPSeatButton *)button {
    for (MPSeatButton *button in self.subviews) {
        button.selected = NO;
    }
}

- (void)parseDimensions {
    NSInteger highestRow = 0;
    NSInteger highestColumn = 0;
    for (MPSeat *seat in self.seats) {
        highestRow = MAX(highestRow, seat.location.row);
        highestColumn = MAX(highestColumn, seat.location.column);
    }
    self.rows = highestRow;
    self.columns = highestColumn;
}

- (CGFloat)horizontalMargin {
    return ([self horizontalSpacing] - SeatButtonSize.width) / 2;
}

- (CGFloat)verticalMargin {
    return ([self verticalSpacing] - SeatButtonSize.height) / 2;
}

- (void)drawLayout {
    for (MPSeat *seat in self.seats) {
        MPSeatButton *button = [MPSeatButton buttonWithSeat:seat delegate:self];
        CGRect frame = button.frame;
        frame.origin = [self positionForSeat:seat];
        button.frame = frame;
        [self addSubview:button];
    }
}

- (CGPoint)positionForSeat:(MPSeat *)seat {
    CGFloat x = (seat.location.column - 1) * [self horizontalSpacing] + [self horizontalMargin];
    CGFloat y = (seat.location.row - 1) * [self verticalSpacing] + [self verticalMargin];
    return CGPointMake(x, y);
}

- (CGFloat)horizontalSpacing {
    return self.frame.size.width / self.columns;
}

- (CGFloat)verticalSpacing {
    return self.frame.size.height / self.rows;
}

@end


