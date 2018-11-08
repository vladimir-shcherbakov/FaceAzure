/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import <AzureClientRuntime/AzureClientRuntime.h>
#import "CSFA_Faces.h"
#import "CSFA_APIError.h"
#import "CSFA_FaceClientService.h"
#import "CSFA_APIError.h"
#import "CSFA_FindSimilarRequest.h"
#import "CSFA_GroupRequest.h"
#import "CSFA_IdentifyRequest.h"
#import "CSFA_ImageUrl.h"
#import "CSFA_VerifyFaceToFaceRequest.h"
#import "CSFA_VerifyFaceToPersonRequest.h"

/**
 * The protocol CSFA_FacesProtocol implementation
 */
@implementation CSFA_Faces

- (instancetype)initWithService:(CSFA_FaceClientService *)service {
    if (self = [super init]) {
        _service = service;
    }

    return self;
}

/**
 * Given query face's faceId, find the similar-looking faces from a faceId array, a face list or a large face list.
 *
 * @param faceId FaceId of the query face. User needs to call Face - Detect first to get a valid faceId. Note that this faceId is not persisted and will expire 24 hours after the detection call
 * @param callback A block where NSArray<CSFA_SimilarFace*> is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a requred parameter is not provided
 */
- (void)findSimilarWithFaceId:(NSUUID *)faceId withCallback:(void(^)(NSArray<CSFA_SimilarFace*>*, AZOperationError*))callback {
    NSString* faceListId = nil;
    NSString* largeFaceListId = nil;
    NSArray<NSUUID*>* faceIds = nil;
    AZInteger* maxNumOfCandidatesReturned = @20;
    CSFA_FindSimilarMatchMode* mode = [[CSFA_FindSimilarMatchMode values] firstObject];
    [self findSimilarWithFaceId:faceId withFaceListId:faceListId withLargeFaceListId:largeFaceListId withFaceIds:faceIds withMaxNumOfCandidatesReturned:maxNumOfCandidatesReturned withMode:mode withCallback:callback];
}

/**
 * Given query face's faceId, find the similar-looking faces from a faceId array, a face list or a large face list.
 *
 * @param faceId FaceId of the query face. User needs to call Face - Detect first to get a valid faceId. Note that this faceId is not persisted and will expire 24 hours after the detection call
 * @param faceListId An existing user-specified unique candidate face list, created in Face List - Create a Face List. Face list contains a set of persistedFaceIds which are persisted and will never expire. Parameter faceListId, largeFaceListId and faceIds should not be provided at the same time。
 * @param largeFaceListId An existing user-specified unique candidate large face list, created in LargeFaceList - Create. Large face list contains a set of persistedFaceIds which are persisted and will never expire. Parameter faceListId, largeFaceListId and faceIds should not be provided at the same time.
 * @param faceIds An array of candidate faceIds. All of them are created by Face - Detect and the faceIds will expire 24 hours after the detection call. The number of faceIds is limited to 1000. Parameter faceListId, largeFaceListId and faceIds should not be provided at the same time.
 * @param maxNumOfCandidatesReturned The number of top similar faces returned. The valid range is [1, 1000].
 * @param mode Similar face searching mode. It can be "matchPerson" or "matchFace". Possible values include: 'matchPerson', 'matchFace'
 * @param callback A block where NSArray<CSFA_SimilarFace*> is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a requred parameter is not provided or a rule validation has failed
 */
