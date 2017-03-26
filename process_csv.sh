#!/bin/bash

#processes the csv imported table into the appropriate recrods
if [ "$#" -ne 2 ]; then
  printf "Usage <Password> <database>\n"
  exit
fi
    
    

#eval "mysql -u root -p'$1' $2 -e \"CREATE TABLE if not exists $2.ipaddr(
#                                    idipaddr  INT unsigned NOT NULL AUTO_INCREMENT,
#                                    ipValue CHAR(30) NOT NULL,
#                                    PRIMARY KEY (idipaddr), 
#                                    INDEX F (ipValue ASC));\""
#  
#eval "mysql -u root -p'$1' $2 -e \"insert into $2.ipaddr (idipaddr, ipValue)
#                                    value (1, '0.0.0.0');\""

#eval "mysql -u root -p'$1' $2 -e \"CREATE TABLE if not exists $2.macaddr(
#                                    idmacaddr  INT unsigned NOT NULL AUTO_INCREMENT,
#                                    macValue CHAR(30) NOT NULL,
#                                    PRIMARY KEY (idmacaddr), 
#                                    INDEX F (macValue ASC));\""
#  
#eval "mysql -u root -p'$1' $2 -e \"insert into $2.macaddr (idmacaddr, macValue)
#                                    value (1, '00:00:00:00:00:00');\""

ARRAY=("CSV_3")
 #"D13" "D14" "D15A" "D15B" "D15C" "D16A" "D16B" "D16C" "D17A" "D17B" "D17C")
for i in "${ARRAY[@]}"
do

#  eval "mysql -u root -p'$1' $2 -e \"ALTER TABLE $2.$i 
#                                      ADD INDEX S (ip_src ASC),
#                                      ADD INDEX D (ip_dst ASC), 
#                                      ADD INDEX SM (eth_src ASC),
#                                      ADD INDEX DM (eth_dst ASC);\"" 
#
#  eval "mysql -u root -p'$1' $2 -e \"delete from $2.$i
#                                      where isnull (ip_src) = true or isnull (ip_dst) = true\""
#  eval "mysql -u root -p'$1' $2 -e \"delete from $2.$i
#                                    where ip_src = \\\"\\\" or ip_dst = \\\"\\\"\""  
                                        
#  eval "mysql -u root -p'$1' $2 -e \"insert into $2.ipaddr (ipValue)
#                                      select t.ip from 
#                                      (
#                                            SELECT distinct ip_src as ip FROM $2.$i
#                                            union
#                                            SELECT distinct ip_dst as ip FROM  $2.$i 
#                                      ) as t\""     
                                      
#   eval "mysql -u root -p'$1' $2 -e \"insert into $2.macaddr (macValue)
#                                      select t.mac from 
#                                      (
#                                            SELECT distinct eth_src as mac FROM $2.$i
#                                            union
#                                            SELECT distinct eth_dst as mac FROM  $2.$i 
#                                      ) as t\""            
#                  
#  #there may have been another 0.0.0.0, so we will remove it here
#  eval "mysql -u root -p'$1' $2 -e \"delete from $2.ipaddr
#                                      where ipValue = '0.0.0.0' and idipaddr >1\""

  eval "mysql -u root -p'$1' $2 -e \"delete from $2.$i
                                      where frame_len = \\\"\\\"\""
##                                      
#    #there may have been another 0.0.0.0, so we will remove it here
#  eval "mysql -u root -p'$1' $2 -e \"delete from $2.macaddr
#                                      where macValue = '0.0.0.0' and idmacaddr >1\""
#                                      
#eval "mysql -u root -p'$1' $2 -e \"update $2.$i 
#                                    inner join $2.ipaddr
#                                    on $i.ip_src = ipaddr.ipValue
#                                    set $i.ip_src = ipaddr.idipaddr\""
#                                    
#eval "mysql -u root -p'$1' $2 -e \"update $2.$i 
#                                    inner join $2.ipaddr
#                                    on $i.ip_dst = ipaddr.ipValue
#                                    set $i.ip_dst = ipaddr.idipaddr\""


#eval "mysql -u root -p'$1' $2 -e \"update $2.$i 
#                                    inner join $2.macaddr
#                                    on $i.eth_src = macaddr.macValue
#                                    set $i.eth_src = macaddr.idmacaddr\""
#                                    
#eval "mysql -u root -p'$1' $2 -e \"update $2.$i 
#                                    inner join $2.macaddr
#                                    on $i.eth_dst = macaddr.macValue
#                                    set $i.eth_dst = macaddr.idmacaddr\""

#  eval "mysql -u root -p'$1' $2 -e \"update $2.$i 
#                                      set udp_srcPort = -1, 
#                                        udp_dstPort = -1
#                                      where udp_srcPort = \\\"\\\"\""
#  eval "mysql -u root -p'$1' $2 -e \"update $2.$i 
#                                      set tcp_srcPort = -1, 
#                                        tcp_dstPort = -1
#                                      where tcp_srcPort = \\\"\\\"\""
                                
#  eval "mysql -u root -p'$1' $2 -e \"update $2.$i 
#                                      CHANGE COLUMN frame_number frame_number INT NULL DEFAULT NULL ,
#                                      CHANGE COLUMN frame_time_epoch frame_time_epoch DOUBLE NULL DEFAULT NULL ,
#                                      CHANGE COLUMN eth_src eth_src INT NULL DEFAULT NULL ,
#                                      CHANGE COLUMN eth_dst eth_dst INT NULL DEFAULT NULL ,
#                                      CHANGE COLUMN ip_src ip_src INT NULL DEFAULT NULL ,
#                                      CHANGE COLUMN ip_dst ip_dst INT NULL DEFAULT NULL ,
#                                      CHANGE COLUMN ip_proto ip_proto INT NULL DEFAULT NULL ,
#                                      CHANGE COLUMN tcp_srcport tcp_srcport INT NULL DEFAULT NULL ,
#                                      CHANGE COLUMN tcp_dstport tcp_dstport INT NULL DEFAULT NULL ,
#                                      CHANGE COLUMN udp_srcport udp_srcport INT NULL DEFAULT NULL ,
#                                      CHANGE COLUMN udp_dstport udp_dstport INT NULL DEFAULT NULL ,
#                                      CHANGE COLUMN frame_len frame_len INT NULL DEFAULT NULL ;\""    

                            
  

done
    



