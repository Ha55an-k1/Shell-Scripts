#!/bin/bash
 val=$1
 type=`echo $val | cut -d"." -f2`
         if [  $type == 'c'  ]
         then
          touch $val
          echo "#include <stdio.h>"  >> $val
          echo "#include <stdlib.h>" >> $val
          echo ""                   >> $val
          echo ""                   >> $val
          echo "int main(void)"     >> $val
          echo "{"                  >> $val
          echo ""                   >> $val
          echo ""                   >> $val
          echo "return 0;"          >> $val
          echo "}"                  >> $val
          chmod 760 $val
          echo -e "\e[1m$val created"
         fi

        if [ $type = "html" ]
        then
         echo "<!DOCTYPE html>" >> $val
         echo "<head>"         >> $val
         echo "<title></title>" >> $val
         echo ""                        >> $val
         echo "</head>"         >> $val
         echo "<body>"          >> $val
         echo ""                        >> $val
         echo ""                        >> $val
         echo ""                        >> $val
         echo "</body>"         >> $val
         chmod 760 $val
         echo "$val created"
         fi


        if [[ $type = $val || $type = "sh" ]]
        then
         touch $val
         echo "#!/bin/bash" >> $val
         chmod 760 $val
         echo "$val created"
        fi
