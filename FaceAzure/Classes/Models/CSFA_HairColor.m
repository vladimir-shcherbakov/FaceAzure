/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSFA_HairColor.h"

@implementation CSFA_HairColor
- (void)encodeWithCoder:(id<AZCoder>)encoder {

    [encoder encodeObject:self.color forKey:@"color"];
    [encoder encodeObject:self.confidence forKey:@"confidence"];
}
- (nullable instancetype)initWithDecoder:(id<AZCoder>)decoder {

    if (self = [super init]) {
        _color = [decoder decodeObjectForKey:@"color" objectClass:[CSFA_HairColorType class]];
        _confidence = [decoder decodeObjectForKey:@"confidence" objectClass:[AZDouble class]];
    }
    return self;
}
@end