- (void)findSimilarWithFaceId:(NSUUID *)faceId withFaceListId:(NSString *)faceListId withLargeFaceListId:(NSString *)largeFaceListId withFaceIds:(NSArray<NSUUID*> *)faceIds withMaxNumOfCandidatesReturned:(AZInteger *)maxNumOfCandidatesReturned withMode:(CSFA_FindSimilarMatchMode *)mode withCallback:(void(^)(NSArray<CSFA_SimilarFace*>*, AZOperationError*))callback {

    if (self.service.endpoint == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'self.service.endpoint' is required and cannot be nil."
            userInfo: nil];
    }
    if (faceId == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'faceId' is required and cannot be nil."
            userInfo: nil];
    }
    if (faceListId != nil) {
        if (faceListId.length > 64) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'faceListId' failed rule validation, rule name: 'MaxLength', constrain value: 64"
                userInfo: nil];
        }
        if (![[NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"^[a-z0-9-_]+$"]evaluateWithObject:faceListId]) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'faceListId' failed rule validation, rule name: 'Pattern', constrain value: ^[a-z0-9-_]+$"
                userInfo: nil];
        }
    }
    if (largeFaceListId != nil) {
        if (largeFaceListId.length > 64) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'largeFaceListId' failed rule validation, rule name: 'MaxLength', constrain value: 64"
                userInfo: nil];
        }
        if (![[NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"^[a-z0-9-_]+$"]evaluateWithObject:largeFaceListId]) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'largeFaceListId' failed rule validation, rule name: 'Pattern', constrain value: ^[a-z0-9-_]+$"
                userInfo: nil];
        }
    }
    if (faceIds != nil) {
        if (faceIds.count > 1000) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'faceIds' failed rule validation, rule name: 'MaxItems', constrain value: 1000"
                userInfo: nil];
        }
    }
    if (maxNumOfCandidatesReturned != nil) {
        if ([maxNumOfCandidatesReturned intValue] > 1000) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'maxNumOfCandidatesReturned' failed rule validation, rule name: 'InclusiveMaximum', constrain value: 1000"
                userInfo: nil];
        }
        if ([maxNumOfCandidatesReturned intValue] < 1) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'maxNumOfCandidatesReturned' failed rule validation, rule name: 'InclusiveMinimum', constrain value: 1"
                userInfo: nil];
        }
    }
    CSFA_FindSimilarRequest *body = [CSFA_FindSimilarRequest new];
    if (faceListId != nil || largeFaceListId != nil || faceIds != nil || maxNumOfCandidatesReturned != nil || mode != nil) {
        body.faceId = faceId;
        body.faceListId = faceListId;
        body.largeFaceListId = largeFaceListId;
        body.faceIds = faceIds;
        body.maxNumOfCandidatesReturned = maxNumOfCandidatesReturned;
        body.mode = mode;
    }
    NSString* __url = [AZRequestHelper buildUrl:self.service.DEFAULT_BASE_URL
                                       withPath:@"/findsimilars"
                                 withPathParams:@{@"{Endpoint}":self.service.endpoint}
                                withQueryParams:@{}];
    AZRequestParameters* __rp = [AZRequestParameters createWithUrl:__url
                                                        withMethod:@"POST"
                                                       withHeaders:@{@"Content-Type":@"application/json; charset=utf-8"}
                                                          withBody:[AZJsonCoder encodeObject:body]];
    [__rp withSpecialHeaders:self.service.specialHeaders];
    [AZRequestHelper executeRequest:__rp
                  withResponseClass:[NSArray<CSFA_SimilarFace*> class]
                   withElementClass:[CSFA_SimilarFace class]
                     withErrorClass:[CSFA_APIError class]
                       withCallback:^(id _Nullable result, AZOperationError* _Nullable error) {
        callback(result, error);
    }];
}

/**
 * Divide candidate faces into groups based on face similarity.
 *
 * @param faceIds Array of candidate faceId created by Face - Detect. The maximum is 1000 faces
 * @param callback A block where CSFA_GroupResult is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a requred parameter is not provided or a rule validation has failed
 */
