/* The Good */


// SomeCell.h
extern CGFloat const SomeCellHeight;
extern NSString *const SomeCellIdentifier;


// SomeCell.m
CGFloat const SomeCellHeight = 100.0f;
NSString *const SomeCellIdentifier = @"CellIdentifier";


// SomeViewController.m
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.section) {
        // ...
        case SomeSectionOfInterest: return SomeCellHeight;
        // ...
    }
    return 0;
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SomeCellIdentifier];
    if (!cell) {
        // ...
    }
    return cell;
}





/* The Bad */


// SomeViewController.m
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.section) {
            // ...
        case SomeSectionOfInterest: return 52.0f;   // Some hardcoded height
            // ...
    }
    return 0;
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SomeHardcodedIdentifier"];
    if (!cell) {
        // ...
    }
    return cell;
}
