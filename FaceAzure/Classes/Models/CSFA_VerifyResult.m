/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSFA_VerifyResult.h"

@implementation CSFA_VerifyResult
- (id) initWithIsIdentical:(AZBoolean *)isIdentical withConfidence:(AZDouble *)confidence {
    self = [super init];
    if (self) {
        _isIdentical = isIdentical;
        _confidence = confidence;
    }
    return self;
}
- (void)encodeWithCoder:(id<AZCoder>)encoder {

    [encoder encodeObject:self.isIdentical forKey:@"isIdentical"];
    [encoder encodeObject:self.confidence forKey:@"confidence"];
}
- (nullable instancetype)initWithDecoder:(id<AZCoder>)decoder {

    if (self = [super init]) {
        _isIdentical = [decoder decodeObjectForKey:@"isIdentical" objectClass:[AZBoolean class]];
        _confidence = [decoder decodeObjectForKey:@"confidence" objectClass:[AZDouble class]];
    }
    return self;
}
@end