- (void)groupWithFaceIds:(NSArray<NSUUID*> *)faceIds withCallback:(void(^)(CSFA_GroupResult*, AZOperationError*))callback {

    if (self.service.endpoint == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'self.service.endpoint' is required and cannot be nil."
            userInfo: nil];
    }
    if (faceIds == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'faceIds' is required and cannot be nil."
            userInfo: nil];
    }
    if (faceIds != nil) {
        if (faceIds.count > 1000) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'faceIds' failed rule validation, rule name: 'MaxItems', constrain value: 1000"
                userInfo: nil];
        }
    }
    CSFA_GroupRequest *body = [CSFA_GroupRequest new];
    body.faceIds = faceIds;
    NSString* __url = [AZRequestHelper buildUrl:self.service.DEFAULT_BASE_URL
                                       withPath:@"/group"
                                 withPathParams:@{@"{Endpoint}":self.service.endpoint}
                                withQueryParams:@{}];
    AZRequestParameters* __rp = [AZRequestParameters createWithUrl:__url
                                                        withMethod:@"POST"
                                                       withHeaders:@{@"Content-Type":@"application/json; charset=utf-8"}
                                                          withBody:[AZJsonCoder encodeObject:body]];
    [__rp withSpecialHeaders:self.service.specialHeaders];
    [AZRequestHelper executeRequest:__rp
                  withResponseClass:[CSFA_GroupResult class]
                     withErrorClass:[CSFA_APIError class]
                       withCallback:^(id _Nullable result, AZOperationError* _Nullable error) {
        callback(result, error);
    }];
}

/**
 * 1-to-many identification to find the closest matches of the specific query person face from a person group or large person group.
 *
 * @param faceIds Array of query faces faceIds, created by the Face - Detect. Each of the faces are identified independently. The valid number of faceIds is between [1, 10].
 * @param callback A block where NSArray<CSFA_IdentifyResult*> is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a requred parameter is not provided
 */
- (void)identifyWithFaceIds:(NSArray<NSUUID*> *)faceIds withCallback:(void(^)(NSArray<CSFA_IdentifyResult*>*, AZOperationError*))callback {
    NSString* personGroupId = nil;
    NSString* largePersonGroupId = nil;
    AZInteger* maxNumOfCandidatesReturned = @1;
    AZDouble* confidenceThreshold = nil;
    [self identifyWithFaceIds:faceIds withPersonGroupId:personGroupId withLargePersonGroupId:largePersonGroupId withMaxNumOfCandidatesReturned:maxNumOfCandidatesReturned withConfidenceThreshold:confidenceThreshold withCallback:callback];
}

/**
 * 1-to-many identification to find the closest matches of the specific query person face from a person group or large person group.
 *
 * @param faceIds Array of query faces faceIds, created by the Face - Detect. Each of the faces are identified independently. The valid number of faceIds is between [1, 10].
 * @param personGroupId PersonGroupId of the target person group, created by PersonGroup - Create. Parameter personGroupId and largePersonGroupId should not be provided at the same time.
 * @param largePersonGroupId LargePersonGroupId of the target large person group, created by LargePersonGroup - Create. Parameter personGroupId and largePersonGroupId should not be provided at the same time.
 * @param maxNumOfCandidatesReturned The range of maxNumOfCandidatesReturned is between 1 and 5 (default is 1).
 * @param confidenceThreshold Confidence threshold of identification, used to judge whether one face belong to one person. The range of confidenceThreshold is [0, 1] (default specified by algorithm).
 * @param callback A block where NSArray<CSFA_IdentifyResult*> is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a requred parameter is not provided or a rule validation has failed
 */
