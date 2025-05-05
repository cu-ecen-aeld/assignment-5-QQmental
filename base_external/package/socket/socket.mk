
##############################################################
#
# AESD-SOCKET
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_SOCKET_VERSION = 'a6130dcfc8113d3c59d2fda513f7959f2b9143e6'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_SOCKET_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-QQmental.git'
AESD_SOCKET_SITE_METHOD = git
AESD_SOCKET_GIT_SUBMODULES = YES

define AESD_SOCKET_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_SOCKET_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin/aesdsocket
	$(INSTALL) -D -m 0755 $(@D)/server/aesdsocket-start-stop $(TARGET_DIR)/etc/init.d/S88aesdsocket
endef

$(eval $(generic-package))
