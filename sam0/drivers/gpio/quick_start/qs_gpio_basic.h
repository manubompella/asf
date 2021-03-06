/**
 * \file
 *
 * \brief SAM GPIO Driver Quick Start for SAMB11
 *
 * Copyright (C) 2015 Atmel Corporation. All rights reserved.
 *
 * \asf_license_start
 *
 * \page License
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * 3. The name of Atmel may not be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * 4. This software may only be redistributed and used in connection with an
 *    Atmel microcontroller product.
 *
 * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
 * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * \asf_license_stop
 *
 */
/*
 * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
 */

/**
 * \page asfdoc_samb_gpio_basic_use_case Quick Start Guide for GPIO - Basic
 *
 * In this use case, the GPIO module is configured for:
 *  \li One pin in input mode, with pull-up enabled
 *  \li One pin in output mode
 *
 * This use case sets up the GPIO to read the current state of a GPIO pin set as
 * an input, and mirrors the opposite logical state on a pin configured as an
 * output.
 *
 * \section asfdoc_samb_gpio_basic_use_case_setup Setup
 *
 * \subsection asfdoc_samb_gpio_basic_use_case_setup_prereq Prerequisites
 * There are no special setup requirements for this use-case.
 *
 * \subsection asfdoc_samb_gpio_basic_use_case_setup_code Code
 * Copy-paste the following setup code to your user application:
 * \snippet qs_gpio_basic.c setup
 *
 * Add to user application initialization (typically the start of \c main()):
 * \snippet qs_gpio_basic.c setup_init
 *
 * \subsection asfdoc_samb_gpio_basic_use_case_setup_flow Workflow
 * -# Create a GPIO module pin configuration struct, which can be filled out to
 *    adjust the configuration of a single gpio pin.
 *    \snippet qs_gpio_basic.c setup_1
 * -# Initialize the pin configuration struct with the module's default values.
 *    \snippet qs_gpio_basic.c setup_2
 *    \note This should always be performed before using the configuration
 *          struct to ensure that all values are initialized to known default
 *          settings.
 *
 * -# Adjust the configuration struct to request an input pin.
 *    \snippet qs_gpio_basic.c setup_3
 * -# Configure push button pin with the initialized pin configuration struct, to enable
 *    the input sampler on the pin.
 *    \snippet qs_gpio_basic.c setup_4
 * -# Adjust the configuration struct to request an output pin.
 *    \snippet qs_gpio_basic.c setup_5
 *    \note The existing configuration struct may be re-used, as long as any
 *          values that have been altered from the default settings are taken
 *          into account by the user application.
 *
 * -# Configure LED pin with the initialized pin configuration struct, to enable
 *    the output driver on the pin.
 *    \snippet qs_gpio_basic.c setup_6
 *
 * \section asfdoc_samb_gpio_basic_use_case_use_main Use Case
 *
 * \subsection asfdoc_samb_gpio_basic_use_case_code Code
 * Copy-paste the following code to your user application:
 * \snippet qs_gpio_basic.c main
 *
 * \subsection asfdoc_samb_gpio_basic_use_case_flow Workflow
 * -# Read in the current input sampler state of push button pin, which has been
 *    configured as an input in the use-case setup code.
 *    \snippet qs_gpio_basic.c main_1
 * -# Write the inverted pin level state to LED pin, which has been configured as
 *    an output in the use-case setup code.
 *    \snippet qs_gpio_basic.c main_2
 */