- (void)identifyWithFaceIds:(NSArray<NSUUID*> *)faceIds withPersonGroupId:(NSString *)personGroupId withLargePersonGroupId:(NSString *)largePersonGroupId withMaxNumOfCandidatesReturned:(AZInteger *)maxNumOfCandidatesReturned withConfidenceThreshold:(AZDouble *)confidenceThreshold withCallback:(void(^)(NSArray<CSFA_IdentifyResult*>*, AZOperationError*))callback {

    if (self.service.endpoint == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'self.service.endpoint' is required and cannot be nil."
            userInfo: nil];
    }
    if (faceIds == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'faceIds' is required and cannot be nil."
            userInfo: nil];
    }
    if (faceIds != nil) {
        if (faceIds.count > 10) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'faceIds' failed rule validation, rule name: 'MaxItems', constrain value: 10"
                userInfo: nil];
        }
    }
    if (personGroupId != nil) {
        if (personGroupId.length > 64) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'personGroupId' failed rule validation, rule name: 'MaxLength', constrain value: 64"
                userInfo: nil];
        }
        if (![[NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"^[a-z0-9-_]+$"]evaluateWithObject:personGroupId]) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'personGroupId' failed rule validation, rule name: 'Pattern', constrain value: ^[a-z0-9-_]+$"
                userInfo: nil];
        }
    }
    if (largePersonGroupId != nil) {
        if (largePersonGroupId.length > 64) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'largePersonGroupId' failed rule validation, rule name: 'MaxLength', constrain value: 64"
                userInfo: nil];
        }
        if (![[NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"^[a-z0-9-_]+$"]evaluateWithObject:largePersonGroupId]) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'largePersonGroupId' failed rule validation, rule name: 'Pattern', constrain value: ^[a-z0-9-_]+$"
                userInfo: nil];
        }
    }
    if (maxNumOfCandidatesReturned != nil) {
        if ([maxNumOfCandidatesReturned intValue] > 5) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'maxNumOfCandidatesReturned' failed rule validation, rule name: 'InclusiveMaximum', constrain value: 5"
                userInfo: nil];
        }
        if ([maxNumOfCandidatesReturned intValue] < 1) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'maxNumOfCandidatesReturned' failed rule validation, rule name: 'InclusiveMinimum', constrain value: 1"
                userInfo: nil];
        }
    }
    CSFA_IdentifyRequest *body = [CSFA_IdentifyRequest new];
    if (personGroupId != nil || largePersonGroupId != nil || maxNumOfCandidatesReturned != nil || confidenceThreshold != nil) {
        body.faceIds = faceIds;
        body.personGroupId = personGroupId;
        body.largePersonGroupId = largePersonGroupId;
        body.maxNumOfCandidatesReturned = maxNumOfCandidatesReturned;
        body.confidenceThreshold = confidenceThreshold;
    }
    NSString* __url = [AZRequestHelper buildUrl:self.service.DEFAULT_BASE_URL
                                       withPath:@"/identify"
                                 withPathParams:@{@"{Endpoint}":self.service.endpoint}
                                withQueryParams:@{}];
    AZRequestParameters* __rp = [AZRequestParameters createWithUrl:__url
                                                        withMethod:@"POST"
                                                       withHeaders:@{@"Content-Type":@"application/json; charset=utf-8"}
                                                          withBody:[AZJsonCoder encodeObject:body]];
    [__rp withSpecialHeaders:self.service.specialHeaders];
    [AZRequestHelper executeRequest:__rp
                  withResponseClass:[NSArray<CSFA_IdentifyResult*> class]
                   withElementClass:[CSFA_IdentifyResult class]
                     withErrorClass:[CSFA_APIError class]
                       withCallback:^(id _Nullable result, AZOperationError* _Nullable error) {
        callback(result, error);
    }];
}

/**
 * Verify whether two faces belong to a same person or whether one face belongs to a person.
 *
 * @param faceId1 FaceId of the first face, comes from Face - Detect
 * @param faceId2 FaceId of the second face, comes from Face - Detect
 * @param callback A block where CSFA_VerifyResult is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a requred parameter is not provided or a rule validation has failed
 */
- (void)verifyFaceToFaceWithFaceId1:(NSUUID *)faceId1 withFaceId2:(NSUUID *)faceId2 withCallback:(void(^)(CSFA_VerifyResult*, AZOperationError*))callback {

    if (self.service.endpoint == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'self.service.endpoint' is required and cannot be nil."
            userInfo: nil];
    }
    if (faceId1 == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'faceId1' is required and cannot be nil."
            userInfo: nil];
    }
    if (faceId2 == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'faceId2' is required and cannot be nil."
            userInfo: nil];
    }
    CSFA_VerifyFaceToFaceRequest *body = [CSFA_VerifyFaceToFaceRequest new];
    body.faceId1 = faceId1;
    body.faceId2 = faceId2;
    NSString* __url = [AZRequestHelper buildUrl:self.service.DEFAULT_BASE_URL
                                       withPath:@"/verify"
                                 withPathParams:@{@"{Endpoint}":self.service.endpoint}
                                withQueryParams:@{}];
    AZRequestParameters* __rp = [AZRequestParameters createWithUrl:__url
                                                        withMethod:@"POST"
                                                       withHeaders:@{@"Content-Type":@"application/json; charset=utf-8"}
                                                          withBody:[AZJsonCoder encodeObject:body]];
    [__rp withSpecialHeaders:self.service.specialHeaders];
    [AZRequestHelper executeRequest:__rp
                  withResponseClass:[CSFA_VerifyResult class]
                     withErrorClass:[CSFA_APIError class]
                       withCallback:^(id _Nullable result, AZOperationError* _Nullable error) {
        callback(result, error);
    }];
}

