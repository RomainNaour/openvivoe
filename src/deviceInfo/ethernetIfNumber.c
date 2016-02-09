/*
 * Note: this file originally auto-generated by mib2c using
 *        $
 */

#include <net-snmp/net-snmp-config.h>
#include <net-snmp/net-snmp-includes.h>
#include <net-snmp/agent/net-snmp-agent-includes.h>
#include "../../include/deviceInfo/ethernetIfNumber.h"
#include "../../include/mibParameters.h"
#include "../../include/handler.h"


/** Initializes the ethernetIfNumber module */
void init_ethernetIfNumber(void)
{
    const oid ethernetIfNumber_oid[] = { 1,3,6,1,4,1,35990,3,1,1,11 };

    DEBUGMSGTL(("ethernetIfNumber", "Initializing\n"));
    netsnmp_register_read_only_instance(
        netsnmp_create_handler_registration("ethernetIfNumber", handle_ethernetIfNumber,
                                            ethernetIfNumber_oid, OID_LENGTH(ethernetIfNumber_oid),
                                            HANDLER_CAN_RONLY)
    );
}

int handle_ethernetIfNumber(netsnmp_mib_handler *handler, netsnmp_handler_registration *reginfo, netsnmp_agent_request_info *reqinfo, netsnmp_request_info *requests)
{
    return handle_ROinteger(handler, reginfo, reqinfo, requests, "ethernetIfNumber" , &(deviceInfo.parameters[num_ethernetIFnumber]._value.int_val));
}
