// The Good
@property (nonatomic, strong) SomeClass *someNonatomicProperty;
@property (atomic, strong) SomeClass *someAtomicProperty;

// The Bad
@property (strong) SomeClass *someProperty;  // Warning: THIS IS ATOMIC
@property (strong) SomeClass *someOtherProperty;