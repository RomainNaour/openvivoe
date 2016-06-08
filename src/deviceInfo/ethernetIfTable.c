/*
 * Note: this file originally auto-generated by mib2c using
 *  $
 */

#include <net-snmp/net-snmp-config.h>
#include <net-snmp/net-snmp-includes.h>
#include <net-snmp/agent/net-snmp-agent-includes.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <ctype.h>
#include <glib-2.0/glib.h>
#include "../../include/mibParameters.h"
#include "../../include/conf/mib-conf.h"
#include "../../include/deviceInfo/ethernetIfTable.h"
#include "../../include/vivoe_ip/ip_assignment.h"
#include "../../include/vivoe_ip/conflict_detection.h"
#include "../../include/handler.h"

/**
 * \brief get the last element of the Table
 * \return ethernetIfTableEntry*  a pointer the last entry in the table
 */
static struct ethernetIfTableEntry * ethernetIfTable_getLast( int *nb_entry ){
	int entry_counter = 1;
	struct ethernetIfTableEntry *iterator = ethernetIfTable_head;
	while(iterator->next != NULL){
		iterator = iterator->next;
		entry_counter ++;
	}

	/* save the number of entry in nb_entry */
	*nb_entry = entry_counter;
	return iterator;
}

/**
 * \brief create a new row in the (unsorted) table
 * \param ethernetIfIndex the index of the entry
 * \param ethernetIfSpeed the speed of the entry
 * \param ethernetIfMacAddress the entry's MAC address
 * \param ethernetIfIpAddress the entry's IP address
 * \param ethernetIfSubnetMask the entry's subnet Mask
 * \param ethernetIfIpAddressConflict a variable to save the confilcting IP
 * \return the ethernetIfTableEntry added in the table
 */
struct ethernetIfTableEntry * ethernetIfTableEntry_create(  long  ethernetIfIndex,
                                                            long ethernetIfSpeed,
                                                            u_char ethernetIfMacAddress[6],
                                                            size_t ethernetIfMacAddress_len,
                                                            in_addr_t ethernetIfIpAddress,
                                                            in_addr_t ethernetIfSubnetMask,
                                                            in_addr_t ethernetIfIpAddressConflict)
{
    struct ethernetIfTableEntry *entry;
	int nb_entry;

    entry = SNMP_MALLOC_TYPEDEF(struct ethernetIfTableEntry);
    if (!entry)
        return NULL;


    entry->ethernetIfSpeed = ethernetIfSpeed;

    memcpy(entry->ethernetIfMacAddress, ethernetIfMacAddress,ethernetIfMacAddress_len );
    entry->ethernetIfMacAddress_len = ethernetIfMacAddress_len;

    entry->ethernetIfIpAddress = ethernetIfIpAddress;

    entry->ethernetIfSubnetMask = ethernetIfSubnetMask;

    entry->ethernetIfIpAddressConflict = ethernetIfIpAddressConflict;

    entry->valid = 1;
	if( ethernetIfTable_head == NULL ){
	    entry->ethernetIfIndex = 1; /* only one entry in the table */
		ethernetIfTable_head = entry;
	}
	else{
		struct ethernetIfTableEntry *last = ethernetIfTable_getLast(&nb_entry);
		entry->ethernetIfIndex = nb_entry+1;
		last->next = entry;
		entry->next = NULL;
	}
    return entry;
}
/**
 * \brief Delete an entry in ethernetIfTable
 */
void ethernetIfTableEntry_delete(){
	struct ethernetIfTableEntry *iterator = ethernetIfTable_head;
	struct ethernetIfTableEntry  *temp;
	while(iterator != NULL){
		temp = iterator;
		iterator = iterator->next;
		free(temp);
	}
}

/**
 * \brief specify if we are using default IP scheme assignment or VIVOE's scheme
 * \return TRUE if it is the system's default IP assignment or FALSE if it VIVOE's one
 */
static gboolean openvivoe_uses_default_IP_assignment_scheme(){

	if ( ! strcmp ( ethernetIpAssignment._value.string_val , KEY_ETHERNET_IP_ASSIGNMENT_DEFAULT) )
		return TRUE;
	else
		return FALSE;

}

