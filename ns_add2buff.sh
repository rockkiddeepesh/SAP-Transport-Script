TPLIST=/usr/sap/trans/TrnScript/transport_list.txt

TPSTATUS=${TPLIST}.log

for i in `cat ${TPLIST}`

do

tp addtobuffer $i QA2 u1 pf=/usr/sap/trans/bin/TP_DOMAIN_QA2.PFL
      
	RC=$?

    	print "`date`...Transport ${i} Status RC=${RC}" >> ${TPSTATUS}

done