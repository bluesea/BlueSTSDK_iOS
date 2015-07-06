//
//  BleAdvertiseParser.h
//  W2STApp
//
//  Created by Giovanni Visentini on 25/03/15.
//  Copyright (c) 2015 STMicroelectronics. All rights reserved.
//

#ifndef W2STSDK_BleAdvertiseParser_h
#define W2STSDK_BleAdvertiseParser_h

#include "W2STSDKBleNodeDefines.h"
#include "../W2STSDKNode.h"

#define DEVICE_ID_GENERIC 0x00
#define DEVICE_ID_WESU 0x01
#define DEVICE_ID_L1DISCO 0x02
#define DEVICE_ID_NUCLEO_BIT 0x80

#define ADVERTISE_SIZE_COMPACT 6
#define ADVERTISE_SIZE_FULL 12
#define ADVERTISE_MAX_SIZE 20

#define ADVERTISE_FIELD_POS_PROTOCOL 0
#define ADVERTISE_FIELD_POS_DEVICE_ID 1
#define ADVERTISE_FIELD_POS_FEATURE_MAP 2
#define ADVERTISE_FIELD_POS_ADDRESS 6

#define ADVERTISE_FIELD_SIZE_ADDRESS 6

#define VERSION_CURRENT 0x01
#define VERSION_CURRENT_MIN 0x01



/**
 *  class that parse the ble advertise package
 */
@interface W2STSDKBleAdvertiseParser : NSObject

//@property (readonly) W2STSDKBLeAdvertiseAddressType type; //not present in the dictionary advertise
//@property (readonly) NSString *address; //not present in the dictionary advertise

/**
 *  board name
 */
@property (readonly) NSString *name;

/**
 *  version of the protocol
 */
@property (readonly) unsigned char protocolVersion;
/**
 *  board id, tell the board type
 */
@property (readonly) unsigned char deviceId;

/**
 *  bit mask that tell what feature are available in the node
 */
@property (readonly) featureMask_t featureMap;

/**
 *  tell the tx power used by the node, in mdb
 */
@property (readonly) NSNumber* txPower;

/**
 *  tell the board type
 */
@property (readonly) W2STSDKNodeType nodeType;

/**
 *  address
 */
@property (readonly) NSString *address;

-(id)initWithAdvertise:(NSDictionary*)advertisementData;

/**
 *  map of <featureMask_t,W2STSDKFeature>, this can be used for undestand what
 * feature a ble characteristic export
 *
 *  @return map of <featureMask_t,W2STSDKFeature>
 */
-(NSDictionary*) featureMaskMap;


@end

#endif