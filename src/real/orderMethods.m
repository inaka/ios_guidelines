/* Preferred */

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
    for (Seat *seat in self.seats) {
        highestRow = MAX(highestRow, seat.location.row);
        highestColumn = MAX(highestColumn, seat.location.column);
    }
    self.rows = highestRow;
    self.columns = highestColumn;
}

- (void)drawLayout {
    for (Seat *seat in self.seats) {
        SeatButton *button = [SeatButton buttonWithSeat:seat delegate:self];
        CGRect frame = button.frame;
        frame.origin = [self positionForSeat:seat];
        button.frame = frame;
        [self addSubview:button];
    }
}

- (CGPoint)positionForSeat:(Seat *)seat {
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














/* Not Preferred */

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

- (void)parseDimensions {
    NSInteger highestRow = 0;
    NSInteger highestColumn = 0;
    for (Seat *seat in self.seats) {
        highestRow = MAX(highestRow, seat.location.row);
        highestColumn = MAX(highestColumn, seat.location.column);
    }
    self.rows = highestRow;
    self.columns = highestColumn;
}

- (void)drawLayout {
    for (Seat *seat in self.seats) {
        SeatButton *button = [SeatButton buttonWithSeat:seat delegate:self];
        CGRect frame = button.frame;
        frame.origin = [self positionForSeat:seat];
        button.frame = frame;
        [self addSubview:button];
    }
}

- (void)removeLayout {
    for (UIView *view in self.subviews) {
        [view removeFromSuperview];
    }
}

- (void)redrawLayout {
    [self removeLayout];
    [self parseDimensions];
    [self drawLayout];
}

- (CGPoint)positionForSeat:(Seat *)seat {
    CGFloat x = (seat.location.column - 1) * [self horizontalSpacing] + [self horizontalMargin];
    CGFloat y = (seat.location.row - 1) * [self verticalSpacing] + [self verticalMargin];
    return CGPointMake(x, y);
}

@end

