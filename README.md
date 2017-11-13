# spring-proguard
The purpose of this project is to get a Spring Boot project working with Proguard obfuscation.

<b>Compilation Instructions:</b>
- run mvn clean install command
- This generates 2 .jar files -> SpringBootRunner.jar (unobfuscated) and SpringBoot_obs.jar (obfuscated).
- Running .jar file: java -jar SpringBoot_obs.jar

<b>Current Issues:</b>
- Currently the application runs after obfuscation, but it does not pull default Spring values correctly and does not pull
the application.properties file correctly.  It runs logging in DEBUG mode.

<b>ToDo:</b>
- get application.properties file working correctly
- get correct logging level working correctly (problem with obfuscation)
- add Redis repository code and confirm it works correctly