/**
 * \brief get the primary interface name
 * \return the name of the prmimary interface, i.e. the name of the first entry in the table
 */
gchar *get_primary_interface_name(){
	return deviceInfo.parameters[num_ethernetInterface]._value.array_string_val[0] ;
}

/**
 * \brief Initialize the ethernetIfTable table by defining its contents and how it's structured
 */
static void initialize_table_ethernetIfTable(void)
{
    const oid ethernetIfTable_oid[] = {1,3,6,1,IPV4_SIZE,1,35990,3,1,1,12};
    const size_t ethernetIfTable_oid_len   = OID_LENGTH(ethernetIfTable_oid);
    netsnmp_handler_registration    *reg;
    netsnmp_iterator_info           *iinfo;
    netsnmp_table_registration_info *table_info;

    g_debug(("ethernetIfTable initializing table ethernetIfTable"));

    reg = netsnmp_create_handler_registration(
              "ethernetIfTable",     ethernetIfTable_handler,
              ethernetIfTable_oid, ethernetIfTable_oid_len,
              HANDLER_CAN_RWRITE
              );

    table_info = SNMP_MALLOC_TYPEDEF( netsnmp_table_registration_info );
    netsnmp_table_helper_add_indexes(table_info,
                           ASN_INTEGER,  /* index: ethernetIfIndex */
                           0);
    table_info->min_column = COLUMN_ETHERNETIFSPEED;
    table_info->max_column = COLUMN_ETHERNETIFIPADDRESSCONFLICT;

    iinfo = SNMP_MALLOC_TYPEDEF( netsnmp_iterator_info );
    iinfo->get_first_data_point = ethernetIfTable_get_first_data_point;
    iinfo->get_next_data_point  = ethernetIfTable_get_next_data_point;
    iinfo->table_reginfo        = table_info;

    netsnmp_register_table_iterator( reg, iinfo );

    /*
	 * Initialise the contents of the table here
	 * get the IP addresses and characteristics of the system for each interfaces and store it in the ethernetIfTable
	 */
	for(int i = 0; i < deviceInfo.parameters[num_ethernetIFnumber]._value.int_val; i++){

		/* If we do not use system's default IP scheme assignement */
		if ( !openvivoe_uses_default_IP_assignment_scheme() ){

			/* check if an IP have already be assigned to the device */
			const gchar* assigned_ip= get_static_assigned_IP_from_conf( deviceInfo.parameters[num_ethernetInterface]._value.array_string_val[i]  );

			if ( !assigned_ip ){
				/* otherwise set default static IP, as defined in VIVOE's IP assignment scheme */
				assign_default_ip ( deviceInfo.parameters[num_ethernetInterface]._value.array_string_val[i] );
			}else{
				/* assigned the IP from conf to the device */
				set_static_ip( deviceInfo.parameters[num_ethernetInterface]._value.array_string_val[i] , assigned_ip ) ;
			}

			/* now fill the ethernetIfTable */
			struct ethernetIfTableEntry *new_entry = init_ethernet(deviceInfo.parameters[num_ethernetInterface]._value.array_string_val[i]);

			/* start conflict detection - only if there is an assigned IP */
			if ( !assigned_ip ){

				if ( ip_conflict_detection( new_entry , deviceInfo.parameters[num_ethernetInterface]._value.array_string_val[i]  )){
					g_critical( "Using default IP %s because no other IP are available", DEFAULT_STATIC_IP );
					g_critical( "There may have IP conflicts in the VIVOE network");
				}

			}

		}else{

			/* now fill the ethernetIfTable */
			init_ethernet(deviceInfo.parameters[num_ethernetInterface]._value.array_string_val[i]);

		}

	}
}

/**
 * \brief Initializes the ethernetIfTable module
 */
void
init_ethernetIfTable(void)
{
  /* here we initialize all the tables we're planning on supporting */
    initialize_table_ethernetIfTable();
}

/* Remove a row from the table
 * I leave the code here, however for our application, there is not possibility
 * to remove a row from the table.
 * the functionnality exits, but should not be implemented for now
 */
