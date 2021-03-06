/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSFA_Emotion.h"

@implementation CSFA_Emotion
- (void)encodeWithCoder:(id<AZCoder>)encoder {

    [encoder encodeObject:self.anger forKey:@"anger"];
    [encoder encodeObject:self.contempt forKey:@"contempt"];
    [encoder encodeObject:self.disgust forKey:@"disgust"];
    [encoder encodeObject:self.fear forKey:@"fear"];
    [encoder encodeObject:self.happiness forKey:@"happiness"];
    [encoder encodeObject:self.neutral forKey:@"neutral"];
    [encoder encodeObject:self.sadness forKey:@"sadness"];
    [encoder encodeObject:self.surprise forKey:@"surprise"];
}
- (nullable instancetype)initWithDecoder:(id<AZCoder>)decoder {

    if (self = [super init]) {
        _anger = [decoder decodeObjectForKey:@"anger" objectClass:[AZDouble class]];
        _contempt = [decoder decodeObjectForKey:@"contempt" objectClass:[AZDouble class]];
        _disgust = [decoder decodeObjectForKey:@"disgust" objectClass:[AZDouble class]];
        _fear = [decoder decodeObjectForKey:@"fear" objectClass:[AZDouble class]];
        _happiness = [decoder decodeObjectForKey:@"happiness" objectClass:[AZDouble class]];
        _neutral = [decoder decodeObjectForKey:@"neutral" objectClass:[AZDouble class]];
        _sadness = [decoder decodeObjectForKey:@"sadness" objectClass:[AZDouble class]];
        _surprise = [decoder decodeObjectForKey:@"surprise" objectClass:[AZDouble class]];
    }
    return self;
}
@end
