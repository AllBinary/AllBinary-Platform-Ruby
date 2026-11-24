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


module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront

class StoreFrontData
    attr_accessor :CANCEL, :SELECT, :INSTALL, :INSTALL_COMPLETE, :NAME, :CURRENTHOSTNAME, :CURRENTHOSTNAMEPATH, :CURRENTHOMEHOSTNAME, :CURRENTHOMEHOSTNAMEPATH, :HOMEHOSTNAME, :HOMEHOSTNAMEPATH, :HOSTNAME, :HOSTNAMEPATH, :TESTHOMEHOSTNAME, :TESTHOMEHOSTNAMEPATH, :TESTHOSTNAME, :TESTHOSTNAMEPATH, :IMAGEPATH, :STATICPATH, :CATEGORYPATH, :INVENTORYCONTROL, :CONFIGURATION, :SUBSTORES, :TAGLOCATION, :PACKAGELOCATION, :FTP, :FTPPATH, :FTPUSERNAME, :FTPPASSWORD, :TESTFTP, :TESTFTPPATH, :TESTFTPUSERNAME, :TESTFTPPASSWORD, :SELECTSTORENAME

    def jfields_org_allbinary_business_context_modules_storefront_StoreFrontData
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
        jfields_org_allbinary_business_context_modules_storefront_StoreFrontData
    end
    

    def self.getInstance()
        return StoreFrontData.instance
    end

    def self.instance()
        StoreFrontData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        StoreFrontData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = StoreFrontData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "StoreFrontData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    StoreFrontData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

