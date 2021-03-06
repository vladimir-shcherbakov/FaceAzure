/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSFA_FindSimilarRequest.h"

@implementation CSFA_FindSimilarRequest
- (id) initWithFaceId:(NSUUID *)faceId {
    self = [super init];
    if (self) {
        _faceId = faceId;
    }
    return self;
}
- (void)encodeWithCoder:(id<AZCoder>)encoder {

    [encoder encodeObject:self.faceId forKey:@"faceId"];
    [encoder encodeObject:self.faceListId forKey:@"faceListId"];
    [encoder encodeObject:self.largeFaceListId forKey:@"largeFaceListId"];
    [encoder encodeObject:self.faceIds forKey:@"faceIds"];
    [encoder encodeObject:self.maxNumOfCandidatesReturned forKey:@"maxNumOfCandidatesReturned"];
    [encoder encodeObject:self.mode forKey:@"mode"];
}
- (nullable instancetype)initWithDecoder:(id<AZCoder>)decoder {

    if (self = [super init]) {
        _faceId = [decoder decodeObjectForKey:@"faceId" objectClass:[NSUUID class]];
        _faceListId = [decoder decodeObjectForKey:@"faceListId" objectClass:[NSString class]];
        _largeFaceListId = [decoder decodeObjectForKey:@"largeFaceListId" objectClass:[NSString class]];
        _faceIds = [decoder decodeArrayForKey:@"faceIds" elementClass:[NSUUID class]];
        _maxNumOfCandidatesReturned = [decoder decodeObjectForKey:@"maxNumOfCandidatesReturned" objectClass:[AZInteger class]];
        _mode = [decoder decodeObjectForKey:@"mode" objectClass:[CSFA_FindSimilarMatchMode class]];
    }
    return self;
}
@end
