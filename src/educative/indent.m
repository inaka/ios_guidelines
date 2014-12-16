/* The Good */
- (Whatever *)wellIntendedMethod {
    if (self.wellIntended) {
        self.understandable = YES;
        self.readableLevel = ReadableLevelNice;
        if (self.stillWellIntended) {
            self.readableLevel = ReadableLevelAwesome;
        }
    }
    return nice;
}




/* The Bad */
- (Whatever *)wrongIntendedMethod {
    if (self.notIntended) {
    self.understandable = NO;
    self.readableLevel = ReadableLevelHard;
    } else if (self.wronglyIntended) {
            self.readableLevel = ReadableLevelHurtingMyEyes;
    }
        return horrible;
}