/**
 * Detect human faces in an image and returns face locations, and optionally with faceIds, landmarks, and attributes.
 *
 * @param url Publicly reachable URL of an image
 * @param callback A block where NSArray<CSFA_DetectedFace*> is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a requred parameter is not provided
 */
- (void)detectWithUrlWithUrl:(NSString *)url withCallback:(void(^)(NSArray<CSFA_DetectedFace*>*, AZOperationError*))callback {
    AZBoolean* returnFaceId = AZ_YES;
    AZBoolean* returnFaceLandmarks = AZ_NO;
    NSArray<CSFA_FaceAttributeType*>* returnFaceAttributes = nil;
    [self detectWithUrlWithUrl:url withReturnFaceId:returnFaceId withReturnFaceLandmarks:returnFaceLandmarks withReturnFaceAttributes:returnFaceAttributes withCallback:callback];
}

/**
 * Detect human faces in an image and returns face locations, and optionally with faceIds, landmarks, and attributes.
 *
 * @param url Publicly reachable URL of an image
 * @param returnFaceId A value indicating whether the operation should return faceIds of detected faces.
 * @param returnFaceLandmarks A value indicating whether the operation should return landmarks of the detected faces.
 * @param returnFaceAttributes Analyze and return the one or more specified face attributes in the comma-separated string like "returnFaceAttributes=age,gender". Supported face attributes include age, gender, headPose, smile, facialHair, glasses and emotion. Note that each face attribute analysis has additional computational and time cost.
 * @param callback A block where NSArray<CSFA_DetectedFace*> is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a requred parameter is not provided or a rule validation has failed
 */
- (void)detectWithUrlWithUrl:(NSString *)url withReturnFaceId:(AZBoolean *)returnFaceId withReturnFaceLandmarks:(AZBoolean *)returnFaceLandmarks withReturnFaceAttributes:(NSArray<CSFA_FaceAttributeType*> *)returnFaceAttributes withCallback:(void(^)(NSArray<CSFA_DetectedFace*>*, AZOperationError*))callback {

    if (self.service.endpoint == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'self.service.endpoint' is required and cannot be nil."
            userInfo: nil];
    }
    if (url == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'url' is required and cannot be nil."
            userInfo: nil];
    }
    CSFA_ImageUrl *imageUrl = [CSFA_ImageUrl new];
    imageUrl.url = url;
    NSString* __url = [AZRequestHelper buildUrl:self.service.DEFAULT_BASE_URL
                                       withPath:@"/detect"
                                 withPathParams:@{@"{Endpoint}":self.service.endpoint}
                                withQueryParams:@{@"returnFaceId":AZ_NULLABLE(returnFaceId),@"returnFaceLandmarks":AZ_NULLABLE(returnFaceLandmarks),@"returnFaceAttributes":AZ_NULLABLE(returnFaceAttributes)}];
    AZRequestParameters* __rp = [AZRequestParameters createWithUrl:__url
                                                        withMethod:@"POST"
                                                       withHeaders:@{@"Content-Type":@"application/json; charset=utf-8"}
                                                          withBody:[AZJsonCoder encodeObject:imageUrl]];
    [__rp withSpecialHeaders:self.service.specialHeaders];
    [AZRequestHelper executeRequest:__rp
                  withResponseClass:[NSArray<CSFA_DetectedFace*> class]
                   withElementClass:[CSFA_DetectedFace class]
                     withErrorClass:[CSFA_APIError class]
                       withCallback:^(id _Nullable result, AZOperationError* _Nullable error) {
        callback(result, error);
    }];
}

