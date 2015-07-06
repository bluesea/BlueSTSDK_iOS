//
//  W2STSDKRegisterDefine.c
//
//  Created by Antonino Raucea on 06/15/15.
//  Copyright (c) 2015 STMicroelectronics. All rights reserved.
//

#import "W2STSDKRegisterDefines.h"
#import "W2STSDKRegister.h"

/**
 * This class help to get list of Registers available for The W2ST devices
 * <p>
 *     It define the Register list available for the device
 *
 * @author STMicroelectronics - Central Labs.
 * @version 1.0, 26 May 2015
 */
@implementation W2STSDKRegisterDefines

/**
 * Returns a string containing a concise, human-readable description of this
 * object. In this case, the enum constant's name is returned.
 *
 * @return a printable representation of this object.
 */
#define ENUM_CASE(evalue)       \
            case evalue:        \
                ret = @#evalue; \
                break;


+(NSString *)description:(W2STSDKRegisterName_e)registerName {
    NSString * ret =  @""; //super.toString();
    //    strRet = strRet.substring(0, strRet.lastIndexOf("__"))
    //    .replace("_", " ")
    //    .replace("SW", "SOFTWARE")
    //    .replace("HW", "HARDWARE")
    //    .replace("CTRL", "");
    
    switch(registerName)
    {
            /*Mandatory registers*/
            ENUM_CASE(W2STSDK_REGISTER_NAME_FW_VER)
            ENUM_CASE(W2STSDK_REGISTER_NAME_LED_CONFIG)
            ENUM_CASE(W2STSDK_REGISTER_NAME_BLE_LOC_NAME)
            ENUM_CASE(W2STSDK_REGISTER_NAME_BLE_PUB_ADDR)
            
            ENUM_CASE(W2STSDK_REGISTER_NAME_BATTERY_LEVEL)
            ENUM_CASE(W2STSDK_REGISTER_NAME_BATTERY_VOLTAGE)
            ENUM_CASE(W2STSDK_REGISTER_NAME_CURRENT)
            ENUM_CASE(W2STSDK_REGISTER_NAME_PWRMNG_STATUS)
            
            /*optional generic*/
            ENUM_CASE(W2STSDK_REGISTER_NAME_RADIO_TXPWR_CONFIG)
            ENUM_CASE(W2STSDK_REGISTER_NAME_TIMER_FREQ)
            ENUM_CASE(W2STSDK_REGISTER_NAME_PWR_MODE_CONFIG)
            ENUM_CASE(W2STSDK_REGISTER_NAME_HW_FEATURES_MAP)
            ENUM_CASE(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0001)
            ENUM_CASE(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0002)
            ENUM_CASE(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0004)
            ENUM_CASE(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0008)
            ENUM_CASE(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0010)
            ENUM_CASE(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0020)
            ENUM_CASE(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0040)
            ENUM_CASE(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0080)
            ENUM_CASE(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0100)
            ENUM_CASE(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0200)
            ENUM_CASE(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0400)
            ENUM_CASE(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0800)
            ENUM_CASE(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_1000)
            ENUM_CASE(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_2000)
            ENUM_CASE(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_4000)
            ENUM_CASE(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_8000)
            ENUM_CASE(W2STSDK_REGISTER_NAME_SW_FEATURES_MAP)
            ENUM_CASE(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0001)
            ENUM_CASE(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0002)
            ENUM_CASE(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0004)
            ENUM_CASE(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0008)
            ENUM_CASE(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0010)
            ENUM_CASE(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0020)
            ENUM_CASE(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0040)
            ENUM_CASE(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0080)
            ENUM_CASE(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0100)
            ENUM_CASE(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0200)
            ENUM_CASE(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0400)
            ENUM_CASE(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0800)
            ENUM_CASE(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_1000)
            ENUM_CASE(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_2000)
            ENUM_CASE(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_4000)
            ENUM_CASE(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_8000)
            ENUM_CASE(W2STSDK_REGISTER_NAME_BLE_DEBUG_CONFIG)
            ENUM_CASE(W2STSDK_REGISTER_NAME_USB_DEBUG_CONFIG)
            ENUM_CASE(W2STSDK_REGISTER_NAME_HW_CALIBRATION_MAP)
            ENUM_CASE(W2STSDK_REGISTER_NAME_SW_CALIBRATION_MAP)
            
            ENUM_CASE(W2STSDK_REGISTER_NAME_DFU_REBOOT)
            ENUM_CASE(W2STSDK_REGISTER_NAME_HW_CALIBRATION)
            ENUM_CASE(W2STSDK_REGISTER_NAME_HW_CALIBRATION_STATUS)
            ENUM_CASE(W2STSDK_REGISTER_NAME_SW_CALIBRATION)
            ENUM_CASE(W2STSDK_REGISTER_NAME_SW_CALIBRATION_STATUS)
        default:
            ret = @"";
            break;
    }
    
    return  ret;
}

