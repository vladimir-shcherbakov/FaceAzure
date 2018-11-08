/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import <AzureClientRuntime/AzureClientRuntime.h>
#import "CSFA_PersonGroups.h"
#import "CSFA_APIError.h"
#import "CSFA_FaceClientService.h"
#import "CSFA_APIError.h"
#import "CSFA_NameAndUserDataContract.h"

/**
 * The protocol CSFA_PersonGroupsProtocol implementation
 */
@implementation CSFA_PersonGroups

- (instancetype)initWithService:(CSFA_FaceClientService *)service {
    if (self = [super init]) {
        _service = service;
    }

    return self;
}

/**
 * Create a new person group with specified personGroupId, name and user-provided userData.
 *
 * @param personGroupId Id referencing a particular person group.
 * @param callback A block where AZOperationError is nil if the operation is successful
 * @throws IllegalArgumentException if a requred parameter is not provided
 */
- (void)createWithPersonGroupId:(NSString *)personGroupId withCallback:(void(^)(AZOperationError*))callback {
    NSString* name = nil;
    NSString* userData = nil;
    [self createWithPersonGroupId:personGroupId withName:name withUserData:userData withCallback:callback];
}

/**
 * Create a new person group with specified personGroupId, name and user-provided userData.
 *
 * @param personGroupId Id referencing a particular person group.
 * @param name User defined name, maximum length is 128.
 * @param userData User specified data. Length should not exceed 16KB.
 * @param callback A block where AZOperationError is nil if the operation is successful
 * @throws IllegalArgumentException if a requred parameter is not provided or a rule validation has failed
 */
- (void)createWithPersonGroupId:(NSString *)personGroupId withName:(NSString *)name withUserData:(NSString *)userData withCallback:(void(^)(AZOperationError*))callback {

    if (self.service.endpoint == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'self.service.endpoint' is required and cannot be nil."
            userInfo: nil];
    }
    if (personGroupId == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'personGroupId' is required and cannot be nil."
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
    if (name != nil) {
        if (name.length > 128) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'name' failed rule validation, rule name: 'MaxLength', constrain value: 128"
                userInfo: nil];
        }
    }
    if (userData != nil) {
        if (userData.length > 16384) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'userData' failed rule validation, rule name: 'MaxLength', constrain value: 16384"
                userInfo: nil];
        }
    }
    CSFA_NameAndUserDataContract *body = [CSFA_NameAndUserDataContract new];
    if (name != nil || userData != nil) {
        body.name = name;
        body.userData = userData;
    }
    NSString* __url = [AZRequestHelper buildUrl:self.service.DEFAULT_BASE_URL
                                       withPath:@"/persongroups/{personGroupId}"
                                 withPathParams:@{@"{Endpoint}":self.service.endpoint,@"{personGroupId}":personGroupId}
                                withQueryParams:@{}];
    AZRequestParameters* __rp = [AZRequestParameters createWithUrl:__url
                                                        withMethod:@"PUT"
                                                       withHeaders:@{@"Content-Type":@"application/json; charset=utf-8"}
                                                          withBody:[AZJsonCoder encodeObject:body]];
    [__rp withSpecialHeaders:self.service.specialHeaders];
    [AZRequestHelper executeRequest:__rp
                     withErrorClass:[CSFA_APIError class]
                       withCallback:^(AZOperationError* _Nullable error) {
        callback(error);
    }];
}

/**
 * Delete an existing person group. Persisted face features of all people in the person group will also be deleted.
 *
 * @param personGroupId Id referencing a particular person group.
 * @param callback A block where AZOperationError is nil if the operation is successful
 * @throws IllegalArgumentException if a requred parameter is not provided or a rule validation has failed
 */
- (void)deleteWithPersonGroupId:(NSString *)personGroupId withCallback:(void(^)(AZOperationError*))callback {

    if (self.service.endpoint == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'self.service.endpoint' is required and cannot be nil."
            userInfo: nil];
    }
    if (personGroupId == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'personGroupId' is required and cannot be nil."
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
    NSString* __url = [AZRequestHelper buildUrl:self.service.DEFAULT_BASE_URL
                                       withPath:@"/persongroups/{personGroupId}"
                                 withPathParams:@{@"{Endpoint}":self.service.endpoint,@"{personGroupId}":personGroupId}
                                withQueryParams:@{}];
    AZRequestParameters* __rp = [AZRequestParameters createWithUrl:__url
                                                        withMethod:@"DELETE"
                                                       withHeaders:@{@"Content-Type":@"application/json; charset=utf-8"}
                                                          withBody:nil];
    [__rp withSpecialHeaders:self.service.specialHeaders];
    [AZRequestHelper executeRequest:__rp
                     withErrorClass:[CSFA_APIError class]
                       withCallback:^(AZOperationError* _Nullable error) {
        callback(error);
    }];
}

