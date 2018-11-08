/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSFA_SimilarFace.h"

@implementation CSFA_SimilarFace
- (id) initWithConfidence:(AZDouble *)confidence {
    self = [super init];
    if (self) {
        _confidence = confidence;
    }
    return self;
}
- (void)encodeWithCoder:(id<AZCoder>)encoder {

    [encoder encodeObject:self.faceId forKey:@"faceId"];
    [encoder encodeObject:self.persistedFaceId forKey:@"persistedFaceId"];
    [encoder encodeObject:self.confidence forKey:@"confidence"];
}
- (nullable instancetype)initWithDecoder:(id<AZCoder>)decoder {

    if (self = [super init]) {
        _faceId = [decoder decodeObjectForKey:@"faceId" objectClass:[NSUUID class]];
        _persistedFaceId = [decoder decodeObjectForKey:@"persistedFaceId" objectClass:[NSUUID class]];
        _confidence = [decoder decodeObjectForKey:@"confidence" objectClass:[AZDouble class]];
    }
    return self;
}
@end