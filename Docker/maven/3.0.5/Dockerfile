# Pull base image
# ---------------
FROM oraclelinux:7

# Maintainer
# ----------
MAINTAINER Ivan Lopez

# Environment variables required for this build (do NOT change)
# -------------------------------------------------------------
ENV JAVA_RPM jdk-7u80-linux-x64.rpm
ENV JAVA_HOME /usr/java/default
ENV CONFIG_JVM_ARGS -Djava.security.egd=file:/dev/./urandom

# SETUP FILESYSTEM AND ORACLE USER
# ------------------------------------------------------------
RUN mkdir /home/oracle && chmod a+xr /home/oracle && \
    useradd -b /home/oracle -m -s /bin/bash oracle

# Copy packages
COPY $JAVA_RPM /home/oracle

# Install and configure Oracle JDK 7u75
# -------------------------------------
RUN rpm -i /home/oracle/$JAVA_RPM && \
    rm /home/oracle/$JAVA_RPM

# Unzip SOA Suite installer
WORKDIR /home/oracle

RUN chown oracle:oracle -R /home/oracle

WORKDIR /home/oracle
# Define default command to start bash.
CMD ["bash"]