/**
 * Retrieve the information of a person group, including its name and userData.
 *
 * @param personGroupId Id referencing a particular person group.
 * @param callback A block where CSFA_PersonGroup is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a requred parameter is not provided or a rule validation has failed
 */
- (void)getWithPersonGroupId:(NSString *)personGroupId withCallback:(void(^)(CSFA_PersonGroup*, AZOperationError*))callback {

    if (self.service.endpoint == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'self.service.endpoint' is required and cannot be nil."
            userInfo: nil];
    }
    if (personGroupId == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'personGroupId' is required and cannot be nil."
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
    NSString* __url = [AZRequestHelper buildUrl:self.service.DEFAULT_BASE_URL
                                       withPath:@"/persongroups/{personGroupId}"
                                 withPathParams:@{@"{Endpoint}":self.service.endpoint,@"{personGroupId}":personGroupId}
                                withQueryParams:@{}];
    AZRequestParameters* __rp = [AZRequestParameters createWithUrl:__url
                                                        withMethod:@"GET"
                                                       withHeaders:@{@"Content-Type":@"application/json; charset=utf-8"}
                                                          withBody:nil];
    [__rp withSpecialHeaders:self.service.specialHeaders];
    [AZRequestHelper executeRequest:__rp
                  withResponseClass:[CSFA_PersonGroup class]
                     withErrorClass:[CSFA_APIError class]
                       withCallback:^(id _Nullable result, AZOperationError* _Nullable error) {
        callback(result, error);
    }];
}

/**
 * Update an existing person group's display name and userData. The properties which does not appear in request body will not be updated.
 *
 * @param personGroupId Id referencing a particular person group.
 * @param callback A block where AZOperationError is nil if the operation is successful
 * @throws IllegalArgumentException if a requred parameter is not provided
 */
- (void)updateWithPersonGroupId:(NSString *)personGroupId withCallback:(void(^)(AZOperationError*))callback {
    NSString* name = nil;
    NSString* userData = nil;
    [self updateWithPersonGroupId:personGroupId withName:name withUserData:userData withCallback:callback];
}

/**
 * Update an existing person group's display name and userData. The properties which does not appear in request body will not be updated.
 *
 * @param personGroupId Id referencing a particular person group.
 * @param name User defined name, maximum length is 128.
 * @param userData User specified data. Length should not exceed 16KB.
 * @param callback A block where AZOperationError is nil if the operation is successful
 * @throws IllegalArgumentException if a requred parameter is not provided or a rule validation has failed
 */
- (void)updateWithPersonGroupId:(NSString *)personGroupId withName:(NSString *)name withUserData:(NSString *)userData withCallback:(void(^)(AZOperationError*))callback {

    if (self.service.endpoint == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'self.service.endpoint' is required and cannot be nil."
            userInfo: nil];
    }
    if (personGroupId == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'personGroupId' is required and cannot be nil."
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
    if (name != nil) {
        if (name.length > 128) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'name' failed rule validation, rule name: 'MaxLength', constrain value: 128"
                userInfo: nil];
        }
    }
    if (userData != nil) {
        if (userData.length > 16384) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'userData' failed rule validation, rule name: 'MaxLength', constrain value: 16384"
                userInfo: nil];
        }
    }
    CSFA_NameAndUserDataContract *body = [CSFA_NameAndUserDataContract new];
    if (name != nil || userData != nil) {
        body.name = name;
        body.userData = userData;
    }
    NSString* __url = [AZRequestHelper buildUrl:self.service.DEFAULT_BASE_URL
                                       withPath:@"/persongroups/{personGroupId}"
                                 withPathParams:@{@"{Endpoint}":self.service.endpoint,@"{personGroupId}":personGroupId}
                                withQueryParams:@{}];
    AZRequestParameters* __rp = [AZRequestParameters createWithUrl:__url
                                                        withMethod:@"PATCH"
                                                       withHeaders:@{@"Content-Type":@"application/json; charset=utf-8"}
                                                          withBody:[AZJsonCoder encodeObject:body]];
    [__rp withSpecialHeaders:self.service.specialHeaders];
    [AZRequestHelper executeRequest:__rp
                     withErrorClass:[CSFA_APIError class]
                       withCallback:^(AZOperationError* _Nullable error) {
        callback(error);
    }];
}

/**
 * Retrieve the training status of a person group (completed or ongoing).
 *
 * @param personGroupId Id referencing a particular person group.
 * @param callback A block where CSFA_TrainingStatus is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a requred parameter is not provided or a rule validation has failed
 */
