FROM jenkins/jenkins:lts

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
# ÎÖÅÉ ĞßÄÎÊ ÊĞÈÒÈ×ÍÈÉ:
ENV CASC_JENKINS_CONFIG="/usr/share/jenkins/ref/casc.yaml"

COPY jcasc/plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt

# ÏÅĞÅÂ²Ğ, ÙÎ ÒÓÒ ÒÀÊÈÉ ÑÀÌÈÉ ØËßÕ, ßÊ Ó ENV ÂÈÙÅ:
COPY jcasc/casc.yaml /usr/share/jenkins/ref/casc.yaml