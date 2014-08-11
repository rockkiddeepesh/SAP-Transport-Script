# Start of Script file

#! This script will import transports one by one sequentially.

# The list of transport should be given in transport_list.txt file where

# each transport should be in new line.

###

TPLIST=/usr/sap/trans/TrnScript/transport_list.txt

TPSTATUS=${TPLIST}.RClog

for i in `cat ${TPLIST}`

do

tp  import $i QA2  client=700 u0126 pf=/usr/sap/trans/bin/TP_DOMAIN_QA2.PFL

      RC=$?

    print "`date`...Transport ${i} Status RC=${RC}" >> ${TPSTATUS}

    if [ "$RC" -ne 0 ] && [ "$RC" -ne 4 ]; then

    break

    fi

done

# End of script file