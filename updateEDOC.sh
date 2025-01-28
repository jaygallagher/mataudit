##
## use this like this
##  ~/Downloads/fswatch/fswatch opioid.html ./updateEformRow.sh 
## or might have to call this from the parent directory ie.
##  ~/Downloads/fswatch/fswatch opioid/opioid.html ./opioid/updateEformRow.sh 

echo "Hi"

cp reportMat.html /Users/jasongallagher/src/WELL_COMPANY/oscar_database_docker/my/

docker run -it --rm mariadb mariadb --host host.docker.internal --port 3808 --user root --password --database kai15 -e  "UPDATE document SET docxml = LOAD_FILE('/etc/mysql/conf.d/reportMat.html') WHERE document_no = 1" ;



