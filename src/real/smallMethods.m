/* Preferred */

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self showKeyboardIfNecessary];
    [self updatePostButtonStatus];
    [self uploadImages];
}

#pragma mark - Private

- (void)showKeyboardIfNecessary {
    HyCreateCardTitleCell *titleCell = [self titleCell];
    if (!titleCell.title.length) {
        [titleCell becomeFirstResponder];
    }
}

- (void)updatePostButtonStatus {
    self.postCell.buttonEnabled = [self postButtonEnabled];
    self.postCell.buttonHidden = [self postButtonHidden];
}

- (void)uploadImages {
    for (HyCardItem *item in self.items) {
        HyImage *image = item.image;
        if ([self imageShouldStartUploading:image]) {
            [image startUploading];
        }
    }
}




/* Not Preferred */

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    HyCreateCardTitleCell *titleCell = [self titleCell];
    if (!titleCell.title.length) {
        [titleCell becomeFirstResponder];
    }
    
    self.postCell.buttonEnabled = [self postButtonEnabled];
    self.postCell.buttonHidden = [self postButtonHidden];

    for (HyCardItem *item in self.items) {
        HyImage *image = item.image;
        if ([self imageShouldStartUploading:image]) {
            [image startUploading];
        }
    }
}