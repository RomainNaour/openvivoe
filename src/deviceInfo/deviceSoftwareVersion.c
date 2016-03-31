/*
 * Note: this file originally auto-generated by mib2c using
 *        $
 */

#include <net-snmp/net-snmp-config.h>
#include <net-snmp/net-snmp-includes.h>
#include <net-snmp/agent/net-snmp-agent-includes.h>
#include "../../include/deviceInfo/deviceSoftwareVersion.h"
#include "../../include/mibParameters.h"
#include "../../include/handler.h"




/*value of parameter*/
/*only use 16 bytes strings*/
//char* deviceSoftwareVersion =  "default";

/** Initializes the deviceSoftwareVersion module */
void
init_deviceSoftwareVersion(void)
{
    const oid deviceSoftwareVersion_oid[] = { 1,3,6,1,4,1,35990,3,1,1,6 };

  DEBUGMSGTL(("deviceSoftwareVersion", "Initializing\n"));

   netsnmp_register_read_only_instance(
        netsnmp_create_handler_registration("deviceSoftwareVersion", handle_deviceSoftwareVersion,
                               deviceSoftwareVersion_oid, OID_LENGTH(deviceSoftwareVersion_oid),
                               HANDLER_CAN_RONLY
        ));
}

int
handle_deviceSoftwareVersion(netsnmp_mib_handler *handler,
                          netsnmp_handler_registration *reginfo,
                          netsnmp_agent_request_info   *reqinfo,
                          netsnmp_request_info         *requests)
{
    return handle_ROstring16(handler, reginfo, reqinfo, requests,  &deviceInfo.parameters[num_DeviceSWV]);
}