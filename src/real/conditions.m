/* The Good */

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    if ([self userIsAtLastCard]) {
        [self loadMoreCards];
    }
}

- (BOOL)userIsAtLastCard {
    UIScrollView *scrollView = (UIScrollView *)self.stackCollectionView;
    return scrollView.contentOffset.x > scrollView.contentSize.width - scrollView.frame.size.width * 2;
}





/* The Bad */

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    if (self.stackCollectionView.contentOffset.x > self.stackCollectionView.contentSize.width - self.stackCollectionView.frame.size.width * 2) {
        [self loadMoreCards];
    }
}

