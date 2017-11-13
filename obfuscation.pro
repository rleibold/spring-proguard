#
# ProGuard 3.2 Obfuscation script.
#

-injars target/SpringBootRunner.jar
-outjars target/SpringBoot_obs.jar

-dontnote
-dontwarn
#-ignorewarnings
-dontoptimize
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontshrink
#-dontobfuscate #!!!! This renders Proguard uesless, but only seems to work this way..
-keepdirectories
-keepparameternames

-printseeds

-adaptresourcefilenames **.properties
-adaptresourcefilecontents **.properties,META-INF/MANIFEST.MF

# Keep - Applications. Keep all application classes that have a main method.
-keepclasseswithmembers public class * {
    public static void main(java.lang.String[]);
}

-keepattributes Exceptions,InnerClasses,Signature,Deprecated,SourceFile,LineNumberTable,LocalVariable*Table,*Annotation*,Synthetic,EnclosingMethod

-keepclasseswithmembers class com.rleibold.springbootpg.** { *; }
-keep interface com.leibold.springbootpg.** { *; }

# Logging
-keep class org.slf4j.** { *; }
-keep interface org.slf4j.** { *; }

-keep class org.springframework.** { *; }
-keep interface org.springframework.** { *; }

                                
-keepclassmembers class * {
  @org.springframework.beans.factory.annotation.Autowired *;
  @org.springframework.beans.factory.annotation.Qualifier *;
  @org.springframework.beans.factory.annotation.Value *;
  @org.springframework.beans.factory.annotation.Required *;
  @org.springframework.context.annotation.Bean *;
  @org.springframework.context.annotation.Primary *;
  @org.springframework.boot.context.properties.ConfigurationProperties *;
  @org.springframework.boot.context.properties.EnableConfigurationProperties *;
  @javax.inject.Inject *;
  @javax.annotation.PostConstruct *;
  @javax.annotation.PreDestroy *;
}

-keepclassmembers class * {
 @org.springframework.beans.factory.annotation.Autowired <fields>;
 @org.springframework.beans.factory.annotation.Autowired <methods>;
 @org.springframework.security.access.prepost.PreAuthorize <methods>;
}

-keep @org.springframework.stereotype.Service class *
-keep @org.springframework.stereotype.Controller class *
-keep @org.springframework.stereotype.Component class *
-keep @org.springframework.stereotype.Repository class *
-keep @org.springframework.cache.annotation.EnableCaching class *
-keep @org.springframework.context.annotation.Configuration class *
-keep @org.springframework.boot.context.properties.ConfigurationProperties class *
-keep @org.springframework.boot.autoconfigure.SpringBootApplication class *

-keepclassmembernames class * {
  java.lang.Class class$(java.lang.String);
  java.lang.Class class$(java.lang.String, boolean);
}

-keepclassmembers enum * {
  public static **[] values();
  public static ** valueOf(java.lang.String);
  public static ** fromValue(java.lang.String);
}

-keepnames class * implements java.io.Serializable
-keepclassmembernames public class com.test.blah.config.liquibase.AsyncSpringLiquibase

-keepclassmembers class * implements java.io.Serializable {
  static final long serialVersionUID;
  private static final java.io.ObjectStreamField[] serialPersistentFields;
  !static !transient <fields>;
  !private <fields>;
  !private <methods>;
  private void writeObject(java.io.ObjectOutputStream);
  private void readObject(java.io.ObjectInputStream);
  java.lang.Object writeReplace();
  java.lang.Object readResolve();
}
