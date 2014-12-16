// The Good
@property (nonatomic, strong) UIImage *image;
@property (atomic, strong) UIImage *atomicImage;

// The Bad
@property (strong) UIImage *image;  // Warning: THIS IS ATOMIC
@property (strong) UIImage *atomicImage;