#if ALLOW_REMOVING_ROW
void ethernetIfTable_removeEntry( struct ethernetIfTableEntry *entry ) {
    struct ethernetIfTableEntry *ptr, *prev;

    if (!entry)
        return;    /* Nothing to remove */

    for ( ptr  = ethernetIfTable_head, prev = NULL;
          ptr != NULL;
          prev = ptr, ptr = ptr->next ) {
        if ( ptr == entry )
            break;
    }
    if ( !ptr )
        return;    /* Can't find it */

    if ( prev == NULL )
        ethernetIfTable_head = ptr->next;
    else
        prev->next = ptr->next;

    SNMP_FREE( entry );   /* XXX - release any other internal resources */
}
#endif // ALLOW_REMOVING_ROW

netsnmp_variable_list *
ethernetIfTable_get_next_data_point(void **my_loop_context,
                          void **my_data_context,
                          netsnmp_variable_list *put_index_data,
                          netsnmp_iterator_info *mydata)
{
    struct ethernetIfTableEntry *entry = (struct ethernetIfTableEntry *)*my_loop_context;
    netsnmp_variable_list *idx = put_index_data;

    if ( entry ) {
        snmp_set_var_typed_integer( idx, ASN_INTEGER, entry->ethernetIfIndex );
        idx = idx->next_variable;
        *my_data_context = (void *)entry;
        *my_loop_context = (void *)entry->next;
        return put_index_data;
    } else {
        return NULL;
    }
}

/* \brief Example iterator hook routines - using 'get_next' to do most of the work
 */
