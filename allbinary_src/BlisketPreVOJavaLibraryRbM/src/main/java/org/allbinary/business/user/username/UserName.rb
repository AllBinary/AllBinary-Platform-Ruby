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
# package org.allbinary.business.user.username


class UserName
    attr_accessor :logUtil, :userName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @userName = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def self.getInstance()
        return UserName.instance
    end
    

    def constructor0()
        initialize_fields
    end
    

    def constructor1(hashMap)
        initialize_fields
        @userName = hashMap.get(UserData::USERNAME)
    end
    

    def isValid()
        begin
            return self.isValid(@userName)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to validate form", self, "isUserNameValid()", e)
            end
            return false
        end
    end
    

    def get()
        return @userName
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def isValid(aUserName)
        commonStrings = CommonStrings.getInstance()
        begin
            booleanFactory = BooleanFactory.getInstance()
            valid = booleanFactory.TRUE
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VALIDATION)
                @logUtil.putF("UserName: " + aUserName, self, commonStrings.IS_VALID)
            end
            if !StringValidationUtil.getInstance().isValidRequired(aUserName, 5, UserData::MAXLEN)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VALIDATION)
                    @logUtil.putF("UserName is invalid", self, commonStrings.IS_VALID)
                end
                valid = booleanFactory.FALSE
            end
            return valid
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to validate form", self, commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def self.getValidationInfo(aUserName)
        if !StringValidationUtil.getInstance().isValidRequired(aUserName, 5, UserData::MAXLEN)
            return "Please enter a User Name with more than 5 characters.<br/>"
        end
        return StringUtil.getInstance().EMPTY_STRING
    end

    def self.instance()
        UserName.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        UserName.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = UserName.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UserName"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :UserData, "org/allbinary/business/user/UserData"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    UserName.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

