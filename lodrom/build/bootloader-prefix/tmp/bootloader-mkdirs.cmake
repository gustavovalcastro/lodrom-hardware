# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/bootloader/subproject"
  "/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/bootloader"
  "/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/bootloader-prefix"
  "/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/bootloader-prefix/tmp"
  "/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/bootloader-prefix/src/bootloader-stamp"
  "/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/bootloader-prefix/src"
  "/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
