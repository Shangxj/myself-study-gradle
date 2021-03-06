@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  gradleSpringBootDemo startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and GRADLE_SPRING_BOOT_DEMO_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\gradleSpringBootDemo-0.0.1-SNAPSHOT.jar;%APP_HOME%\lib\spring-boot-starter-web-2.0.0.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\spring-boot-starter-jetty-2.0.0.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\spring-boot-starter-actuator-2.0.0.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\mysql-connector-java-6.0.4.jar;%APP_HOME%\lib\mybatis-spring-boot-starter-1.2.0.jar;%APP_HOME%\lib\jstl-1.2.jar;%APP_HOME%\lib\javax.servlet-api-3.1.0.jar;%APP_HOME%\lib\spring-boot-starter-2.0.0.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\hibernate-validator-5.3.4.Final.jar;%APP_HOME%\lib\jackson-databind-2.8.5.jar;%APP_HOME%\lib\spring-web-5.0.0.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\spring-webmvc-5.0.0.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\jetty-servlets-9.4.0.v20161208.jar;%APP_HOME%\lib\jetty-webapp-9.4.0.v20161208.jar;%APP_HOME%\lib\websocket-server-9.4.0.v20161208.jar;%APP_HOME%\lib\javax-websocket-server-impl-9.4.0.v20161208.jar;%APP_HOME%\lib\apache-el-8.0.33.jar;%APP_HOME%\lib\spring-boot-actuator-2.0.0.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\spring-boot-starter-jdbc-2.0.0.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\mybatis-spring-boot-autoconfigure-1.2.0.jar;%APP_HOME%\lib\mybatis-3.4.2.jar;%APP_HOME%\lib\mybatis-spring-1.3.1.jar;%APP_HOME%\lib\spring-boot-2.0.0.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\spring-boot-autoconfigure-2.0.0.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\spring-boot-starter-logging-2.0.0.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\spring-core-5.0.0.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\snakeyaml-1.17.jar;%APP_HOME%\lib\validation-api-1.1.0.Final.jar;%APP_HOME%\lib\jboss-logging-3.3.0.Final.jar;%APP_HOME%\lib\classmate-1.3.3.jar;%APP_HOME%\lib\jackson-annotations-2.8.5.jar;%APP_HOME%\lib\jackson-core-2.8.5.jar;%APP_HOME%\lib\spring-aop-5.0.0.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\spring-beans-5.0.0.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\spring-context-5.0.0.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\spring-expression-5.0.0.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\jetty-continuation-9.4.0.v20161208.jar;%APP_HOME%\lib\jetty-http-9.4.0.v20161208.jar;%APP_HOME%\lib\jetty-util-9.4.0.v20161208.jar;%APP_HOME%\lib\jetty-io-9.4.0.v20161208.jar;%APP_HOME%\lib\jetty-xml-9.4.0.v20161208.jar;%APP_HOME%\lib\jetty-servlet-9.4.0.v20161208.jar;%APP_HOME%\lib\websocket-common-9.4.0.v20161208.jar;%APP_HOME%\lib\websocket-client-9.4.0.v20161208.jar;%APP_HOME%\lib\websocket-servlet-9.4.0.v20161208.jar;%APP_HOME%\lib\jetty-annotations-9.4.0.v20161208.jar;%APP_HOME%\lib\javax-websocket-client-impl-9.4.0.v20161208.jar;%APP_HOME%\lib\javax.websocket-api-1.0.jar;%APP_HOME%\lib\tomcat-jdbc-8.5.6.jar;%APP_HOME%\lib\spring-jdbc-5.0.0.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\logback-classic-1.1.8.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.22.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.22.jar;%APP_HOME%\lib\log4j-over-slf4j-1.7.22.jar;%APP_HOME%\lib\jetty-security-9.4.0.v20161208.jar;%APP_HOME%\lib\websocket-api-9.4.0.v20161208.jar;%APP_HOME%\lib\jetty-client-9.4.0.v20161208.jar;%APP_HOME%\lib\jetty-plus-9.4.0.v20161208.jar;%APP_HOME%\lib\javax.annotation-api-1.2.jar;%APP_HOME%\lib\asm-5.1.jar;%APP_HOME%\lib\asm-commons-5.1.jar;%APP_HOME%\lib\tomcat-juli-8.5.6.jar;%APP_HOME%\lib\spring-tx-5.0.0.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\logback-core-1.1.8.jar;%APP_HOME%\lib\slf4j-api-1.7.22.jar;%APP_HOME%\lib\jetty-server-9.4.0.v20161208.jar;%APP_HOME%\lib\asm-tree-5.1.jar

@rem Execute gradleSpringBootDemo
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLE_SPRING_BOOT_DEMO_OPTS%  -classpath "%CLASSPATH%" com.synjones.SpringBootApplication %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable GRADLE_SPRING_BOOT_DEMO_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%GRADLE_SPRING_BOOT_DEMO_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
