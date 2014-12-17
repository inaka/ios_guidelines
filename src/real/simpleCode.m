/* Preferred */
NSString *filePath = [[NSBundle mainBundle] pathForResource:@"company-logo" ofType:@"png"];
UIImage *image = [[UIImage alloc] initWithContentsOfFile:filePath];
UIImageView *imageView = [[UIImageView alloc] initWithImage:image];


/* Not Preferred */
UIImageView *imageView = [[UIImageView alloc] initWithImage:[[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"company-logo" ofType:@"png"]]];