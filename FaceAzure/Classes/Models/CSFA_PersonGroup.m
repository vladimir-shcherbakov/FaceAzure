/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSFA_PersonGroup.h"

@implementation CSFA_PersonGroup
- (id) initWithPersonGroupId:(NSString *)personGroupId {
    self = [super init];
    if (self) {
        _personGroupId = personGroupId;
    }
    return self;
}
- (void)encodeWithCoder:(id<AZCoder>)encoder {

    [super encodeWithCoder:encoder];
    [encoder encodeObject:self.personGroupId forKey:@"personGroupId"];
}
- (nullable instancetype)initWithDecoder:(id<AZCoder>)decoder {

    if (self = [super initWithDecoder:decoder]) {
        _personGroupId = [decoder decodeObjectForKey:@"personGroupId" objectClass:[NSString class]];
    }
    return self;
}
@end