/**
 * Verify whether two faces belong to a same person. Compares a face Id with a Person Id.
 *
 * @param faceId FaceId of the face, comes from Face - Detect
 * @param personId Specify a certain person in a person group or a large person group. personId is created in PersonGroup Person - Create or LargePersonGroup Person - Create.
 * @param callback A block where CSFA_VerifyResult is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a requred parameter is not provided
 */
- (void)verifyFaceToPersonWithFaceId:(NSUUID *)faceId withPersonId:(NSUUID *)personId withCallback:(void(^)(CSFA_VerifyResult*, AZOperationError*))callback {
    NSString* personGroupId = nil;
    NSString* largePersonGroupId = nil;
    [self verifyFaceToPersonWithFaceId:faceId withPersonId:personId withPersonGroupId:personGroupId withLargePersonGroupId:largePersonGroupId withCallback:callback];
}

/**
 * Verify whether two faces belong to a same person. Compares a face Id with a Person Id.
 *
 * @param faceId FaceId of the face, comes from Face - Detect
 * @param personId Specify a certain person in a person group or a large person group. personId is created in PersonGroup Person - Create or LargePersonGroup Person - Create.
 * @param personGroupId Using existing personGroupId and personId for fast loading a specified person. personGroupId is created in PersonGroup - Create. Parameter personGroupId and largePersonGroupId should not be provided at the same time.
 * @param largePersonGroupId Using existing largePersonGroupId and personId for fast loading a specified person. largePersonGroupId is created in LargePersonGroup - Create. Parameter personGroupId and largePersonGroupId should not be provided at the same time.
 * @param callback A block where CSFA_VerifyResult is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a requred parameter is not provided or a rule validation has failed
 */
- (void)verifyFaceToPersonWithFaceId:(NSUUID *)faceId withPersonId:(NSUUID *)personId withPersonGroupId:(NSString *)personGroupId withLargePersonGroupId:(NSString *)largePersonGroupId withCallback:(void(^)(CSFA_VerifyResult*, AZOperationError*))callback {

    if (self.service.endpoint == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'self.service.endpoint' is required and cannot be nil."
            userInfo: nil];
    }
    if (faceId == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'faceId' is required and cannot be nil."
            userInfo: nil];
    }
    if (personId == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'personId' is required and cannot be nil."
            userInfo: nil];
    }
    if (personGroupId != nil) {
        if (personGroupId.length > 64) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'personGroupId' failed rule validation, rule name: 'MaxLength', constrain value: 64"
                userInfo: nil];
        }
        if (![[NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"^[a-z0-9-_]+$"]evaluateWithObject:personGroupId]) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'personGroupId' failed rule validation, rule name: 'Pattern', constrain value: ^[a-z0-9-_]+$"
                userInfo: nil];
        }
    }
    if (largePersonGroupId != nil) {
        if (largePersonGroupId.length > 64) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'largePersonGroupId' failed rule validation, rule name: 'MaxLength', constrain value: 64"
                userInfo: nil];
        }
        if (![[NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"^[a-z0-9-_]+$"]evaluateWithObject:largePersonGroupId]) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'largePersonGroupId' failed rule validation, rule name: 'Pattern', constrain value: ^[a-z0-9-_]+$"
                userInfo: nil];
        }
    }
    CSFA_VerifyFaceToPersonRequest *body = [CSFA_VerifyFaceToPersonRequest new];
    if (personGroupId != nil || largePersonGroupId != nil) {
        body.faceId = faceId;
        body.personGroupId = personGroupId;
        body.largePersonGroupId = largePersonGroupId;
        body.personId = personId;
    }
    NSString* __url = [AZRequestHelper buildUrl:self.service.DEFAULT_BASE_URL
                                       withPath:@"/verify"
                                 withPathParams:@{@"{Endpoint}":self.service.endpoint}
                                withQueryParams:@{}];
    AZRequestParameters* __rp = [AZRequestParameters createWithUrl:__url
                                                        withMethod:@"POST"
                                                       withHeaders:@{@"Content-Type":@"application/json; charset=utf-8"}
                                                          withBody:[AZJsonCoder encodeObject:body]];
    [__rp withSpecialHeaders:self.service.specialHeaders];
    [AZRequestHelper executeRequest:__rp
                  withResponseClass:[CSFA_VerifyResult class]
                     withErrorClass:[CSFA_APIError class]
                       withCallback:^(id _Nullable result, AZOperationError* _Nullable error) {
        callback(result, error);
    }];
}

