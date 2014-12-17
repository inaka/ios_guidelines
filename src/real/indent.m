/* The Good */

- (UITableViewCell *)tableViewCellForIndexPath:(NSIndexPath *)indexPath {
    
    HyTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:HyTableViewCellIdentifier];
    
    if (!cell) {
        cell = [HyTableViewCell cell];
    }
    
    id item = [self itemAtIndexPath:indexPath];
    
    if ([item isKindOfClass:[HyStack class]]) {
        HyStack *stack = (HyStack *)item;
        cell.title = stack.hashtaggedName;
        cell.checked = (indexPath.row == self.postInSelectedIndex);
    } else if ([item isKindOfClass:[HySocialNetwork class]]) {
        HySocialNetwork *network = (HySocialNetwork *)item;
        cell.title = network.name;
    } else {
        if(!self.createHashtagCell) {
            self.createHashtagCell = [[HyCreateStackTableViewCell alloc] init];
        }
        return self.createHashtagCell;
    }
    
    return cell;
}





/* The Bad */

- (UITableViewCell *)tableViewCellForIndexPath:(NSIndexPath *)indexPath {
    
HyTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:HyTableViewCellIdentifier];
    
    if (!cell) {
            cell = [HyTableViewCell cell];
    }
    
        id item = [self itemAtIndexPath:indexPath];
    
    if ([item isKindOfClass:[HyStack class]]) {
            HyStack *stack = (HyStack *)item;
            cell.title = stack.hashtaggedName;
            cell.checked = (indexPath.row == self.postInSelectedIndex);
    } else if ([item isKindOfClass:[HySocialNetwork class]]) {
        HySocialNetwork *network = (HySocialNetwork *)item;
        cell.title = network.name;
    } else {
        if(!self.createHashtagCell) {
        self.createHashtagCell = [[HyCreateStackTableViewCell alloc] init];
        }
    return self.createHashtagCell;
    }
    
return cell;
}