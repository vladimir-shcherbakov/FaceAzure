/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSFA_GroupResult.h"

@implementation CSFA_GroupResult
- (id) initWithGroups:(NSArray<NSArray<NSUUID*>*> *)groups {
    self = [super init];
    if (self) {
        _groups = groups;
    }
    return self;
}
- (void)encodeWithCoder:(id<AZCoder>)encoder {

    [encoder encodeObject:self.groups forKey:@"groups"];
    [encoder encodeObject:self.messyGroup forKey:@"messyGroup"];
}
- (nullable instancetype)initWithDecoder:(id<AZCoder>)decoder {

    if (self = [super init]) {
        _groups = [decoder decodeArrayForKey:@"groups" elementClass:[NSArray<NSUUID*> class]];
        _messyGroup = [decoder decodeArrayForKey:@"messyGroup" elementClass:[NSUUID class]];
    }
    return self;
}
@end
