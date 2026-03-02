# Install script for directory: /home/bota/Drive/oran_project/sysrepo

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/share/yang/modules/sysrepo/ietf-datastores@2018-02-14.yang;/usr/share/yang/modules/sysrepo/ietf-factory-default@2020-08-31.yang;/usr/share/yang/modules/sysrepo/ietf-netconf-acm@2018-02-14.yang;/usr/share/yang/modules/sysrepo/ietf-netconf-notifications@2012-02-06.yang;/usr/share/yang/modules/sysrepo/ietf-netconf-with-defaults@2011-06-01.yang;/usr/share/yang/modules/sysrepo/ietf-netconf@2013-09-29.yang;/usr/share/yang/modules/sysrepo/ietf-origin@2018-02-14.yang;/usr/share/yang/modules/sysrepo/ietf-yang-library@2016-06-21.yang;/usr/share/yang/modules/sysrepo/ietf-yang-library@2019-01-04.yang;/usr/share/yang/modules/sysrepo/sysrepo-factory-default@2025-03-18.yang;/usr/share/yang/modules/sysrepo/sysrepo-monitoring@2023-08-11.yang;/usr/share/yang/modules/sysrepo/sysrepo-notifications@2025-01-10.yang;/usr/share/yang/modules/sysrepo/sysrepo-plugind@2022-08-26.yang;/usr/share/yang/modules/sysrepo/sysrepo@2024-10-25.yang")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/share/yang/modules/sysrepo" TYPE FILE FILES
    "/home/bota/Drive/oran_project/sysrepo/modules/ietf-datastores@2018-02-14.yang"
    "/home/bota/Drive/oran_project/sysrepo/modules/ietf-factory-default@2020-08-31.yang"
    "/home/bota/Drive/oran_project/sysrepo/modules/ietf-netconf-acm@2018-02-14.yang"
    "/home/bota/Drive/oran_project/sysrepo/modules/ietf-netconf-notifications@2012-02-06.yang"
    "/home/bota/Drive/oran_project/sysrepo/modules/ietf-netconf-with-defaults@2011-06-01.yang"
    "/home/bota/Drive/oran_project/sysrepo/modules/ietf-netconf@2013-09-29.yang"
    "/home/bota/Drive/oran_project/sysrepo/modules/ietf-origin@2018-02-14.yang"
    "/home/bota/Drive/oran_project/sysrepo/modules/ietf-yang-library@2016-06-21.yang"
    "/home/bota/Drive/oran_project/sysrepo/modules/ietf-yang-library@2019-01-04.yang"
    "/home/bota/Drive/oran_project/sysrepo/modules/sysrepo-factory-default@2025-03-18.yang"
    "/home/bota/Drive/oran_project/sysrepo/modules/sysrepo-monitoring@2023-08-11.yang"
    "/home/bota/Drive/oran_project/sysrepo/modules/sysrepo-notifications@2025-01-10.yang"
    "/home/bota/Drive/oran_project/sysrepo/modules/sysrepo-plugind@2022-08-26.yang"
    "/home/bota/Drive/oran_project/sysrepo/modules/sysrepo@2024-10-25.yang"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/share/yang/modules/sysrepo/iana-if-type@2014-05-08.yang;/usr/share/yang/modules/sysrepo/ietf-interfaces@2018-02-20.yang;/usr/share/yang/modules/sysrepo/ietf-ip@2018-02-22.yang;/usr/share/yang/modules/sysrepo/ietf-network-instance@2019-01-21.yang;/usr/share/yang/modules/sysrepo/ietf-restconf@2017-01-26.yang;/usr/share/yang/modules/sysrepo/ietf-subscribed-notifications@2019-09-09.yang;/usr/share/yang/modules/sysrepo/ietf-yang-patch@2017-02-22.yang;/usr/share/yang/modules/sysrepo/ietf-yang-push@2019-09-09.yang")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/share/yang/modules/sysrepo" TYPE FILE FILES
    "/home/bota/Drive/oran_project/sysrepo/modules/subscribed_notifications/iana-if-type@2014-05-08.yang"
    "/home/bota/Drive/oran_project/sysrepo/modules/subscribed_notifications/ietf-interfaces@2018-02-20.yang"
    "/home/bota/Drive/oran_project/sysrepo/modules/subscribed_notifications/ietf-ip@2018-02-22.yang"
    "/home/bota/Drive/oran_project/sysrepo/modules/subscribed_notifications/ietf-network-instance@2019-01-21.yang"
    "/home/bota/Drive/oran_project/sysrepo/modules/subscribed_notifications/ietf-restconf@2017-01-26.yang"
    "/home/bota/Drive/oran_project/sysrepo/modules/subscribed_notifications/ietf-subscribed-notifications@2019-09-09.yang"
    "/home/bota/Drive/oran_project/sysrepo/modules/subscribed_notifications/ietf-yang-patch@2017-02-22.yang"
    "/home/bota/Drive/oran_project/sysrepo/modules/subscribed_notifications/ietf-yang-push@2019-09-09.yang"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/libsysrepo.so.7.33.5"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/libsysrepo.so.7"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu" TYPE SHARED_LIBRARY FILES
    "/home/bota/Drive/oran_project/sysrepo/build/libsysrepo.so.7.33.5"
    "/home/bota/Drive/oran_project/sysrepo/build/libsysrepo.so.7"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/libsysrepo.so.7.33.5"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/libsysrepo.so.7"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/usr/local/lib:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu" TYPE SHARED_LIBRARY FILES "/home/bota/Drive/oran_project/sysrepo/build/libsysrepo.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/bota/Drive/oran_project/sysrepo/build/CMakeFiles/sysrepo.dir/install-cxx-module-bmi-Debug.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/home/bota/Drive/oran_project/sysrepo/build/include/sysrepo.h"
    "/home/bota/Drive/oran_project/sysrepo/build/include/sysrepo_types.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/bota/Drive/oran_project/sysrepo/build/include/sysrepo")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/pkgconfig" TYPE FILE FILES "/home/bota/Drive/oran_project/sysrepo/build/sysrepo.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/bota/Drive/oran_project/sysrepo/build/repository/")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/bota/Drive/oran_project/sysrepo/build/repository" TYPE DIRECTORY DIR_PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_WRITE GROUP_EXECUTE WORLD_READ WORLD_WRITE WORLD_EXECUTE FILES "")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sysrepoctl" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sysrepoctl")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sysrepoctl"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/bota/Drive/oran_project/sysrepo/build/sysrepoctl")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sysrepoctl" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sysrepoctl")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sysrepoctl"
         OLD_RPATH "/home/bota/Drive/oran_project/sysrepo/build:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sysrepoctl")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/bota/Drive/oran_project/sysrepo/build/CMakeFiles/sysrepoctl.dir/install-cxx-module-bmi-Debug.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE FILES "/home/bota/Drive/oran_project/sysrepo/src/executables/sysrepoctl.1")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sysrepocfg" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sysrepocfg")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sysrepocfg"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/bota/Drive/oran_project/sysrepo/build/sysrepocfg")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sysrepocfg" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sysrepocfg")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sysrepocfg"
         OLD_RPATH "/home/bota/Drive/oran_project/sysrepo/build:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sysrepocfg")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/bota/Drive/oran_project/sysrepo/build/CMakeFiles/sysrepocfg.dir/install-cxx-module-bmi-Debug.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE FILES "/home/bota/Drive/oran_project/sysrepo/src/executables/sysrepocfg.1")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sysrepo-plugind" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sysrepo-plugind")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sysrepo-plugind"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/bota/Drive/oran_project/sysrepo/build/sysrepo-plugind")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sysrepo-plugind" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sysrepo-plugind")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sysrepo-plugind"
         OLD_RPATH "/home/bota/Drive/oran_project/sysrepo/build:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sysrepo-plugind")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/bota/Drive/oran_project/sysrepo/build/CMakeFiles/sysrepo-plugind.dir/install-cxx-module-bmi-Debug.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man8" TYPE FILE FILES "/home/bota/Drive/oran_project/sysrepo/src/executables/sysrepo-plugind.8")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/lib/x86_64-linux-gnu/sysrepo-plugind/plugins/")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/lib/x86_64-linux-gnu/sysrepo-plugind/plugins" TYPE DIRECTORY FILES "")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/lib/x86_64-linux-gnu/sysrepo/plugins/")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/lib/x86_64-linux-gnu/sysrepo/plugins" TYPE DIRECTORY FILES "")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/bota/Drive/oran_project/sysrepo/build/examples/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/bota/Drive/oran_project/sysrepo/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