/**
 * array that map the registers of W2ST devices
 */
#define HASHMAP_ITEM(_name, _address, _size, _access, _target) [NSNumber numberWithInt:_name]: [W2STSDKRegister registerWithAddress:_address size:_size access:_access target:_target]

static NSDictionary * mapRegisters = nil;
//
+(void)initializeMapRegisters {
    mapRegisters = @{
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_FW_VER                  , 0x00, 2, W2STSDK_REGISTER_ACCESS_R   , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_LED_CONFIG              , 0x02, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_BLE_LOC_NAME            , 0x03, 8, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_PERSISTENT ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_BLE_PUB_ADDR            , 0x0B, 8, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_PERSISTENT ),
    
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_BATTERY_LEVEL           , 0x03, 1, W2STSDK_REGISTER_ACCESS_R   , W2STSDK_REGISTER_TARGET_SESSION    ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_BATTERY_VOLTAGE         , 0x04, 2, W2STSDK_REGISTER_ACCESS_R   , W2STSDK_REGISTER_TARGET_SESSION    ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_CURRENT                 , 0x06, 2, W2STSDK_REGISTER_ACCESS_R   , W2STSDK_REGISTER_TARGET_SESSION    ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_PWRMNG_STATUS           , 0x08, 1, W2STSDK_REGISTER_ACCESS_R   , W2STSDK_REGISTER_TARGET_SESSION    ),
    
    
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_RADIO_TXPWR_CONFIG      , 0x20, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_PERSISTENT ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_TIMER_FREQ              , 0x21, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_PWR_MODE_CONFIG         , 0x22, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
    
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_HW_FEATURES_MAP         , 0x23, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0001   , 0x24, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0002   , 0x25, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0004   , 0x26, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0008   , 0x27, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0010   , 0x28, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0020   , 0x29, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0040   , 0x2A, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0080   , 0x2B, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0100   , 0x2C, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0200   , 0x2D, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0400   , 0x2E, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_0800   , 0x2F, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_1000   , 0x30, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_2000   , 0x31, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_4000   , 0x32, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_HW_FEATURE_CTRLS_8000   , 0x33, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
    
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_SW_FEATURES_MAP         , 0x34, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0001   , 0x35, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0002   , 0x36, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0004   , 0x37, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0008   , 0x38, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0010   , 0x39, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0020   , 0x3A, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0040   , 0x3B, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0080   , 0x3C, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0100   , 0x3D, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0200   , 0x3E, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0400   , 0x3F, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_0800   , 0x40, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_1000   , 0x41, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_2000   , 0x42, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_4000   , 0x43, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_SW_FEATURE_CTRLS_8000   , 0x44, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_BLE_DEBUG_CONFIG        , 0x45, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_USB_DEBUG_CONFIG        , 0x46, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_BOTH       ),
    
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_HW_CALIBRATION_MAP      , 0x47, 1, W2STSDK_REGISTER_ACCESS_R   , W2STSDK_REGISTER_TARGET_PERSISTENT ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_SW_CALIBRATION_MAP      , 0x48, 1, W2STSDK_REGISTER_ACCESS_R   , W2STSDK_REGISTER_TARGET_PERSISTENT ),
    
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_DFU_REBOOT              , 0xF0, 1, W2STSDK_REGISTER_ACCESS_W   , W2STSDK_REGISTER_TARGET_SESSION    ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_HW_CALIBRATION          , 0xF1, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_SESSION    ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_HW_CALIBRATION_STATUS   , 0xF2, 1, W2STSDK_REGISTER_ACCESS_R   , W2STSDK_REGISTER_TARGET_SESSION    ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_SW_CALIBRATION          , 0xF3, 1, W2STSDK_REGISTER_ACCESS_RW  , W2STSDK_REGISTER_TARGET_SESSION    ),
                     HASHMAP_ITEM(W2STSDK_REGISTER_NAME_SW_CALIBRATION_STATUS   , 0xF4, 1, W2STSDK_REGISTER_ACCESS_R   , W2STSDK_REGISTER_TARGET_SESSION    ),
                     };
}

/**
 * Returns the register class of the available registers.
 *
 * @param name input RegistersName enum to find
 * @return the relative register if exist else null
 */
+(W2STSDKRegister *) lookUpWithRegisterName:(W2STSDKRegisterName_e)name {
    return nil; // (W2STSDKRegister *)mapRegisters[name];
}

@end

