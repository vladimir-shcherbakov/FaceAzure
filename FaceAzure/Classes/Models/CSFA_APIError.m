/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSFA_APIError.h"

@implementation CSFA_APIError
- (void)encodeWithCoder:(id<AZCoder>)encoder {

    [encoder encodeObject:self.error forKey:@"error"];
}
- (nullable instancetype)initWithDecoder:(id<AZCoder>)decoder {

    if (self = [super init]) {
        _error = [decoder decodeObjectForKey:@"error" objectClass:[CSFA_Error class]];
    }
    return self;
}
@end