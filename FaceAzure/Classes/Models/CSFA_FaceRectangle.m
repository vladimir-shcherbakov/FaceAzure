/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSFA_FaceRectangle.h"

@implementation CSFA_FaceRectangle
- (id) initWithWidth:(AZInteger *)width withHeight:(AZInteger *)height withLeft:(AZInteger *)left withTop:(AZInteger *)top {
    self = [super init];
    if (self) {
        _width = width;
        _height = height;
        _left = left;
        _top = top;
    }
    return self;
}
- (void)encodeWithCoder:(id<AZCoder>)encoder {

    [encoder encodeObject:self.width forKey:@"width"];
    [encoder encodeObject:self.height forKey:@"height"];
    [encoder encodeObject:self.left forKey:@"left"];
    [encoder encodeObject:self.top forKey:@"top"];
}
- (nullable instancetype)initWithDecoder:(id<AZCoder>)decoder {

    if (self = [super init]) {
        _width = [decoder decodeObjectForKey:@"width" objectClass:[AZInteger class]];
        _height = [decoder decodeObjectForKey:@"height" objectClass:[AZInteger class]];
        _left = [decoder decodeObjectForKey:@"left" objectClass:[AZInteger class]];
        _top = [decoder decodeObjectForKey:@"top" objectClass:[AZInteger class]];
    }
    return self;
}
@end
