/* The Good */


// FLAppleCell.h
extern CGFloat const FLAppleCellHeight;
extern NSString *const FLAppleCellIdentifier;


// FLAppleCell.m
CGFloat const FLAppleCellHeight = 52.0f;
NSString *const FLAppleCellIdentifier = @"AppleCell";


// FLAppleListingViewController.m
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.section) {
        // ...
        case FLAppleTableSectionApples: return FLAppleCellHeight;
        // ...
    }
    return 0;
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:FLAppleCellIdentifier];
    if (!cell) {
        // ...
    }
    return cell;
}





/* The Bad */


// FLAppleListingViewController.m
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.section) {
            // ...
        case FLAppleTableSectionApples: return 52.0f;
            // ...
    }
    return 0;
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AppleCell"];
    if (!cell) {
        // ...
    }
    return cell;
}
