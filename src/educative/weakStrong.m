/* The Good */
@property (strong, nonatomic) SomeClass *strongInstance;
@property (weak, nonatomic) SomeClass *weakInstance;

/* The Bad */
@property (retain, nonatomic) SomeClass *strongInstance;
@property (assign, nonatomic) SomeClass *weakInstance;