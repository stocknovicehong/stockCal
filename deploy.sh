#!/bin/bash

var=`date +"%FORMAT_STRING"`
dttm=`date +"%Y%m%d%H%M%S"`
echo "${dttm}"
envvar=`echo $dttm`

cp ./main.html ./upload/stockcalendar.v${dttm}.html
sed "s/\XXXXXX/https\:\/\/tistory4\.daumcdn\.net\/tistory\/2005774\/skin\/images\/stockcalendar\.v$envvar\.html/g" ./index_origin.html > ./index.html
