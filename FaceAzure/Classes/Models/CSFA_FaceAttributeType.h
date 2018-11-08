/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import <AzureClientRuntime/AzureClientRuntime.h>

/**
 * Defines values for CSFA_FaceAttributeType.
 */
@interface CSFA_FaceAttributeType : NSObject <AZStringEnum>
+ (NSArray*)values;
+ (NSString *)toStringValue:(CSFA_FaceAttributeType *)value;
@property (class, readonly) CSFA_FaceAttributeType *AGE;
@property (class, readonly) CSFA_FaceAttributeType *GENDER;
@property (class, readonly) CSFA_FaceAttributeType *HEAD_POSE;
@property (class, readonly) CSFA_FaceAttributeType *SMILE;
@property (class, readonly) CSFA_FaceAttributeType *FACIAL_HAIR;
@property (class, readonly) CSFA_FaceAttributeType *GLASSES;
@property (class, readonly) CSFA_FaceAttributeType *EMOTION;
@property (class, readonly) CSFA_FaceAttributeType *HAIR;
@property (class, readonly) CSFA_FaceAttributeType *MAKEUP;
@property (class, readonly) CSFA_FaceAttributeType *OCCLUSION;
@property (class, readonly) CSFA_FaceAttributeType *ACCESSORIES;
@property (class, readonly) CSFA_FaceAttributeType *BLUR;
@property (class, readonly) CSFA_FaceAttributeType *EXPOSURE;
@property (class, readonly) CSFA_FaceAttributeType *NOISE;
@end