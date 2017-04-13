config-gradle-default() {
    echo "\
    org.gradle.daemon=true
    " > $GRADLE_HOME/gradle.properties
}

config-gradle-nordstrom() {
    echo "\
    org.gradle.daemon=true
    systemProp.https.proxyHost=${NORD_GRADLE_HTTPS_PROXYHOST}
    systemProp.https.proxyPort=${NORD_GRADLE_HTTPS_PROXYPORT}
    systemProp.https.nonProxyHosts=${NORD_GRADLE_HTTPS_NONPROXYHOSTS}
    systemProp.http.proxyHost=${NORD_GRADLE_HTTP_PROXYHOST}
    systemProp.http.proxyPort=${NORD_GRADLE_HTTP_PROXYPORT}
    systemProp.http.nonProxyHosts=${NORD_GRADLE_HTTP_NONPROXYHOSTS}
    " > $GRADLE_HOME/gradle.properties
}
