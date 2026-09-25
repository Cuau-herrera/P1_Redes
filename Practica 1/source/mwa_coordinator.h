/*!
* Copyright (c) 2014, Freescale Semiconductor, Inc.
* Copyright 2016-2017 NXP
* All rights reserved.
*
* \file
*
* MyWirelessApp Demo Coordinator application.
*
* SPDX-License-Identifier: BSD-3-Clause
*/

/*! *********************************************************************************
*************************************************************************************
* Include
*************************************************************************************
********************************************************************************** */

#ifndef _APP_H_
#define _APP_H_

#include "EmbeddedTypes.h"
#include "fsl_os_abstraction.h"
#include "MemManager.h"
#include "MacInterface.h"
#include "PhyInterface.h"

/************************************************************************************
*************************************************************************************
* Private macros
*************************************************************************************
************************************************************************************/

#ifdef gPHY_802_15_4g_d
    #define mDefaultValueOfChannel_c (0x0001FFFF)
    #define mDefaultMaxChannel_c     (0x11)
#else
    #define mDefaultValueOfChannel_c (0x07FFF800)
#endif

/* Equipo 7, nodo Coordinador - debe ser distinta a la del End Device */
#define mMacExtendedAddress_c    (0x0000000000070001ULL)

/* Set the Coordinator short address */
#define mDefaultValueOfShortAddress_c     0x0000

/* Set the Coordinator PanID */
#define mDefaultValueOfPanId_c            0x7777

/* Maximum number of outstanding packets */
#define mDefaultValueOfMaxPendingDataPackets_c 2

/************************************************************************************
*************************************************************************************
* Private type definitions
*************************************************************************************
************************************************************************************/

enum {
    stateInit,
    stateScanEdStart,
    stateScanEdWaitConfirm,
    stateStartCoordinator,
    stateStartCoordinatorWaitConfirm,
    stateListen
};

#define gAppEvtDummyEvent_c            (1 << 0)
#define gAppEvtRxFromUart_c            (1 << 1)
#define gAppEvtMessageFromMLME_c       (1 << 2)
#define gAppEvtMessageFromMCPS_c       (1 << 3)
#define gAppEvtStartCoordinator_c      (1 << 4)

enum {
    errorNoError,
    errorWrongConfirm,
    errorNotSuccessful,
    errorNoMessage,
    errorAllocFailed,
    errorInvalidParameter,
    errorNoScanResults
};

/************************************************************************************
*************************************************************************************
* Public memory declarations
*************************************************************************************
************************************************************************************/

extern osaEventId_t mAppEvent;
extern uint8_t gState;

/************************************************************************************
*************************************************************************************
* Public function declarations
*************************************************************************************
************************************************************************************/

void App_init(void);
void AppThread(uint32_t argument);

resultType_t MLME_NWK_SapHandler(nwkMessage_t* pMsg, instanceId_t instanceId);
resultType_t MCPS_NWK_SapHandler(mcpsToNwkMessage_t* pMsg, instanceId_t instanceId);

extern void Mac_SetExtendedAddress(uint8_t *pAddr, instanceId_t instanceId);

#endif /* _APP_H_ */
