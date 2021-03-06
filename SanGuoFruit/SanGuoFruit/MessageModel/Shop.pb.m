// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "Shop.pb.h"

@implementation ShopRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [ShopRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = [registry retain];
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface GetShopListReq ()
@property int32_t shopId;
@property int32_t count;
@property int32_t channelId;
@end

@implementation GetShopListReq

- (BOOL) hasShopId {
  return !!hasShopId_;
}
- (void) setHasShopId:(BOOL) value {
  hasShopId_ = !!value;
}
@synthesize shopId;
- (BOOL) hasCount {
  return !!hasCount_;
}
- (void) setHasCount:(BOOL) value {
  hasCount_ = !!value;
}
@synthesize count;
- (BOOL) hasChannelId {
  return !!hasChannelId_;
}
- (void) setHasChannelId:(BOOL) value {
  hasChannelId_ = !!value;
}
@synthesize channelId;
- (void) dealloc {
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.shopId = 0;
    self.count = 0;
    self.channelId = 0;
  }
  return self;
}
static GetShopListReq* defaultGetShopListReqInstance = nil;
+ (void) initialize {
  if (self == [GetShopListReq class]) {
    defaultGetShopListReqInstance = [[GetShopListReq alloc] init];
  }
}
+ (GetShopListReq*) defaultInstance {
  return defaultGetShopListReqInstance;
}
- (GetShopListReq*) defaultInstance {
  return defaultGetShopListReqInstance;
}
- (BOOL) isInitialized {
  if (!self.hasShopId) {
    return NO;
  }
  if (!self.hasCount) {
    return NO;
  }
  if (!self.hasChannelId) {
    return NO;
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasShopId) {
    [output writeInt32:1 value:self.shopId];
  }
  if (self.hasCount) {
    [output writeInt32:2 value:self.count];
  }
  if (self.hasChannelId) {
    [output writeInt32:3 value:self.channelId];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (int32_t) serializedSize {
  int32_t size = memoizedSerializedSize;
  if (size != -1) {
    return size;
  }

  size = 0;
  if (self.hasShopId) {
    size += computeInt32Size(1, self.shopId);
  }
  if (self.hasCount) {
    size += computeInt32Size(2, self.count);
  }
  if (self.hasChannelId) {
    size += computeInt32Size(3, self.channelId);
  }
  size += self.unknownFields.serializedSize;
  memoizedSerializedSize = size;
  return size;
}
+ (GetShopListReq*) parseFromData:(NSData*) data {
  return (GetShopListReq*)[[[GetShopListReq builder] mergeFromData:data] build];
}
+ (GetShopListReq*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (GetShopListReq*)[[[GetShopListReq builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (GetShopListReq*) parseFromInputStream:(NSInputStream*) input {
  return (GetShopListReq*)[[[GetShopListReq builder] mergeFromInputStream:input] build];
}
+ (GetShopListReq*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (GetShopListReq*)[[[GetShopListReq builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (GetShopListReq*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (GetShopListReq*)[[[GetShopListReq builder] mergeFromCodedInputStream:input] build];
}
+ (GetShopListReq*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (GetShopListReq*)[[[GetShopListReq builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (GetShopListReq_Builder*) builder {
  return [[[GetShopListReq_Builder alloc] init] autorelease];
}
+ (GetShopListReq_Builder*) builderWithPrototype:(GetShopListReq*) prototype {
  return [[GetShopListReq builder] mergeFrom:prototype];
}
- (GetShopListReq_Builder*) builder {
  return [GetShopListReq builder];
}
@end

@interface GetShopListReq_Builder()
@property (retain) GetShopListReq* result;
@end

@implementation GetShopListReq_Builder
@synthesize result;
- (void) dealloc {
  self.result = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[[GetShopListReq alloc] init] autorelease];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (GetShopListReq_Builder*) clear {
  self.result = [[[GetShopListReq alloc] init] autorelease];
  return self;
}
- (GetShopListReq_Builder*) clone {
  return [GetShopListReq builderWithPrototype:result];
}
- (GetShopListReq*) defaultInstance {
  return [GetShopListReq defaultInstance];
}
- (GetShopListReq*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (GetShopListReq*) buildPartial {
  GetShopListReq* returnMe = [[result retain] autorelease];
  self.result = nil;
  return returnMe;
}
- (GetShopListReq_Builder*) mergeFrom:(GetShopListReq*) other {
  if (other == [GetShopListReq defaultInstance]) {
    return self;
  }
  if (other.hasShopId) {
    [self setShopId:other.shopId];
  }
  if (other.hasCount) {
    [self setCount:other.count];
  }
  if (other.hasChannelId) {
    [self setChannelId:other.channelId];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (GetShopListReq_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (GetShopListReq_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSet_Builder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    int32_t tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setShopId:[input readInt32]];
        break;
      }
      case 16: {
        [self setCount:[input readInt32]];
        break;
      }
      case 24: {
        [self setChannelId:[input readInt32]];
        break;
      }
    }
  }
}
- (BOOL) hasShopId {
  return result.hasShopId;
}
- (int32_t) shopId {
  return result.shopId;
}
- (GetShopListReq_Builder*) setShopId:(int32_t) value {
  result.hasShopId = YES;
  result.shopId = value;
  return self;
}
- (GetShopListReq_Builder*) clearShopId {
  result.hasShopId = NO;
  result.shopId = 0;
  return self;
}
- (BOOL) hasCount {
  return result.hasCount;
}
- (int32_t) count {
  return result.count;
}
- (GetShopListReq_Builder*) setCount:(int32_t) value {
  result.hasCount = YES;
  result.count = value;
  return self;
}
- (GetShopListReq_Builder*) clearCount {
  result.hasCount = NO;
  result.count = 0;
  return self;
}
- (BOOL) hasChannelId {
  return result.hasChannelId;
}
- (int32_t) channelId {
  return result.channelId;
}
- (GetShopListReq_Builder*) setChannelId:(int32_t) value {
  result.hasChannelId = YES;
  result.channelId = value;
  return self;
}
- (GetShopListReq_Builder*) clearChannelId {
  result.hasChannelId = NO;
  result.channelId = 0;
  return self;
}
@end

@interface ShopInfo ()
@property int32_t shopId;
@property (retain) NSString* shopName;
@property int32_t shopPrice;
@property (retain) NSString* shopDesc;
@property (retain) NSString* shopPhoto;
@property (retain) NSString* productId;
@end

@implementation ShopInfo

- (BOOL) hasShopId {
  return !!hasShopId_;
}
- (void) setHasShopId:(BOOL) value {
  hasShopId_ = !!value;
}
@synthesize shopId;
- (BOOL) hasShopName {
  return !!hasShopName_;
}
- (void) setHasShopName:(BOOL) value {
  hasShopName_ = !!value;
}
@synthesize shopName;
- (BOOL) hasShopPrice {
  return !!hasShopPrice_;
}
- (void) setHasShopPrice:(BOOL) value {
  hasShopPrice_ = !!value;
}
@synthesize shopPrice;
- (BOOL) hasShopDesc {
  return !!hasShopDesc_;
}
- (void) setHasShopDesc:(BOOL) value {
  hasShopDesc_ = !!value;
}
@synthesize shopDesc;
- (BOOL) hasShopPhoto {
  return !!hasShopPhoto_;
}
- (void) setHasShopPhoto:(BOOL) value {
  hasShopPhoto_ = !!value;
}
@synthesize shopPhoto;
- (BOOL) hasProductId {
  return !!hasProductId_;
}
- (void) setHasProductId:(BOOL) value {
  hasProductId_ = !!value;
}
@synthesize productId;
- (void) dealloc {
  self.shopName = nil;
  self.shopDesc = nil;
  self.shopPhoto = nil;
  self.productId = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.shopId = 0;
    self.shopName = @"";
    self.shopPrice = 0;
    self.shopDesc = @"";
    self.shopPhoto = @"";
    self.productId = @"";
  }
  return self;
}
static ShopInfo* defaultShopInfoInstance = nil;
+ (void) initialize {
  if (self == [ShopInfo class]) {
    defaultShopInfoInstance = [[ShopInfo alloc] init];
  }
}
+ (ShopInfo*) defaultInstance {
  return defaultShopInfoInstance;
}
- (ShopInfo*) defaultInstance {
  return defaultShopInfoInstance;
}
- (BOOL) isInitialized {
  if (!self.hasShopId) {
    return NO;
  }
  if (!self.hasShopName) {
    return NO;
  }
  if (!self.hasShopPrice) {
    return NO;
  }
  if (!self.hasShopDesc) {
    return NO;
  }
  if (!self.hasShopPhoto) {
    return NO;
  }
  if (!self.hasProductId) {
    return NO;
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasShopId) {
    [output writeInt32:1 value:self.shopId];
  }
  if (self.hasShopName) {
    [output writeString:2 value:self.shopName];
  }
  if (self.hasShopPrice) {
    [output writeInt32:3 value:self.shopPrice];
  }
  if (self.hasShopDesc) {
    [output writeString:4 value:self.shopDesc];
  }
  if (self.hasShopPhoto) {
    [output writeString:5 value:self.shopPhoto];
  }
  if (self.hasProductId) {
    [output writeString:6 value:self.productId];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (int32_t) serializedSize {
  int32_t size = memoizedSerializedSize;
  if (size != -1) {
    return size;
  }

  size = 0;
  if (self.hasShopId) {
    size += computeInt32Size(1, self.shopId);
  }
  if (self.hasShopName) {
    size += computeStringSize(2, self.shopName);
  }
  if (self.hasShopPrice) {
    size += computeInt32Size(3, self.shopPrice);
  }
  if (self.hasShopDesc) {
    size += computeStringSize(4, self.shopDesc);
  }
  if (self.hasShopPhoto) {
    size += computeStringSize(5, self.shopPhoto);
  }
  if (self.hasProductId) {
    size += computeStringSize(6, self.productId);
  }
  size += self.unknownFields.serializedSize;
  memoizedSerializedSize = size;
  return size;
}
+ (ShopInfo*) parseFromData:(NSData*) data {
  return (ShopInfo*)[[[ShopInfo builder] mergeFromData:data] build];
}
+ (ShopInfo*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ShopInfo*)[[[ShopInfo builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (ShopInfo*) parseFromInputStream:(NSInputStream*) input {
  return (ShopInfo*)[[[ShopInfo builder] mergeFromInputStream:input] build];
}
+ (ShopInfo*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ShopInfo*)[[[ShopInfo builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (ShopInfo*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (ShopInfo*)[[[ShopInfo builder] mergeFromCodedInputStream:input] build];
}
+ (ShopInfo*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ShopInfo*)[[[ShopInfo builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (ShopInfo_Builder*) builder {
  return [[[ShopInfo_Builder alloc] init] autorelease];
}
+ (ShopInfo_Builder*) builderWithPrototype:(ShopInfo*) prototype {
  return [[ShopInfo builder] mergeFrom:prototype];
}
- (ShopInfo_Builder*) builder {
  return [ShopInfo builder];
}
@end

@interface ShopInfo_Builder()
@property (retain) ShopInfo* result;
@end

@implementation ShopInfo_Builder
@synthesize result;
- (void) dealloc {
  self.result = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[[ShopInfo alloc] init] autorelease];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (ShopInfo_Builder*) clear {
  self.result = [[[ShopInfo alloc] init] autorelease];
  return self;
}
- (ShopInfo_Builder*) clone {
  return [ShopInfo builderWithPrototype:result];
}
- (ShopInfo*) defaultInstance {
  return [ShopInfo defaultInstance];
}
- (ShopInfo*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (ShopInfo*) buildPartial {
  ShopInfo* returnMe = [[result retain] autorelease];
  self.result = nil;
  return returnMe;
}
- (ShopInfo_Builder*) mergeFrom:(ShopInfo*) other {
  if (other == [ShopInfo defaultInstance]) {
    return self;
  }
  if (other.hasShopId) {
    [self setShopId:other.shopId];
  }
  if (other.hasShopName) {
    [self setShopName:other.shopName];
  }
  if (other.hasShopPrice) {
    [self setShopPrice:other.shopPrice];
  }
  if (other.hasShopDesc) {
    [self setShopDesc:other.shopDesc];
  }
  if (other.hasShopPhoto) {
    [self setShopPhoto:other.shopPhoto];
  }
  if (other.hasProductId) {
    [self setProductId:other.productId];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (ShopInfo_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (ShopInfo_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSet_Builder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    int32_t tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setShopId:[input readInt32]];
        break;
      }
      case 18: {
        [self setShopName:[input readString]];
        break;
      }
      case 24: {
        [self setShopPrice:[input readInt32]];
        break;
      }
      case 34: {
        [self setShopDesc:[input readString]];
        break;
      }
      case 42: {
        [self setShopPhoto:[input readString]];
        break;
      }
      case 50: {
        [self setProductId:[input readString]];
        break;
      }
    }
  }
}
- (BOOL) hasShopId {
  return result.hasShopId;
}
- (int32_t) shopId {
  return result.shopId;
}
- (ShopInfo_Builder*) setShopId:(int32_t) value {
  result.hasShopId = YES;
  result.shopId = value;
  return self;
}
- (ShopInfo_Builder*) clearShopId {
  result.hasShopId = NO;
  result.shopId = 0;
  return self;
}
- (BOOL) hasShopName {
  return result.hasShopName;
}
- (NSString*) shopName {
  return result.shopName;
}
- (ShopInfo_Builder*) setShopName:(NSString*) value {
  result.hasShopName = YES;
  result.shopName = value;
  return self;
}
- (ShopInfo_Builder*) clearShopName {
  result.hasShopName = NO;
  result.shopName = @"";
  return self;
}
- (BOOL) hasShopPrice {
  return result.hasShopPrice;
}
- (int32_t) shopPrice {
  return result.shopPrice;
}
- (ShopInfo_Builder*) setShopPrice:(int32_t) value {
  result.hasShopPrice = YES;
  result.shopPrice = value;
  return self;
}
- (ShopInfo_Builder*) clearShopPrice {
  result.hasShopPrice = NO;
  result.shopPrice = 0;
  return self;
}
- (BOOL) hasShopDesc {
  return result.hasShopDesc;
}
- (NSString*) shopDesc {
  return result.shopDesc;
}
- (ShopInfo_Builder*) setShopDesc:(NSString*) value {
  result.hasShopDesc = YES;
  result.shopDesc = value;
  return self;
}
- (ShopInfo_Builder*) clearShopDesc {
  result.hasShopDesc = NO;
  result.shopDesc = @"";
  return self;
}
- (BOOL) hasShopPhoto {
  return result.hasShopPhoto;
}
- (NSString*) shopPhoto {
  return result.shopPhoto;
}
- (ShopInfo_Builder*) setShopPhoto:(NSString*) value {
  result.hasShopPhoto = YES;
  result.shopPhoto = value;
  return self;
}
- (ShopInfo_Builder*) clearShopPhoto {
  result.hasShopPhoto = NO;
  result.shopPhoto = @"";
  return self;
}
- (BOOL) hasProductId {
  return result.hasProductId;
}
- (NSString*) productId {
  return result.productId;
}
- (ShopInfo_Builder*) setProductId:(NSString*) value {
  result.hasProductId = YES;
  result.productId = value;
  return self;
}
- (ShopInfo_Builder*) clearProductId {
  result.hasProductId = NO;
  result.productId = @"";
  return self;
}
@end

@interface GetShopListRes ()
@property (retain) NSMutableArray* mutableShopInfosList;
@end

@implementation GetShopListRes

@synthesize mutableShopInfosList;
- (void) dealloc {
  self.mutableShopInfosList = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
  }
  return self;
}
static GetShopListRes* defaultGetShopListResInstance = nil;
+ (void) initialize {
  if (self == [GetShopListRes class]) {
    defaultGetShopListResInstance = [[GetShopListRes alloc] init];
  }
}
+ (GetShopListRes*) defaultInstance {
  return defaultGetShopListResInstance;
}
- (GetShopListRes*) defaultInstance {
  return defaultGetShopListResInstance;
}
- (NSArray*) shopInfosList {
  return mutableShopInfosList;
}
- (ShopInfo*) shopInfosAtIndex:(int32_t) index {
  id value = [mutableShopInfosList objectAtIndex:index];
  return value;
}
- (BOOL) isInitialized {
  for (ShopInfo* element in self.shopInfosList) {
    if (!element.isInitialized) {
      return NO;
    }
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  for (ShopInfo* element in self.shopInfosList) {
    [output writeMessage:1 value:element];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (int32_t) serializedSize {
  int32_t size = memoizedSerializedSize;
  if (size != -1) {
    return size;
  }

  size = 0;
  for (ShopInfo* element in self.shopInfosList) {
    size += computeMessageSize(1, element);
  }
  size += self.unknownFields.serializedSize;
  memoizedSerializedSize = size;
  return size;
}
+ (GetShopListRes*) parseFromData:(NSData*) data {
  return (GetShopListRes*)[[[GetShopListRes builder] mergeFromData:data] build];
}
+ (GetShopListRes*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (GetShopListRes*)[[[GetShopListRes builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (GetShopListRes*) parseFromInputStream:(NSInputStream*) input {
  return (GetShopListRes*)[[[GetShopListRes builder] mergeFromInputStream:input] build];
}
+ (GetShopListRes*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (GetShopListRes*)[[[GetShopListRes builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (GetShopListRes*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (GetShopListRes*)[[[GetShopListRes builder] mergeFromCodedInputStream:input] build];
}
+ (GetShopListRes*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (GetShopListRes*)[[[GetShopListRes builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (GetShopListRes_Builder*) builder {
  return [[[GetShopListRes_Builder alloc] init] autorelease];
}
+ (GetShopListRes_Builder*) builderWithPrototype:(GetShopListRes*) prototype {
  return [[GetShopListRes builder] mergeFrom:prototype];
}
- (GetShopListRes_Builder*) builder {
  return [GetShopListRes builder];
}
@end

@interface GetShopListRes_Builder()
@property (retain) GetShopListRes* result;
@end

@implementation GetShopListRes_Builder
@synthesize result;
- (void) dealloc {
  self.result = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[[GetShopListRes alloc] init] autorelease];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (GetShopListRes_Builder*) clear {
  self.result = [[[GetShopListRes alloc] init] autorelease];
  return self;
}
- (GetShopListRes_Builder*) clone {
  return [GetShopListRes builderWithPrototype:result];
}
- (GetShopListRes*) defaultInstance {
  return [GetShopListRes defaultInstance];
}
- (GetShopListRes*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (GetShopListRes*) buildPartial {
  GetShopListRes* returnMe = [[result retain] autorelease];
  self.result = nil;
  return returnMe;
}
- (GetShopListRes_Builder*) mergeFrom:(GetShopListRes*) other {
  if (other == [GetShopListRes defaultInstance]) {
    return self;
  }
  if (other.mutableShopInfosList.count > 0) {
    if (result.mutableShopInfosList == nil) {
      result.mutableShopInfosList = [NSMutableArray array];
    }
    [result.mutableShopInfosList addObjectsFromArray:other.mutableShopInfosList];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (GetShopListRes_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (GetShopListRes_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSet_Builder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    int32_t tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        ShopInfo_Builder* subBuilder = [ShopInfo builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addShopInfos:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (NSArray*) shopInfosList {
  if (result.mutableShopInfosList == nil) { return [NSArray array]; }
  return result.mutableShopInfosList;
}
- (ShopInfo*) shopInfosAtIndex:(int32_t) index {
  return [result shopInfosAtIndex:index];
}
- (GetShopListRes_Builder*) replaceShopInfosAtIndex:(int32_t) index with:(ShopInfo*) value {
  [result.mutableShopInfosList replaceObjectAtIndex:index withObject:value];
  return self;
}
- (GetShopListRes_Builder*) addAllShopInfos:(NSArray*) values {
  if (result.mutableShopInfosList == nil) {
    result.mutableShopInfosList = [NSMutableArray array];
  }
  [result.mutableShopInfosList addObjectsFromArray:values];
  return self;
}
- (GetShopListRes_Builder*) clearShopInfosList {
  result.mutableShopInfosList = nil;
  return self;
}
- (GetShopListRes_Builder*) addShopInfos:(ShopInfo*) value {
  if (result.mutableShopInfosList == nil) {
    result.mutableShopInfosList = [NSMutableArray array];
  }
  [result.mutableShopInfosList addObject:value];
  return self;
}
@end

@interface BuyShopReq ()
@property int32_t shopId;
@property int32_t channelId;
@property (retain) NSString* sign;
@end

@implementation BuyShopReq

- (BOOL) hasShopId {
  return !!hasShopId_;
}
- (void) setHasShopId:(BOOL) value {
  hasShopId_ = !!value;
}
@synthesize shopId;
- (BOOL) hasChannelId {
  return !!hasChannelId_;
}
- (void) setHasChannelId:(BOOL) value {
  hasChannelId_ = !!value;
}
@synthesize channelId;
- (BOOL) hasSign {
  return !!hasSign_;
}
- (void) setHasSign:(BOOL) value {
  hasSign_ = !!value;
}
@synthesize sign;
- (void) dealloc {
  self.sign = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.shopId = 0;
    self.channelId = 0;
    self.sign = @"";
  }
  return self;
}
static BuyShopReq* defaultBuyShopReqInstance = nil;
+ (void) initialize {
  if (self == [BuyShopReq class]) {
    defaultBuyShopReqInstance = [[BuyShopReq alloc] init];
  }
}
+ (BuyShopReq*) defaultInstance {
  return defaultBuyShopReqInstance;
}
- (BuyShopReq*) defaultInstance {
  return defaultBuyShopReqInstance;
}
- (BOOL) isInitialized {
  if (!self.hasShopId) {
    return NO;
  }
  if (!self.hasChannelId) {
    return NO;
  }
  if (!self.hasSign) {
    return NO;
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasShopId) {
    [output writeInt32:1 value:self.shopId];
  }
  if (self.hasChannelId) {
    [output writeInt32:2 value:self.channelId];
  }
  if (self.hasSign) {
    [output writeString:3 value:self.sign];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (int32_t) serializedSize {
  int32_t size = memoizedSerializedSize;
  if (size != -1) {
    return size;
  }

  size = 0;
  if (self.hasShopId) {
    size += computeInt32Size(1, self.shopId);
  }
  if (self.hasChannelId) {
    size += computeInt32Size(2, self.channelId);
  }
  if (self.hasSign) {
    size += computeStringSize(3, self.sign);
  }
  size += self.unknownFields.serializedSize;
  memoizedSerializedSize = size;
  return size;
}
+ (BuyShopReq*) parseFromData:(NSData*) data {
  return (BuyShopReq*)[[[BuyShopReq builder] mergeFromData:data] build];
}
+ (BuyShopReq*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (BuyShopReq*)[[[BuyShopReq builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (BuyShopReq*) parseFromInputStream:(NSInputStream*) input {
  return (BuyShopReq*)[[[BuyShopReq builder] mergeFromInputStream:input] build];
}
+ (BuyShopReq*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (BuyShopReq*)[[[BuyShopReq builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (BuyShopReq*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (BuyShopReq*)[[[BuyShopReq builder] mergeFromCodedInputStream:input] build];
}
+ (BuyShopReq*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (BuyShopReq*)[[[BuyShopReq builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (BuyShopReq_Builder*) builder {
  return [[[BuyShopReq_Builder alloc] init] autorelease];
}
+ (BuyShopReq_Builder*) builderWithPrototype:(BuyShopReq*) prototype {
  return [[BuyShopReq builder] mergeFrom:prototype];
}
- (BuyShopReq_Builder*) builder {
  return [BuyShopReq builder];
}
@end

@interface BuyShopReq_Builder()
@property (retain) BuyShopReq* result;
@end

@implementation BuyShopReq_Builder
@synthesize result;
- (void) dealloc {
  self.result = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[[BuyShopReq alloc] init] autorelease];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (BuyShopReq_Builder*) clear {
  self.result = [[[BuyShopReq alloc] init] autorelease];
  return self;
}
- (BuyShopReq_Builder*) clone {
  return [BuyShopReq builderWithPrototype:result];
}
- (BuyShopReq*) defaultInstance {
  return [BuyShopReq defaultInstance];
}
- (BuyShopReq*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (BuyShopReq*) buildPartial {
  BuyShopReq* returnMe = [[result retain] autorelease];
  self.result = nil;
  return returnMe;
}
- (BuyShopReq_Builder*) mergeFrom:(BuyShopReq*) other {
  if (other == [BuyShopReq defaultInstance]) {
    return self;
  }
  if (other.hasShopId) {
    [self setShopId:other.shopId];
  }
  if (other.hasChannelId) {
    [self setChannelId:other.channelId];
  }
  if (other.hasSign) {
    [self setSign:other.sign];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (BuyShopReq_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (BuyShopReq_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSet_Builder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    int32_t tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setShopId:[input readInt32]];
        break;
      }
      case 16: {
        [self setChannelId:[input readInt32]];
        break;
      }
      case 26: {
        [self setSign:[input readString]];
        break;
      }
    }
  }
}
- (BOOL) hasShopId {
  return result.hasShopId;
}
- (int32_t) shopId {
  return result.shopId;
}
- (BuyShopReq_Builder*) setShopId:(int32_t) value {
  result.hasShopId = YES;
  result.shopId = value;
  return self;
}
- (BuyShopReq_Builder*) clearShopId {
  result.hasShopId = NO;
  result.shopId = 0;
  return self;
}
- (BOOL) hasChannelId {
  return result.hasChannelId;
}
- (int32_t) channelId {
  return result.channelId;
}
- (BuyShopReq_Builder*) setChannelId:(int32_t) value {
  result.hasChannelId = YES;
  result.channelId = value;
  return self;
}
- (BuyShopReq_Builder*) clearChannelId {
  result.hasChannelId = NO;
  result.channelId = 0;
  return self;
}
- (BOOL) hasSign {
  return result.hasSign;
}
- (NSString*) sign {
  return result.sign;
}
- (BuyShopReq_Builder*) setSign:(NSString*) value {
  result.hasSign = YES;
  result.sign = value;
  return self;
}
- (BuyShopReq_Builder*) clearSign {
  result.hasSign = NO;
  result.sign = @"";
  return self;
}
@end

@interface BuyShopRes ()
@property int32_t status;
@property (retain) NSString* sign;
@end

@implementation BuyShopRes

- (BOOL) hasStatus {
  return !!hasStatus_;
}
- (void) setHasStatus:(BOOL) value {
  hasStatus_ = !!value;
}
@synthesize status;
- (BOOL) hasSign {
  return !!hasSign_;
}
- (void) setHasSign:(BOOL) value {
  hasSign_ = !!value;
}
@synthesize sign;
- (void) dealloc {
  self.sign = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.status = 0;
    self.sign = @"";
  }
  return self;
}
static BuyShopRes* defaultBuyShopResInstance = nil;
+ (void) initialize {
  if (self == [BuyShopRes class]) {
    defaultBuyShopResInstance = [[BuyShopRes alloc] init];
  }
}
+ (BuyShopRes*) defaultInstance {
  return defaultBuyShopResInstance;
}
- (BuyShopRes*) defaultInstance {
  return defaultBuyShopResInstance;
}
- (BOOL) isInitialized {
  if (!self.hasStatus) {
    return NO;
  }
  if (!self.hasSign) {
    return NO;
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasStatus) {
    [output writeInt32:1 value:self.status];
  }
  if (self.hasSign) {
    [output writeString:2 value:self.sign];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (int32_t) serializedSize {
  int32_t size = memoizedSerializedSize;
  if (size != -1) {
    return size;
  }

  size = 0;
  if (self.hasStatus) {
    size += computeInt32Size(1, self.status);
  }
  if (self.hasSign) {
    size += computeStringSize(2, self.sign);
  }
  size += self.unknownFields.serializedSize;
  memoizedSerializedSize = size;
  return size;
}
+ (BuyShopRes*) parseFromData:(NSData*) data {
  return (BuyShopRes*)[[[BuyShopRes builder] mergeFromData:data] build];
}
+ (BuyShopRes*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (BuyShopRes*)[[[BuyShopRes builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (BuyShopRes*) parseFromInputStream:(NSInputStream*) input {
  return (BuyShopRes*)[[[BuyShopRes builder] mergeFromInputStream:input] build];
}
+ (BuyShopRes*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (BuyShopRes*)[[[BuyShopRes builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (BuyShopRes*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (BuyShopRes*)[[[BuyShopRes builder] mergeFromCodedInputStream:input] build];
}
+ (BuyShopRes*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (BuyShopRes*)[[[BuyShopRes builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (BuyShopRes_Builder*) builder {
  return [[[BuyShopRes_Builder alloc] init] autorelease];
}
+ (BuyShopRes_Builder*) builderWithPrototype:(BuyShopRes*) prototype {
  return [[BuyShopRes builder] mergeFrom:prototype];
}
- (BuyShopRes_Builder*) builder {
  return [BuyShopRes builder];
}
@end

@interface BuyShopRes_Builder()
@property (retain) BuyShopRes* result;
@end

@implementation BuyShopRes_Builder
@synthesize result;
- (void) dealloc {
  self.result = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[[BuyShopRes alloc] init] autorelease];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (BuyShopRes_Builder*) clear {
  self.result = [[[BuyShopRes alloc] init] autorelease];
  return self;
}
- (BuyShopRes_Builder*) clone {
  return [BuyShopRes builderWithPrototype:result];
}
- (BuyShopRes*) defaultInstance {
  return [BuyShopRes defaultInstance];
}
- (BuyShopRes*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (BuyShopRes*) buildPartial {
  BuyShopRes* returnMe = [[result retain] autorelease];
  self.result = nil;
  return returnMe;
}
- (BuyShopRes_Builder*) mergeFrom:(BuyShopRes*) other {
  if (other == [BuyShopRes defaultInstance]) {
    return self;
  }
  if (other.hasStatus) {
    [self setStatus:other.status];
  }
  if (other.hasSign) {
    [self setSign:other.sign];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (BuyShopRes_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (BuyShopRes_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSet_Builder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    int32_t tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setStatus:[input readInt32]];
        break;
      }
      case 18: {
        [self setSign:[input readString]];
        break;
      }
    }
  }
}
- (BOOL) hasStatus {
  return result.hasStatus;
}
- (int32_t) status {
  return result.status;
}
- (BuyShopRes_Builder*) setStatus:(int32_t) value {
  result.hasStatus = YES;
  result.status = value;
  return self;
}
- (BuyShopRes_Builder*) clearStatus {
  result.hasStatus = NO;
  result.status = 0;
  return self;
}
- (BOOL) hasSign {
  return result.hasSign;
}
- (NSString*) sign {
  return result.sign;
}
- (BuyShopRes_Builder*) setSign:(NSString*) value {
  result.hasSign = YES;
  result.sign = value;
  return self;
}
- (BuyShopRes_Builder*) clearSign {
  result.hasSign = NO;
  result.sign = @"";
  return self;
}
@end

