/* The Good */

// Cleaner code, where you can easily see what's important.

@implementation GDUsersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadUsers];
}

- (void)loadUsers {
    [[GDUserRequester requester] requestUsersWithCompletion:^(NSArray *users) {
        self.users = users;
        [self.tableView reloadData];
    }];
}

#pragma mark - UITableViewDataSource

// ...
// ...

@end





/* The Bad */

// Dirtier code, where your eyes need to filter things that are not relevant in order to decypher what's important.

@implementation GDUsersViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self loadUsers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

- (void)loadUsers {
    [[GDUserRequester requester] requestUsersWithCompletion:^(NSArray *users) {
        self.users = users;
        [self.tableView reloadData];
    }];
}

#pragma mark - UITableViewDataSource

// ...
// ...

@end