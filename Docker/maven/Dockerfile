FROM oracle/soa:12.1.3-dev

# Maintainer
# ----------
MAINTAINER Ivan Lopez

# WLS Configuration
# -------------------------------
ENV ORACLE_HOME /u01/oracle/osb
ENV M2_HOME $ORACLE_HOME/oracle_common/modules/org.apache.maven_3.0.5
ENV M2 /$M2_HOME/bin
ENV PATH $M2:$PATH
ENV M2_REPO=/home/oracle/.m2/repository
ENV M2_PLUGIN $ORACLE_HOME/oracle_common/plugins/maven/com/oracle/maven/oracle-maven-sync/12.1.3
