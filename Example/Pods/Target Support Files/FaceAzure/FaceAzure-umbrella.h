#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "CSFA_FaceClientService.h"
#import "CSFA_Accessory.h"
#import "CSFA_AccessoryType.h"
#import "CSFA_APIError.h"
#import "CSFA_Blur.h"
#import "CSFA_BlurLevel.h"
#import "CSFA_Coordinate.h"
#import "CSFA_DetectedFace.h"
#import "CSFA_Emotion.h"
#import "CSFA_Error.h"
#import "CSFA_Exposure.h"
#import "CSFA_ExposureLevel.h"
#import "CSFA_FaceAttributes.h"
#import "CSFA_FaceAttributeType.h"
#import "CSFA_FaceLandmarks.h"
#import "CSFA_FaceList.h"
#import "CSFA_FaceRectangle.h"
#import "CSFA_FacialHair.h"
#import "CSFA_FindSimilarMatchMode.h"
#import "CSFA_FindSimilarRequest.h"
#import "CSFA_Gender.h"
#import "CSFA_GlassesType.h"
#import "CSFA_GroupRequest.h"
#import "CSFA_GroupResult.h"
#import "CSFA_Hair.h"
#import "CSFA_HairColor.h"
#import "CSFA_HairColorType.h"
#import "CSFA_HeadPose.h"
#import "CSFA_IdentifyCandidate.h"
#import "CSFA_IdentifyRequest.h"
#import "CSFA_IdentifyResult.h"
#import "CSFA_ImageUrl.h"
#import "CSFA_LargeFaceList.h"
#import "CSFA_LargePersonGroup.h"
#import "CSFA_Makeup.h"
#import "CSFA_NameAndUserDataContract.h"
#import "CSFA_Noise.h"
#import "CSFA_NoiseLevel.h"
#import "CSFA_Occlusion.h"
#import "CSFA_PersistedFace.h"
#import "CSFA_Person.h"
#import "CSFA_PersonGroup.h"
#import "CSFA_SimilarFace.h"
#import "CSFA_TrainingStatus.h"
#import "CSFA_TrainingStatusType.h"
#import "CSFA_UpdateFaceRequest.h"
#import "CSFA_VerifyFaceToFaceRequest.h"
#import "CSFA_VerifyFaceToPersonRequest.h"
#import "CSFA_VerifyResult.h"
#import "CSFA_FaceLists.h"
#import "CSFA_Faces.h"
#import "CSFA_LargeFaceLists.h"
#import "CSFA_LargePersonGroupPersons.h"
#import "CSFA_LargePersonGroups.h"
#import "CSFA_PersonGroupPersons.h"
#import "CSFA_PersonGroups.h"

FOUNDATION_EXPORT double FaceAzureVersionNumber;
FOUNDATION_EXPORT const unsigned char FaceAzureVersionString[];

