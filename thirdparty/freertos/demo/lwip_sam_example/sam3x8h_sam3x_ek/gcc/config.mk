#
# Copyright (c) 2011 Atmel Corporation. All rights reserved.
#
# \asf_license_start
#
# \page License
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
#
# 3. The name of Atmel may not be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# 4. This software may only be redistributed and used in connection with an
#    Atmel microcontroller product.
#
# THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
# EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
# ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
# \asf_license_stop
#

# Path to top level ASF directory relative to this project directory.
PRJ_PATH = ../../../../../..

# Target CPU architecture: cortex-m3, cortex-m4
ARCH = cortex-m3

# Target part: none, sam3n4 or sam4l4aa
PART = sam3x8h

# Application target name. Given with suffix .a for library and .elf for a
# standalone application.
TARGET_FLASH = freertos_sam_lwip_dhcp_example_flash.elf
TARGET_SRAM = freertos_sam_lwip_dhcp_example_sram.elf

# List of C source files.
CSRCS = \
       common/services/clock/sam3x/sysclk.c               \
       common/services/serial/usart_serial.c              \
       common/utils/interrupt/interrupt_sam_nvic.c        \
       common/utils/stdio/read.c                          \
       common/utils/stdio/write.c                         \
       sam/boards/sam3x_ek/led.c                          \
       sam/components/ethernet_phy/dm9161a/ethernet_phy.c \
       sam/drivers/emac/emac.c                            \
       sam/drivers/pio/pio.c                              \
       sam/drivers/pio/pio_handler.c                      \
       sam/drivers/pmc/pmc.c                              \
       sam/drivers/pmc/sleep.c                            \
       sam/drivers/rstc/rstc.c                            \
       sam/drivers/tc/tc.c                                \
       sam/drivers/uart/uart.c                            \
       sam/drivers/usart/usart.c                          \
       sam/utils/cmsis/sam3x/source/templates/exceptions.c \
       sam/utils/cmsis/sam3x/source/templates/gcc/startup_sam3x.c \
       sam/utils/cmsis/sam3x/source/templates/system_sam3x.c \
       sam/utils/syscalls/gcc/syscalls.c                  \
       thirdparty/freertos/demo/common/minimal/flash.c    \
       thirdparty/freertos/demo/lwip_avr32_uc3_example/network/basictftp/BasicTFTP.c \
       thirdparty/freertos/demo/lwip_avr32_uc3_example/network/basicweb/BasicWEB.c \
       thirdparty/freertos/demo/lwip_sam_example/main.c   \
       thirdparty/freertos/demo/lwip_sam_example/network/ethernet.c \
       thirdparty/freertos/demo/lwip_sam_example/partest/ParTest.c \
       thirdparty/freertos/freertos-7.0.0/source/croutine.c \
       thirdparty/freertos/freertos-7.0.0/source/list.c   \
       thirdparty/freertos/freertos-7.0.0/source/portable/gcc/sam/port.c \
       thirdparty/freertos/freertos-7.0.0/source/portable/memmang/heap_3.c \
       thirdparty/freertos/freertos-7.0.0/source/queue.c  \
       thirdparty/freertos/freertos-7.0.0/source/tasks.c  \
       thirdparty/freertos/freertos-7.0.0/source/timers.c \
       thirdparty/lwip/lwip-1.4.0/src/api/api_lib.c       \
       thirdparty/lwip/lwip-1.4.0/src/api/api_msg.c       \
       thirdparty/lwip/lwip-1.4.0/src/api/err.c           \
       thirdparty/lwip/lwip-1.4.0/src/api/netbuf.c        \
       thirdparty/lwip/lwip-1.4.0/src/api/netdb.c         \
       thirdparty/lwip/lwip-1.4.0/src/api/netifapi.c      \
       thirdparty/lwip/lwip-1.4.0/src/api/sockets.c       \
       thirdparty/lwip/lwip-1.4.0/src/api/tcpip.c         \
       thirdparty/lwip/lwip-1.4.0/src/core/def.c          \
       thirdparty/lwip/lwip-1.4.0/src/core/dhcp.c         \
       thirdparty/lwip/lwip-1.4.0/src/core/dns.c          \
       thirdparty/lwip/lwip-1.4.0/src/core/init.c         \
       thirdparty/lwip/lwip-1.4.0/src/core/ipv4/autoip.c  \
       thirdparty/lwip/lwip-1.4.0/src/core/ipv4/icmp.c    \
       thirdparty/lwip/lwip-1.4.0/src/core/ipv4/igmp.c    \
       thirdparty/lwip/lwip-1.4.0/src/core/ipv4/inet.c    \
       thirdparty/lwip/lwip-1.4.0/src/core/ipv4/inet_chksum.c \
       thirdparty/lwip/lwip-1.4.0/src/core/ipv4/ip.c      \
       thirdparty/lwip/lwip-1.4.0/src/core/ipv4/ip_addr.c \
       thirdparty/lwip/lwip-1.4.0/src/core/ipv4/ip_frag.c \
       thirdparty/lwip/lwip-1.4.0/src/core/lwip_timers_140.c \
       thirdparty/lwip/lwip-1.4.0/src/core/mem.c          \
       thirdparty/lwip/lwip-1.4.0/src/core/memp.c         \
       thirdparty/lwip/lwip-1.4.0/src/core/netif.c        \
       thirdparty/lwip/lwip-1.4.0/src/core/pbuf.c         \
       thirdparty/lwip/lwip-1.4.0/src/core/raw.c          \
       thirdparty/lwip/lwip-1.4.0/src/core/stats.c        \
       thirdparty/lwip/lwip-1.4.0/src/core/sys.c          \
       thirdparty/lwip/lwip-1.4.0/src/core/tcp.c          \
       thirdparty/lwip/lwip-1.4.0/src/core/tcp_in.c       \
       thirdparty/lwip/lwip-1.4.0/src/core/tcp_out.c      \
       thirdparty/lwip/lwip-1.4.0/src/core/udp.c          \
       thirdparty/lwip/lwip-1.4.0/src/netif/etharp.c      \
       thirdparty/lwip/lwip-port-1.4.0/sam/netif/ethernetif.c \
       thirdparty/lwip/lwip-port-1.4.0/sam/sys_arch.c

