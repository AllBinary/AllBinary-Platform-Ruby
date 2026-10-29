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


class AndroidSystemProperties
    attr_accessor :commonStrings

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
    end
    

    def self.getInstance()
        return AndroidSystemProperties::SINGLETON
    end
    

    def initialize(context)
        initialize_fields
    end
    

    def getDeviceId()
        return StringUtil.getInstance().EMPTY_STRING
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
        return Build::BOARD
    end
    

    def getBrand()
        return Build::BRAND
    end
    

    def getDevice()
        return Build::DEVICE
    end
    

    def getFingerprint()
        return Build::FINGERPRINT
    end
    

    def getHost()
        return Build::HOST
    end
    

    def getId()
        return Build::ID
    end
    

    def getModel()
        return Build::MODEL
    end
    

    def getProduct()
        return Build::PRODUCT
    end
    

    def getTags()
        return Build::TAGS
    end
    

    def getTime()
        return Build::TIME
    end
    

    def getType()
        return Build::TYPE
    end
    

    def getUser()
        return Build::USER
    end
end

require "android/content/Context"
require "android/os/Build"
require "org/allbinary/data/resource/ResourceUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"

class AndroidSystemProperties
    SINGLETON = AndroidSystemProperties.new(ResourceUtil.getInstance().getContext())
end

