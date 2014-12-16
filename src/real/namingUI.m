@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITableView *tableView;    // If there is only one table view instance, then it's acceptable to just call it 'tableView'
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner; // This is a valid exception for the rule.
@property (weak, nonatomic) IBOutlet UIButton *submitButton;
