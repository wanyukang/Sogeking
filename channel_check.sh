#!/bin/sh
#@author wanyukang
echo "=============== Start Check ! ===============\n"
#渠道号
channels="
A7420 
A99 
A999
"
version="5.1.5"

for channel in $channels
do
    
	actual="`aapt dump xmltree ./apk/yidao_${version}_${channel}_release.apk AndroidManifest.xml|awk '/android:value/ { print $4 }'|sed -e 's/"//'|sed -e 's/")//'|sed -n '1p'`"
	except=${channel}
	date="`date|tr -d ' '`"
	# echo ${date}
    # echo actual:${actual}
    # echo except:${except}
	if [ $actual = $except ]
	then
		echo "√ PASS ! Check 【${actual}】 " | tee -a ./result/Check_Result_${date}.txt
	else
		echo "X FAIL : except is 【${except}】 but actual is 【${actual}】 !" | tee -a ./result/Check_Result_${date}.txt
	fi

done
echo "=============== Done ! ===============\n"
