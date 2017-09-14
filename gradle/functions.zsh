#!/bin/sh
#

config_gradle_default() {
	printf "org.gradle.daemon=true" > "$GRADLE_HOME/gradle.properties"
}
