/* The Good */
@property (strong, nonatomic) IBOutlet UIView *headerView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

/* The Bad */
@property (retain, nonatomic) IBOutlet UIView *headerView;
@property (assign, nonatomic) IBOutlet UILabel *titleLabel;