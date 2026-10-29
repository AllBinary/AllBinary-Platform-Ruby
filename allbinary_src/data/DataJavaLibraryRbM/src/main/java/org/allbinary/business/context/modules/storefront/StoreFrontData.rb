#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.business.context.modules.storefront


class StoreFrontData
    attr_accessor :CANCEL, :SELECT, :INSTALL, :INSTALL_COMPLETE, :NAME, :CURRENTHOSTNAME, :CURRENTHOSTNAMEPATH, :CURRENTHOMEHOSTNAME, :CURRENTHOMEHOSTNAMEPATH, :HOMEHOSTNAME, :HOMEHOSTNAMEPATH, :HOSTNAME, :HOSTNAMEPATH, :TESTHOMEHOSTNAME, :TESTHOMEHOSTNAMEPATH, :TESTHOSTNAME, :TESTHOSTNAMEPATH, :IMAGEPATH, :STATICPATH, :CATEGORYPATH, :INVENTORYCONTROL, :CONFIGURATION, :SUBSTORES, :TAGLOCATION, :PACKAGELOCATION, :FTP, :FTPPATH, :FTPUSERNAME, :FTPPASSWORD, :TESTFTP, :TESTFTPPATH, :TESTFTPUSERNAME, :TESTFTPPASSWORD, :SELECTSTORENAME

    def initialize_fields
        @CANCEL = "Cancel Store Front"
        @SELECT = "Select Store Front"
        @INSTALL = "Install Store Front"
        @INSTALL_COMPLETE = "Install Store Front Complete"
        @NAME = "STOREFRONT_NAME"
        @CURRENTHOSTNAME = "STOREFRONT_CURRENTHOSTNAME"
        @CURRENTHOSTNAMEPATH = "STOREFRONT_CURRENTHOSTNAMEPATH"
        @CURRENTHOMEHOSTNAME = "STOREFRONT_CURRENTHOMEHOSTNAME"
        @CURRENTHOMEHOSTNAMEPATH = "STOREFRONT_CURRENTHOMEHOSTNAMEPATH"
        @HOMEHOSTNAME = "STOREFRONT_HOMEHOSTNAME"
        @HOMEHOSTNAMEPATH = "STOREFRONT_HOMEHOSTNAMEPATH"
        @HOSTNAME = "STOREFRONT_HOSTNAME"
        @HOSTNAMEPATH = "STOREFRONT_HOSTNAMEPATH"
        @TESTHOMEHOSTNAME = "STOREFRONT_TESTHOMEHOSTNAME"
        @TESTHOMEHOSTNAMEPATH = "STOREFRONT_TESTHOMEHOSTNAMEPATH"
        @TESTHOSTNAME = "STOREFRONT_TESTHOSTNAME"
        @TESTHOSTNAMEPATH = "STOREFRONT_TESTHOSTNAMEPATH"
        @IMAGEPATH = "STOREFRONT_IMAGEPATH"
        @STATICPATH = "STOREFRONT_STATICPATH"
        @CATEGORYPATH = "STOREFRONT_CATEGORYPATH"
        @INVENTORYCONTROL = "STOREFRONT_INVENTORYCONTROL"
        @CONFIGURATION = "STOREFRONT_CONFIGURATION"
        @SUBSTORES = "STOREFRONT_SUBSTORES"
        @TAGLOCATION = "STOREFRONT_TAGLOCATION"
        @PACKAGELOCATION = "STOREFRONT_PACKAGELOCATION"
        @FTP = "STOREFRONT_FTP"
        @FTPPATH = "STOREFRONT_FTPPATH"
        @FTPUSERNAME = "STOREFRONT_FTPUSERNAME"
        @FTPPASSWORD = "STOREFRONT_FTPPASSWORD"
        @TESTFTP = "STOREFRONT_TESTFTP"
        @TESTFTPPATH = "STOREFRONT_TESTFTPPATH"
        @TESTFTPUSERNAME = "STOREFRONT_TESTFTPUSERNAME"
        @TESTFTPPASSWORD = "STOREFRONT_TESTFTPPASSWORD"
        @SELECTSTORENAME = "STOREFRONT_SELECTSTORENAME"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return StoreFrontData.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class StoreFrontData
    @@instance = StoreFrontData.new()
end

