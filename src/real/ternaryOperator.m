/* Preferred */

- (void)setBoldText:(BOOL)boldText {
    _boldText = boldText;
    self.messageLabel.font = boldText ? [self boldFont] : [self regularFont];
}


/* Not Preferred */

- (void)setBoldText:(BOOL)boldText {
    _boldText = boldText;
    
    if (boldText) {
        self.messageLabel.font = [self boldFont];
    } else {
        self.messageLabel.font = [self regularFont];
    }
}