# List of assembler source files.
ASSRCS = 

# List of include paths.
INC_PATH = \
       common/boards                                      \
       common/services/clock                              \
       common/services/gpio                               \
       common/services/ioport                             \
       common/services/serial                             \
       common/services/serial/sam_uart                    \
       common/utils                                       \
       common/utils/stdio/stdio_serial                    \
       sam/boards                                         \
       sam/boards/sam3x_ek                                \
       sam/components/ethernet_phy/dm9161a                \
       sam/drivers/emac                                   \
       sam/drivers/pio                                    \
       sam/drivers/pmc                                    \
       sam/drivers/rstc                                   \
       sam/drivers/tc                                     \
       sam/drivers/uart                                   \
       sam/drivers/usart                                  \
       sam/utils                                          \
       sam/utils/cmsis/sam3x/include                      \
       sam/utils/cmsis/sam3x/source/templates             \
       sam/utils/header_files                             \
       sam/utils/preprocessor                             \
       thirdparty/CMSIS/Include                           \
       thirdparty/CMSIS/Lib/GCC                           \
       thirdparty/freertos/demo/common/include            \
       thirdparty/freertos/demo/lwip_avr32_uc3_example/network/basictftp \
       thirdparty/freertos/demo/lwip_avr32_uc3_example/network/basicweb \
       thirdparty/freertos/demo/lwip_sam_example          \
       thirdparty/freertos/demo/lwip_sam_example/network  \
       thirdparty/freertos/demo/lwip_sam_example/sam3x8h_sam3x_ek \
       thirdparty/freertos/freertos-7.0.0/source/include  \
       thirdparty/freertos/freertos-7.0.0/source/portable/gcc/sam \
       thirdparty/lwip/lwip-1.4.0/src/include             \
       thirdparty/lwip/lwip-1.4.0/src/include/ipv4        \
       thirdparty/lwip/lwip-1.4.0/src/include/lwip        \
       thirdparty/lwip/lwip-port-1.4.0/sam/include \
       thirdparty/freertos/demo/lwip_sam_example/sam3x8h_sam3x_ek/gcc

# Additional search paths for libraries.
LIB_PATH =  \
       thirdparty/CMSIS/Lib/GCC                          

# List of libraries to use during linking.
LIBS =  \
       arm_cortexM3l_math                                 \
       m                                                 

# Path relative to top level directory pointing to a linker script.
LINKER_SCRIPT_FLASH = sam/utils/linker_scripts/sam3x/sam3x8/gcc/flash.ld
LINKER_SCRIPT_SRAM  = sam/utils/linker_scripts/sam3x/sam3x8/gcc/sram.ld

# Path relative to top level directory pointing to a linker script.
DEBUG_SCRIPT_FLASH = sam/boards/sam3x_ek/debug_scripts/gcc/sam3x_ek_flash.gdb
DEBUG_SCRIPT_SRAM  = sam/boards/sam3x_ek/debug_scripts/gcc/sam3x_ek_sram.gdb

# Project type parameter: all, sram or flash
PROJECT_TYPE        = flash

# Additional options for debugging. By default the common Makefile.in will
# add -g3.
DBGFLAGS = 

# Application optimization used during compilation and linking:
# -O0, -O1, -O2, -O3 or -Os
OPTIMIZATION = -O3

# Extra flags to use when archiving.
ARFLAGS = 

# Extra flags to use when assembling.
ASFLAGS = 

# Extra flags to use when compiling.
CFLAGS = 

# Extra flags to use when preprocessing.
#
# Preprocessor symbol definitions
#   To add a definition use the format "-D name[=definition]".
#   To cancel a definition use the format "-U name".
#
# The most relevant symbols to define for the preprocessor are:
#   BOARD      Target board in use, see boards/board.h for a list.
#   EXT_BOARD  Optional extension board in use, see boards/board.h for a list.
CPPFLAGS = \
       -D ARM_MATH_CM3=true                               \
       -D BOARD=SAM3X_EK                                  \
       -D FREERTOS_USED                                   \
       -D HTTP_USED=1                                     \
       -D TFTP_USED=1                                     \
       -D __SAM3X8H__                                     \
       -D printf=iprintf

# Extra flags to use when linking
LDFLAGS = \