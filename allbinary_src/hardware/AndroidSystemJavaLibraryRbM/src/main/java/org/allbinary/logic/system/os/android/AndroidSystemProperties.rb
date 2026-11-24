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
# package org.allbinary.logic.system.os.android


module ::Org; module Allbinary; module Logic; module System; module Os; module Android

class AndroidSystemProperties
    attr_accessor :commonStrings

    def jfields_org_allbinary_logic_system_os_android_AndroidSystemProperties
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end
    

    def self.getInstance()
        return AndroidSystemProperties::SINGLETON
    end
    

    def initialize(context)
        jfields_org_allbinary_logic_system_os_android_AndroidSystemProperties
    end
    

    def getDeviceId()
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    

    def getDeviceSoftwareVersion()
        return @commonStrings.DISABLE
    end
    

    def getLine1Number()
        return @commonStrings.DISABLE
    end
    

    def getNetworkCountryIso()
        return @commonStrings.DISABLE
    end
    

    def getNetworkOperator()
        return @commonStrings.DISABLE
    end
    

    def getNetworkOperatorName()
        return @commonStrings.DISABLE
    end
    

    def getSimCountryIso()
        return @commonStrings.DISABLE
    end
    

    def getSimOperator()
        return @commonStrings.DISABLE
    end
    

    def getSimOperatorName()
        return @commonStrings.DISABLE
    end
    

    def getSimSerialNumber()
        return @commonStrings.DISABLE
    end
    

    def getSubscriberId()
        return @commonStrings.DISABLE
    end
    

    def getVoiceMailAlphaTag()
        return @commonStrings.DISABLE
    end
    

    def getVoiceMailNumber()
        return @commonStrings.DISABLE
    end
    

    def getNetworkType()
        return -1
    end
    

    def getPhoneType()
        return -1
    end
    

    def getBoard()
        return ::Android::Os::Build::BOARD
    end
    

    def getBrand()
        return ::Android::Os::Build::BRAND
    end
    

    def getDevice()
        return ::Android::Os::Build::DEVICE
    end
    

    def getFingerprint()
        return ::Android::Os::Build::FINGERPRINT
    end
    

    def getHost()
        return ::Android::Os::Build::HOST
    end
    

    def getId()
        return ::Android::Os::Build::ID
    end
    

    def getModel()
        return ::Android::Os::Build::MODEL
    end
    

    def getProduct()
        return ::Android::Os::Build::PRODUCT
    end
    

    def getTags()
        return ::Android::Os::Build::TAGS
    end
    

    def getTime()
        return ::Android::Os::Build::TIME
    end
    

    def getType()
        return ::Android::Os::Build::TYPE
    end
    

    def getUser()
        return ::Android::Os::Build::USER
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, AndroidSystemProperties.new(::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance().getContext()))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AndroidSystemProperties"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Android; module Content; autoload :Context, "android/content/Context" unless const_defined?(:Context, false); end; end
module ::Android; module Os; autoload :Build, "android/os/Build" unless const_defined?(:Build, false); end; end
module ::Org; module Allbinary; module DataPackage; module Resource; autoload :ResourceUtil, "org/allbinary/data/resource/ResourceUtil" unless const_defined?(:ResourceUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    AndroidSystemProperties.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

