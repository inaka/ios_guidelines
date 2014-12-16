/* The Good */
NSString *name = person.name;
NSInteger age = person.age;
UIView *view = self.containerView;
view.backgroundColor = [UIColor blueColor];
NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];


/* The Bad */
NSString *name = [person name];
NSInteger age = [person age];
UIView *view = [self containerView];
[view setBackgroundColor:[UIColor blueColor]];
NSUserDefaults *defaults = NSUserDefaults.standardUserDefaults;