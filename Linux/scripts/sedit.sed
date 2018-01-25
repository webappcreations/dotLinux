#
#
#
#
#sed -n 's/\\Afs\?e\?\{.*}/&\n/p' test.txt
#sed -n 's/^[^/]*///s/\\Afs\?e\?{.*}{.*}/&\n\a/p' test.txt
#sed -n 'y/'\\Af'/\n&/' test.txt

#[ -z "$1" ] && exit 1

#cd /home/goalador/Documents/Magisterarbeit/mPrüfung/sed

#SOURCE= '/home/goalador/Documents/Magisterarbeit/mPrüfung/sed/test.txt'
#WORK= '/home/goalador/Documents/Magisterarbeit/mPrüfung/sed/work.sed'
#RESULT= '/home/goalador/Documents/Magisterarbeit/mPrüfung/sed/result.tex'


#sed -n $WORK $SOURCE

#sed -n work.sed test.txt

#sed -e 's/\\Af/\n\\Af/g' \ 
#    -e 's/\\Afs\?e\?{.*}{.*}/&/' \
#    -e 's/^[^\]*//' \
#    -e  's/[^}]*$//p' test.txt   
#    #-e  's/[^}]*$// w result.tex'  test.txt  

#s/\\Afs\?e\?{.*}{.*}/hallo/
#s/^[^\]/hallo/


s/\\Af/\n\\Af/g
s/^[^\]*//
s/[^}]*$//
#s/[^\Afse]/hallo/
#/^\n/ d
w result.tex



#sed 's/\\Af/\n\\Af/g s/\\Afs\?e\?{.*}{.*}/&/'

# | sed 's/^[^\]*//' | sed -n 's/[^}]*$// w result.tex'  
 
#nano /home/goalador/Documents/Magisterarbeit/mPrüfung/sed/result.tex

#sed -n 's/\\Af/\n&/g' test.txt #füge eine newline bei: \Af hinzu
#sed -n 's/^[^\]*//' #lösche alles vor dem ersten: \
#sed -n 's/[^}]*$//p'#lösche alles nach dem letzten: }

 
