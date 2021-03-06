/*
 * Note: this file originally auto-generated by mib2c using
 *        $
 */

#include <net-snmp/net-snmp-config.h>
#include <net-snmp/net-snmp-includes.h>
#include <net-snmp/agent/net-snmp-agent-includes.h>
#include "trap/ipAddressConflict.h"

extern const oid snmptrap_oid[];
extern const size_t snmptrap_oid_len;

int
send_ipAddressConflict_trap( void )
{
    netsnmp_variable_list  *var_list = NULL;
    const oid ipAddressConflict_oid[] = { 1,3,6,1,4,1,35990,3,1,4,2 };
    const oid ethernetIfIpAddress_oid[] = { 1,3,6,1,4,1,35990,3,1,1,12,1,4, /* insert index here */ };
    const oid ethernetIfIpAddressConflict_oid[] = { 1,3,6,1,4,1,35990,3,1,1,12,1,6, /* insert index here */ };

    /*
     * Set the snmpTrapOid.0 value
     */
    snmp_varlist_add_variable(&var_list,
        snmptrap_oid, snmptrap_oid_len,
        ASN_OBJECT_ID,
        ipAddressConflict_oid, sizeof(ipAddressConflict_oid));

    /*
     * Add any objects from the trap definition
     */
    snmp_varlist_add_variable(&var_list,
        ethernetIfIpAddress_oid, OID_LENGTH(ethernetIfIpAddress_oid),
        ASN_IPADDRESS,
        /* Set an appropriate value for ethernetIfIpAddress */
        NULL, 0);
    snmp_varlist_add_variable(&var_list,
        ethernetIfIpAddressConflict_oid, OID_LENGTH(ethernetIfIpAddressConflict_oid),
        ASN_IPADDRESS,
        /* Set an appropriate value for ethernetIfIpAddressConflict */
        NULL, 0);

    /*
     * Add any extra (optional) objects here
     */

    /*
     * Send the trap to the list of configured destinations
     *  and clean up
     */
    send_v2trap( var_list );
    snmp_free_varbind( var_list );

    return SNMP_ERR_NOERROR;
}
