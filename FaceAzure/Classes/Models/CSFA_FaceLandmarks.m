/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSFA_FaceLandmarks.h"

@implementation CSFA_FaceLandmarks
- (void)encodeWithCoder:(id<AZCoder>)encoder {

    [encoder encodeObject:self.pupilLeft forKey:@"pupilLeft"];
    [encoder encodeObject:self.pupilRight forKey:@"pupilRight"];
    [encoder encodeObject:self.noseTip forKey:@"noseTip"];
    [encoder encodeObject:self.mouthLeft forKey:@"mouthLeft"];
    [encoder encodeObject:self.mouthRight forKey:@"mouthRight"];
    [encoder encodeObject:self.eyebrowLeftOuter forKey:@"eyebrowLeftOuter"];
    [encoder encodeObject:self.eyebrowLeftInner forKey:@"eyebrowLeftInner"];
    [encoder encodeObject:self.eyeLeftOuter forKey:@"eyeLeftOuter"];
    [encoder encodeObject:self.eyeLeftTop forKey:@"eyeLeftTop"];
    [encoder encodeObject:self.eyeLeftBottom forKey:@"eyeLeftBottom"];
    [encoder encodeObject:self.eyeLeftInner forKey:@"eyeLeftInner"];
    [encoder encodeObject:self.eyebrowRightInner forKey:@"eyebrowRightInner"];
    [encoder encodeObject:self.eyebrowRightOuter forKey:@"eyebrowRightOuter"];
    [encoder encodeObject:self.eyeRightInner forKey:@"eyeRightInner"];
    [encoder encodeObject:self.eyeRightTop forKey:@"eyeRightTop"];
    [encoder encodeObject:self.eyeRightBottom forKey:@"eyeRightBottom"];
    [encoder encodeObject:self.eyeRightOuter forKey:@"eyeRightOuter"];
    [encoder encodeObject:self.noseRootLeft forKey:@"noseRootLeft"];
    [encoder encodeObject:self.noseRootRight forKey:@"noseRootRight"];
    [encoder encodeObject:self.noseLeftAlarTop forKey:@"noseLeftAlarTop"];
    [encoder encodeObject:self.noseRightAlarTop forKey:@"noseRightAlarTop"];
    [encoder encodeObject:self.noseLeftAlarOutTip forKey:@"noseLeftAlarOutTip"];
    [encoder encodeObject:self.noseRightAlarOutTip forKey:@"noseRightAlarOutTip"];
    [encoder encodeObject:self.upperLipTop forKey:@"upperLipTop"];
    [encoder encodeObject:self.upperLipBottom forKey:@"upperLipBottom"];
    [encoder encodeObject:self.underLipTop forKey:@"underLipTop"];
    [encoder encodeObject:self.underLipBottom forKey:@"underLipBottom"];
}
- (nullable instancetype)initWithDecoder:(id<AZCoder>)decoder {

    if (self = [super init]) {
        _pupilLeft = [decoder decodeObjectForKey:@"pupilLeft" objectClass:[CSFA_Coordinate class]];
        _pupilRight = [decoder decodeObjectForKey:@"pupilRight" objectClass:[CSFA_Coordinate class]];
        _noseTip = [decoder decodeObjectForKey:@"noseTip" objectClass:[CSFA_Coordinate class]];
        _mouthLeft = [decoder decodeObjectForKey:@"mouthLeft" objectClass:[CSFA_Coordinate class]];
        _mouthRight = [decoder decodeObjectForKey:@"mouthRight" objectClass:[CSFA_Coordinate class]];
        _eyebrowLeftOuter = [decoder decodeObjectForKey:@"eyebrowLeftOuter" objectClass:[CSFA_Coordinate class]];
        _eyebrowLeftInner = [decoder decodeObjectForKey:@"eyebrowLeftInner" objectClass:[CSFA_Coordinate class]];
        _eyeLeftOuter = [decoder decodeObjectForKey:@"eyeLeftOuter" objectClass:[CSFA_Coordinate class]];
        _eyeLeftTop = [decoder decodeObjectForKey:@"eyeLeftTop" objectClass:[CSFA_Coordinate class]];
        _eyeLeftBottom = [decoder decodeObjectForKey:@"eyeLeftBottom" objectClass:[CSFA_Coordinate class]];
        _eyeLeftInner = [decoder decodeObjectForKey:@"eyeLeftInner" objectClass:[CSFA_Coordinate class]];
        _eyebrowRightInner = [decoder decodeObjectForKey:@"eyebrowRightInner" objectClass:[CSFA_Coordinate class]];
        _eyebrowRightOuter = [decoder decodeObjectForKey:@"eyebrowRightOuter" objectClass:[CSFA_Coordinate class]];
        _eyeRightInner = [decoder decodeObjectForKey:@"eyeRightInner" objectClass:[CSFA_Coordinate class]];
        _eyeRightTop = [decoder decodeObjectForKey:@"eyeRightTop" objectClass:[CSFA_Coordinate class]];
        _eyeRightBottom = [decoder decodeObjectForKey:@"eyeRightBottom" objectClass:[CSFA_Coordinate class]];
        _eyeRightOuter = [decoder decodeObjectForKey:@"eyeRightOuter" objectClass:[CSFA_Coordinate class]];
        _noseRootLeft = [decoder decodeObjectForKey:@"noseRootLeft" objectClass:[CSFA_Coordinate class]];
        _noseRootRight = [decoder decodeObjectForKey:@"noseRootRight" objectClass:[CSFA_Coordinate class]];
        _noseLeftAlarTop = [decoder decodeObjectForKey:@"noseLeftAlarTop" objectClass:[CSFA_Coordinate class]];
        _noseRightAlarTop = [decoder decodeObjectForKey:@"noseRightAlarTop" objectClass:[CSFA_Coordinate class]];
        _noseLeftAlarOutTip = [decoder decodeObjectForKey:@"noseLeftAlarOutTip" objectClass:[CSFA_Coordinate class]];
        _noseRightAlarOutTip = [decoder decodeObjectForKey:@"noseRightAlarOutTip" objectClass:[CSFA_Coordinate class]];
        _upperLipTop = [decoder decodeObjectForKey:@"upperLipTop" objectClass:[CSFA_Coordinate class]];
        _upperLipBottom = [decoder decodeObjectForKey:@"upperLipBottom" objectClass:[CSFA_Coordinate class]];
        _underLipTop = [decoder decodeObjectForKey:@"underLipTop" objectClass:[CSFA_Coordinate class]];
        _underLipBottom = [decoder decodeObjectForKey:@"underLipBottom" objectClass:[CSFA_Coordinate class]];
    }
    return self;
}
@end