- (void)getTrainingStatusWithPersonGroupId:(NSString *)personGroupId withCallback:(void(^)(CSFA_TrainingStatus*, AZOperationError*))callback {

    if (self.service.endpoint == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'self.service.endpoint' is required and cannot be nil."
            userInfo: nil];
    }
    if (personGroupId == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'personGroupId' is required and cannot be nil."
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
    NSString* __url = [AZRequestHelper buildUrl:self.service.DEFAULT_BASE_URL
                                       withPath:@"/persongroups/{personGroupId}/training"
                                 withPathParams:@{@"{Endpoint}":self.service.endpoint,@"{personGroupId}":personGroupId}
                                withQueryParams:@{}];
    AZRequestParameters* __rp = [AZRequestParameters createWithUrl:__url
                                                        withMethod:@"GET"
                                                       withHeaders:@{@"Content-Type":@"application/json; charset=utf-8"}
                                                          withBody:nil];
    [__rp withSpecialHeaders:self.service.specialHeaders];
    [AZRequestHelper executeRequest:__rp
                  withResponseClass:[CSFA_TrainingStatus class]
                     withErrorClass:[CSFA_APIError class]
                       withCallback:^(id _Nullable result, AZOperationError* _Nullable error) {
        callback(result, error);
    }];
}

/**
 * List person groups and their information.
 *
 * @param callback A block where NSArray<CSFA_PersonGroup*> is a result object and AZOperationError is nil, if the operation is successful
 */
- (void)listWithCallback:(void(^)(NSArray<CSFA_PersonGroup*>*, AZOperationError*))callback {
    NSString* start = nil;
    AZInteger* top = @1000;
    [self listWithStart:start withTop:top withCallback:callback];
}

/**
 * List person groups and their information.
 *
 * @param start List person groups from the least personGroupId greater than the "start".
 * @param top The number of person groups to list.
 * @param callback A block where NSArray<CSFA_PersonGroup*> is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a requred parameter is not provided or a rule validation has failed
 */
- (void)listWithStart:(NSString *)start withTop:(AZInteger *)top withCallback:(void(^)(NSArray<CSFA_PersonGroup*>*, AZOperationError*))callback {

    if (self.service.endpoint == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'self.service.endpoint' is required and cannot be nil."
            userInfo: nil];
    }
    if (start != nil) {
        if (start.length > 64) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'start' failed rule validation, rule name: 'MaxLength', constrain value: 64"
                userInfo: nil];
        }
    }
    if (top != nil) {
        if ([top intValue] > 1000) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'top' failed rule validation, rule name: 'InclusiveMaximum', constrain value: 1000"
                userInfo: nil];
        }
        if ([top intValue] < 1) {
            @throw [NSException
                exceptionWithName: @"IllegalArgumentException"
                reason: @"Parameter 'top' failed rule validation, rule name: 'InclusiveMinimum', constrain value: 1"
                userInfo: nil];
        }
    }
    NSString* __url = [AZRequestHelper buildUrl:self.service.DEFAULT_BASE_URL
                                       withPath:@"/persongroups"
                                 withPathParams:@{@"{Endpoint}":self.service.endpoint}
                                withQueryParams:@{@"start":AZ_NULLABLE(start),@"top":AZ_NULLABLE(top)}];
    AZRequestParameters* __rp = [AZRequestParameters createWithUrl:__url
                                                        withMethod:@"GET"
                                                       withHeaders:@{@"Content-Type":@"application/json; charset=utf-8"}
                                                          withBody:nil];
    [__rp withSpecialHeaders:self.service.specialHeaders];
    [AZRequestHelper executeRequest:__rp
                  withResponseClass:[NSArray<CSFA_PersonGroup*> class]
                   withElementClass:[CSFA_PersonGroup class]
                     withErrorClass:[CSFA_APIError class]
                       withCallback:^(id _Nullable result, AZOperationError* _Nullable error) {
        callback(result, error);
    }];
}

/**
 * Queue a person group training task, the training task may not be started immediately.
 *
 * @param personGroupId Id referencing a particular person group.
 * @param callback A block where AZOperationError is nil if the operation is successful
 * @throws IllegalArgumentException if a requred parameter is not provided or a rule validation has failed
 */
- (void)trainWithPersonGroupId:(NSString *)personGroupId withCallback:(void(^)(AZOperationError*))callback {

    if (self.service.endpoint == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'self.service.endpoint' is required and cannot be nil."
            userInfo: nil];
    }
    if (personGroupId == nil) {
        @throw [NSException
            exceptionWithName: @"IllegalArgumentException"
            reason: @"Parameter 'personGroupId' is required and cannot be nil."
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
    NSString* __url = [AZRequestHelper buildUrl:self.service.DEFAULT_BASE_URL
                                       withPath:@"/persongroups/{personGroupId}/train"
                                 withPathParams:@{@"{Endpoint}":self.service.endpoint,@"{personGroupId}":personGroupId}
                                withQueryParams:@{}];
    AZRequestParameters* __rp = [AZRequestParameters createWithUrl:__url
                                                        withMethod:@"POST"
                                                       withHeaders:@{@"Content-Type":@"application/json; charset=utf-8"}
                                                          withBody:nil];
    [__rp withSpecialHeaders:self.service.specialHeaders];
    [AZRequestHelper executeRequest:__rp
                     withErrorClass:[CSFA_APIError class]
                       withCallback:^(AZOperationError* _Nullable error) {
        callback(error);
    }];
}

@end
