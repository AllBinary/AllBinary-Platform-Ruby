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
# package org.allbinary.business.user.password

# require "java/util/Random"

class Password
    attr_accessor :logUtil, :password

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @password = nil
    end
    

    def initialize(password)
        initialize_fields
        @password = password
    end
    

    def set(value)
        @password = value
    end
    

    def get()
        return @password
    end
    

    def isValid()
        commonStrings = CommonStrings.getInstance()
        begin
            valid = true
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VALIDATION)
                @logUtil.putF("Password: " + @password, self, commonStrings.IS_VALID)
            end
            if !StringValidationUtil.getInstance().isValidRequired(@password, 6, UserData::MAXLEN)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VALIDATION)
                    @logUtil.putF("Password is invalid", self, commonStrings.IS_VALID)
                end
                valid = false
            end
            return valid
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VALIDATIONERROR)
                @logUtil.put("Failed to validate form", "Password", commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def getValidationInfo()
        if !StringValidationUtil.getInstance().isValidRequired(@password, 6, UserData::MAXLEN)
            return "Please enter a Password with more than 6 characters.<br />"
        end
        stringUtil = StringUtil.getInstance()
        return stringUtil.EMPTY_STRING
    end
    

    def toVector(secret)
        @password = StringUtil.getInstance().getNonNull(@password)
        random = Random.new().nextInt(SuperCrypt::KEYMAX)
        vector = BasicArrayListD.new()
        vector.add(random.to_s)
        vector.add(secret)
        vector.add(SuperCrypt.new(random).encrypt(@password))
        return vector
    end
    

    def toHashMap(secret)
        @password = StringUtil.getInstance().getNonNull(@password)
        values = StdUtil.getInstance().createHashMap()
        random = Random.new().nextInt(SuperCrypt::KEYMAX)
        values.put(EntryData.getInstance().ENCRYPTION, random.to_s)
        values.put(UserData::SECRET, secret)
        values.put(UserData::PASSWORD, SuperCrypt.new(random).encrypt(@password))
        return values
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/user/UserData"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/crypt/SuperCrypt"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/string/CommonStrings"

