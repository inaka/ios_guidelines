/* The Good */
typedef NS_ENUM (NSInteger, SafeType) {
    SafeTypeUnknown = -1,
    SafeTypeSome,
    SafeTypeOther
};

- (SafeType)typeFromString:(NSString *)string {
    SafeType type = SafeTypeUnknown;
    if ([string isEqualToString:@"some"]) {
        type = SafeTypeSome;
    } else if ([string isEqualToString:@"other"]) {
        type = SafeTypeOther;
    }
    return type;
}





/* The Bad */
typedef NS_ENUM (NSInteger, UnsafeType) {
    UnsafeTypeSome,
    UnsafeTypeOther
};

- (UnsafeType)typeFromString:(NSString *)string {
    UnsafeType type;
    if ([string isEqualToString:@"some"]) {
        type = UnsafeTypeSome;
    } else if ([string isEqualToString:@"other"]) {
        type = UnsafeTypeOther;
    }
    return type;
}