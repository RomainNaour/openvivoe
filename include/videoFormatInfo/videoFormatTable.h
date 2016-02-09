/*
 * Note: this file originally auto-generated by mib2c using
 *  $
 */
#ifndef VIDEOFORMATTABLE_H
#define VIDEOFORMATTABLE_H

/* function declarations */
void init_videoFormatTable(void);
void initialize_table_videoFormatTable(void);
Netsnmp_Node_Handler videoFormatTable_handler;
Netsnmp_First_Data_Point  videoFormatTable_get_first_data_point;
Netsnmp_Next_Data_Point   videoFormatTable_get_next_data_point;
NetsnmpCacheLoad videoFormatTable_load;
NetsnmpCacheFree videoFormatTable_free;
#define VIDEOFORMATTABLE_TIMEOUT  60

/* column number definitions for table videoFormatTable */
       #define COLUMN_VIDEOFORMATINDEX					1
       #define COLUMN_VIDEOFORMATTYPE					2
       #define COLUMN_VIDEOFORMATSTATUS					3
       #define COLUMN_VIDEOFORMATBASE					4
       #define COLUMN_VIDEOFORMATSAMPLING				5
       #define COLUMN_VIDEOFORMATBITDEPTH				6
       #define COLUMN_VIDEOFORMATFPS					7
       #define COLUMN_VIDEOFORMATCOLORIMETRY			8
       #define COLUMN_VIDEOFORMATINTERLACED				9
       #define COLUMN_VIDEOFORMATCOMPRESSIONFACTOR		10
       #define COLUMN_VIDEOFORMATCOMPRESSIONRATE		11
       #define COLUMN_VIDEOFORMATMAXHORZRES				12
       #define COLUMN_VIDEOFORMATMAXVERTRES				13
       #define COLUMN_VIDEOFORMATROIHORZRES				14
       #define COLUMN_VIDEOFORMATROIVERTRES				15
       #define COLUMN_VIDEOFORMATROIORIGINTOP			16
       #define COLUMN_VIDEOFORMATROIORIGINLEFT			17
       #define COLUMN_VIDEOFORMATROIEXTENTBOTTOM		18
       #define COLUMN_VIDEOFORMATROIEXTENTRIGHT			19
       #define COLUMN_VIDEOFORMATRTPPT					20

#endif /* VIDEOFORMATTABLE_H */