netsnmp_variable_list *
ethernetIfTable_get_first_data_point(void **my_loop_context,
                          void **my_data_context,
                          netsnmp_variable_list *put_index_data,
                          netsnmp_iterator_info *mydata)
{
    *my_loop_context = ethernetIfTable_head;
    return ethernetIfTable_get_next_data_point(my_loop_context, my_data_context,
                                    put_index_data,  mydata );
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
ethernetIfTable_handler(
    netsnmp_mib_handler 			*handler,
    netsnmp_handler_registration 	*reginfo,
    netsnmp_agent_request_info 		*reqinfo,
    netsnmp_request_info 			*requests) {

    netsnmp_request_info 			*request;
    netsnmp_table_request_info 		*table_info;
    struct ethernetIfTableEntry 	*table_entry;
    int 							ret;
    g_debug("ethernetIfTable:handler Processing request (%d)", reqinfo->mode);

    switch (reqinfo->mode) {
        /*
         * Read-support (also covers GetNext requests)
         */
    case MODE_GET:
        for (request=requests; request; request=request->next) {
            table_entry = (struct ethernetIfTableEntry *)
                              netsnmp_extract_iterator_context(request);
            table_info  =     netsnmp_extract_table_info(      request);
            switch (table_info->colnum) {
            case COLUMN_ETHERNETIFSPEED:
                if ( !table_entry ) {
                    netsnmp_set_request_error(reqinfo, request,
                                              SNMP_NOSUCHINSTANCE);
                    continue;
                }
                snmp_set_var_typed_integer( request->requestvb, ASN_INTEGER,
                                            table_entry->ethernetIfSpeed);

            break;
            case COLUMN_ETHERNETIFMACADDRESS:
                if ( !table_entry ) {
                    netsnmp_set_request_error(reqinfo, request,
                                              SNMP_NOSUCHINSTANCE);
                    continue;
                }
                snmp_set_var_typed_value( request->requestvb, ASN_OCTET_STR,
                                          table_entry->ethernetIfMacAddress,
                                          table_entry->ethernetIfMacAddress_len);
                break;
            case COLUMN_ETHERNETIFIPADDRESS:
                if ( !table_entry ) {
                    netsnmp_set_request_error(reqinfo, request,
                                              SNMP_NOSUCHINSTANCE);
                    continue;
                }
                snmp_set_var_typed_value( request->requestvb, ASN_IPADDRESS,
                                         (u_char*) &table_entry->ethernetIfIpAddress, IPV4_SIZE );
                break;
            case COLUMN_ETHERNETIFSUBNETMASK:
                if ( !table_entry ) {
                    netsnmp_set_request_error(reqinfo, request,
                                              SNMP_NOSUCHINSTANCE);
                    continue;
                }
                snmp_set_var_typed_value( request->requestvb, ASN_IPADDRESS,
                                         (u_char*) &table_entry->ethernetIfSubnetMask, IPV4_SIZE );
                break;
            case COLUMN_ETHERNETIFIPADDRESSCONFLICT:
                if ( !table_entry ) {
                    netsnmp_set_request_error(reqinfo, request,
                                              SNMP_NOSUCHINSTANCE);
                    continue;
                }
                snmp_set_var_typed_value( request->requestvb, ASN_IPADDRESS,
                                         (u_char*) &table_entry->ethernetIfIpAddressConflict, IPV4_SIZE );
                break;
            default:
                netsnmp_set_request_error(reqinfo, request,
                                          SNMP_NOSUCHOBJECT);
                break;
            }
        }
        break;
        /*
         * Write-support
         */
    case MODE_SET_RESERVE1:
        for (request=requests; request; request=request->next) {
            table_entry = (struct ethernetIfTableEntry *)
                              netsnmp_extract_iterator_context(request);
            table_info  =     netsnmp_extract_table_info(      request);

			/* check if the index we are trying to modify is in the table, if no, return */
			if ( index_out_of_range( reginfo,
                     		   	reqinfo,
							    requests,
							 	table_info,
							deviceInfo.parameters[num_ethernetIFnumber]._value.int_val ) )
				return SNMP_ERR_NOERROR;
            switch (table_info->colnum) {
				case COLUMN_ETHERNETIFIPADDRESS:
					ret = netsnmp_check_vb_type( request->requestvb, ASN_IPADDRESS );
					if ( ret != SNMP_ERR_NOERROR ) {
						netsnmp_set_request_error( reqinfo, request, ret );
						return SNMP_ERR_NOERROR;
					}
					if ( deviceInfo.parameters[num_DeviceMode]._value.int_val	!= maintenanceMode){
						ret = SNMP_ERR_RESOURCEUNAVAILABLE;
						netsnmp_set_request_error(reqinfo, requests, ret );
						return SNMP_ERR_NOERROR;
					}

					break;
            case COLUMN_ETHERNETIFSUBNETMASK:
                /* or possibly 'netsnmp_check_vb_int_range' */
                ret = netsnmp_check_vb_type( request->requestvb, ASN_IPADDRESS );
                if ( ret != SNMP_ERR_NOERROR ) {
                    netsnmp_set_request_error( reqinfo, request, ret );
                    return SNMP_ERR_NOERROR;
                }
                break;
            case COLUMN_ETHERNETIFIPADDRESSCONFLICT:
                /* or possibly 'netsnmp_check_vb_int_range' */
                ret = netsnmp_check_vb_type( request->requestvb, ASN_IPADDRESS );
                if ( ret != SNMP_ERR_NOERROR ) {
                    netsnmp_set_request_error( reqinfo, request, ret );
                    return SNMP_ERR_NOERROR;
                }
                break;
            default:
                netsnmp_set_request_error( reqinfo, request,
                                           SNMP_ERR_NOTWRITABLE );
                return SNMP_ERR_NOERROR;
            }
        }
        break;

    case MODE_SET_RESERVE2:
		for (request=requests; request; request=request->next) {
            table_entry = (struct ethernetIfTableEntry *)
                              netsnmp_extract_iterator_context(request);
            table_info  =     netsnmp_extract_table_info(      request);
            switch (table_info->colnum) {
            case COLUMN_ETHERNETIFIPADDRESS:
               	if ( deviceInfo.parameters[num_DeviceMode]._value.int_val	!= maintenanceMode){
					netsnmp_set_request_error(reqinfo, requests,SNMP_ERR_RESOURCEUNAVAILABLE  );
					return SNMP_ERR_NOERROR;
				}
				/* check if device is configured in VIVOE IP assignment mode, esle return NO ACCESS error */
				if ( !openvivoe_uses_default_IP_assignment_scheme() ){
					ret = SNMP_ERR_NOACCESS;
					netsnmp_set_request_error(reqinfo, requests, ret );
					return SNMP_ERR_NOERROR;
				}
                break;
            case COLUMN_ETHERNETIFSUBNETMASK:
				if ( deviceInfo.parameters[num_DeviceMode]._value.int_val	!= maintenanceMode){
					netsnmp_set_request_error(reqinfo, requests,SNMP_ERR_RESOURCEUNAVAILABLE  );
					return SNMP_ERR_NOERROR;
				}
              break;
            case COLUMN_ETHERNETIFIPADDRESSCONFLICT:
			  if ( deviceInfo.parameters[num_DeviceMode]._value.int_val	!= maintenanceMode){
					netsnmp_set_request_error(reqinfo, requests,SNMP_ERR_RESOURCEUNAVAILABLE  );
					return SNMP_ERR_NOERROR;
				}
              break;
            default:
                netsnmp_set_request_error( reqinfo, request,
                                           SNMP_ERR_NOTWRITABLE );
                return SNMP_ERR_NOERROR;
            }
        }
        break;

    case MODE_SET_FREE:
        break;

    case MODE_SET_ACTION:
        /* On i386 the host Byte order is Least significant Byte first (Litlle Endian), whereas the
        * network byte order, as used on the Internet is Most Significant byte first (Big Endian)
        * to check the integer type of the value send to the subAgent, we must first convert
        * the integer received from Little Endian to Big Endian
        */
        for (request=requests; request; request=request->next) {
            table_entry = (struct ethernetIfTableEntry *)
                              netsnmp_extract_iterator_context(request);
            table_info  =     netsnmp_extract_table_info(      request);
			switch (table_info->colnum) {
				case COLUMN_ETHERNETIFIPADDRESS:
					table_entry->old_ethernetIfIpAddress 			= table_entry->ethernetIfIpAddress;
					table_entry->ethernetIfIpAddress     			= *request->requestvb->val.integer;
					/* call the hanlder for ethenetIfAdrress modifications */
					/* check for conflict */
					if ( ! ip_conflict_detection(  table_entry , deviceInfo.parameters[num_ethernetInterface]._value.array_string_val[table_entry->ethernetIfIndex - 1 ])){
						/* if no conflict, save the value */
						struct in_addr new_ip;
						new_ip.s_addr = table_entry->ethernetIfIpAddress;
						set_static_assigned_IP_to_conf ( deviceInfo.parameters[num_ethernetInterface]._value.array_string_val[ table_entry->ethernetIfIndex - 1 ] , inet_ntoa ( new_ip ));
					}/* otherwise, a trap will be send to the manager, do not save this conflicting IP */
					break;
				case COLUMN_ETHERNETIFSUBNETMASK:
					table_entry->old_ethernetIfSubnetMask 			= table_entry->ethernetIfSubnetMask;
					table_entry->ethernetIfSubnetMask     			= *request->requestvb->val.integer;
					break;
				case COLUMN_ETHERNETIFIPADDRESSCONFLICT:
					table_entry->old_ethernetIfIpAddressConflict 	= table_entry->ethernetIfIpAddressConflict;
					table_entry->ethernetIfIpAddressConflict     	= *request->requestvb->val.integer;
					break;
			}
        }
        break;

    case MODE_SET_UNDO:
        for (request=requests; request; request=request->next) {
            table_entry = (struct ethernetIfTableEntry *)
                              netsnmp_extract_iterator_context(request);
            table_info  =     netsnmp_extract_table_info(      request);

            switch (table_info->colnum) {
            case COLUMN_ETHERNETIFIPADDRESS:
                table_entry->ethernetIfIpAddress     			= table_entry->old_ethernetIfIpAddress;
                table_entry->old_ethernetIfIpAddress 			= 0;
                break;
            case COLUMN_ETHERNETIFSUBNETMASK:
                table_entry->ethernetIfSubnetMask     			= table_entry->old_ethernetIfSubnetMask;
                table_entry->old_ethernetIfSubnetMask 			= 0;
                break;
            case COLUMN_ETHERNETIFIPADDRESSCONFLICT:
                table_entry->ethernetIfIpAddressConflict     	= table_entry->old_ethernetIfIpAddressConflict;
                table_entry->old_ethernetIfIpAddressConflict 	= 0;
                break;
            }
        }
        break;

    case MODE_SET_COMMIT:
        break;
    }
    return SNMP_ERR_NOERROR;
}
