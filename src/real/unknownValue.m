/* The Good */
typedef NS_ENUM (NSInteger, FLAppleType) {
    FLAppleTypeUnknown = -1,
    FLAppleTypeRed,
    FLAppleTypeGreen
};

- (FLAppleType)appleTypeFromString:(NSString *)string {
    FLAppleType type = FLAppleTypeUnknown;
    if ([string isEqualToString:@"red"]) {
        type = FLAppleTypeRed;
    } else if ([string isEqualToString:@"green"]) {
        type = FLAppleTypeGreen;
    }
    return type;
    
    // If string is neither "red" nor "green" then we return an unknown type.
}





/* The Bad */
typedef NS_ENUM (NSInteger, FLAppleType) {
    FLAppleTypeRed,
    FLAppleTypeGreen
};

- (FLAppleType)appleTypeFromString:(NSString *)string {
    FLAppleType type;
    if ([string isEqualToString:@"red"]) {
        type = FLAppleTypeRed;
    } else if ([string isEqualToString:@"green"]) {
        type = FLAppleTypeGreen;
    }
    return type;
    
    // What if string is neither "red" nor "green"?
    // Then FLAppleTypeRed will be returned, because its integer equivallent is 0, so the default value for 'type' is. This is conceptually wrong.
}