/* The Good */

@interface SomeInterface ()

@property (strong, nonatomic) SomeClass *someInstance;
@property (readwrite, nonatomic) SomeType someValue;

@end

/* The Bad */

@interface SomeInterface () {
    SomeClass *someInstance;
    SomeType someValue;
}

@end
