/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSFA_Occlusion.h"

@implementation CSFA_Occlusion
- (void)encodeWithCoder:(id<AZCoder>)encoder {

    [encoder encodeObject:self.foreheadOccluded forKey:@"foreheadOccluded"];
    [encoder encodeObject:self.eyeOccluded forKey:@"eyeOccluded"];
    [encoder encodeObject:self.mouthOccluded forKey:@"mouthOccluded"];
}
- (nullable instancetype)initWithDecoder:(id<AZCoder>)decoder {

    if (self = [super init]) {
        _foreheadOccluded = [decoder decodeObjectForKey:@"foreheadOccluded" objectClass:[AZBoolean class]];
        _eyeOccluded = [decoder decodeObjectForKey:@"eyeOccluded" objectClass:[AZBoolean class]];
        _mouthOccluded = [decoder decodeObjectForKey:@"mouthOccluded" objectClass:[AZBoolean class]];
    }
    return self;
}
@end
