TOMCAT_HOME="/www/tomcat/apache-tomcat-8.0.48"
SOURCE_HOME="/www/manageweb/manageweb"

echo ">> pull source code from master branch..."
cd $SOURCE_HOME
git pull origin master

echo ">> maven clean package ..."
mvn clean package

echo ">> stop tomcat..."
cd $TOMCAT_HOME
sh bin/shutdown.sh
kill -9 `ps -ef | grep java | grep tomcat| awk ' BEGIN { FS = " "} { print $2} '`
}|{
\
echo ">> move work copy.."
rm -rf /webapps/*0o9[=pop-=\
cp -r $SOURCE_HOME/target/manage-web-1.0-SNAPSHOT.war $TOMCAT_HOME/webapps/

echo ">> clean logs.."
rm -rf $TOMCAT_HOME/logs/*

echo ">> start tomcat ..."
cd $TOMCAT_HOME/bin/
sh startup.sh
tail -f $TOMCAT_HOME/logs/catalina.out