/**
 * Detect human faces in an image and returns face locations, and optionally with faceIds, landmarks, and attributes.
 *
 * @param image An image stream.
 * @param callback A block where NSArray<CSFA_DetectedFace*> is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a requred parameter is not provided
 */
- (void)detectWithStreamWithImage:(AZStream *)image withCallback:(void(^)(NSArray<CSFA_DetectedFace*>*, AZOperationError*))callback {
    AZBoolean* returnFaceId = AZ_YES;
    AZBoolean* returnFaceLandmarks = AZ_NO;
    NSArray<CSFA_FaceAttributeType*>* returnFaceAttributes = nil;
    [self detectWithStreamWithImage:image withReturnFaceId:returnFaceId withReturnFaceLandmarks:returnFaceLandmarks withReturnFaceAttributes:returnFaceAttributes withCallback:callback];
}

/**
 * Detect human faces in an image and returns face locations, and optionally with faceIds, landmarks, and attributes.
 *
 * @param image An image stream.
 * @param returnFaceId A value indicating whether the operation should return faceIds of detected faces.
 * @param returnFaceLandmarks A value indicating whether the operation should return landmarks of the detected faces.
 * @param returnFaceAttributes Analyze and return the one or more specified face attributes in the comma-separated string like "returnFaceAttributes=age,gender". Supported face attributes include age, gender, headPose, smile, facialHair, glasses and emotion. Note that each face attribute analysis has additional computational and time cost.
 * @param callback A block where NSArray<CSFA_DetectedFace*> is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a requred parameter is not provided or a rule validation has failed
 */
- (void)detectWithStreamWithImage:(AZStream *)image withReturnFaceId:(AZBoolean *)returnFaceId withReturnFaceLandmarks:(AZBoolean *)returnFaceLandmarks withReturnFaceAttributes:(NSArray<CSFA_FaceAttributeType*> *)returnFaceAttributes withCallback:(void(^)(NSArray<CSFA_DetectedFace*>*, AZOperationError*))callback {

    if (self.service.endpoint == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'self.service.endpoint' is required and cannot be nil."
            userInfo: nil];
    }
    if (image == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'image' is required and cannot be nil."
            userInfo: nil];
    }
    NSString* __url = [AZRequestHelper buildUrl:self.service.DEFAULT_BASE_URL
                                       withPath:@"/detect"
                                 withPathParams:@{@"{Endpoint}":self.service.endpoint}
                                withQueryParams:@{@"returnFaceId":AZ_NULLABLE(returnFaceId),@"returnFaceLandmarks":AZ_NULLABLE(returnFaceLandmarks),@"returnFaceAttributes":AZ_NULLABLE(returnFaceAttributes)}];
    AZRequestParameters* __rp = [AZRequestParameters createWithUrl:__url
                                                        withMethod:@"POST"
                                                       withHeaders:@{@"Content-Type":@"application/octet-stream"}
                                                          withBody:image];
    [__rp withSpecialHeaders:self.service.specialHeaders];
    [AZRequestHelper executeRequest:__rp
                  withResponseClass:[NSArray<CSFA_DetectedFace*> class]
                   withElementClass:[CSFA_DetectedFace class]
                     withErrorClass:[CSFA_APIError class]
                       withCallback:^(id _Nullable result, AZOperationError* _Nullable error) {
        callback(result, error);
    }];
}

@end