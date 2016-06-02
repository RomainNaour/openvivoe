/*
 * Note: this file originally auto-generated by mib2c using
 *        $
 */

#include <net-snmp/net-snmp-config.h>
#include <net-snmp/net-snmp-includes.h>
#include <net-snmp/agent/net-snmp-agent-includes.h>
#include "../../include/deviceInfo/deviceMibVersion.h"
#include "../../include/mibParameters.h"
#include "../../include/handler.h"


/**
 * \brief  Initializes the deviceMibVersion module
 */
void
init_deviceMibVersion(void)
{
    const oid deviceMibVersion_oid[] = { 1,3,6,1,4,1,35990,3,1,1,8 };

	g_debug("deviceMibVersion initializing");

    netsnmp_register_read_only_instance(
        netsnmp_create_handler_registration("deviceMibVersion", handle_deviceMibVersion,
                               deviceMibVersion_oid, OID_LENGTH(deviceMibVersion_oid),
                               HANDLER_CAN_RONLY
        ));
}

/**
 * \brief calls appropriate handler for this parameter
 * \param handler the specific handler for this item
 * \param reqinfo the SNMP request
 * \param reuests the resuest information
 * \param mib_parameter the parameter of the MIB
 * \return SNMP_ERR_NOERROR or approriate code error
 */
int
handle_deviceMibVersion(netsnmp_mib_handler *handler,
                          netsnmp_handler_registration *reginfo,
                          netsnmp_agent_request_info   *reqinfo,
                          netsnmp_request_info         *requests)
{
    return handle_ROstring16(handler, reginfo, reqinfo, requests, &deviceInfo.parameters[num_DeviceMibV]);

}
