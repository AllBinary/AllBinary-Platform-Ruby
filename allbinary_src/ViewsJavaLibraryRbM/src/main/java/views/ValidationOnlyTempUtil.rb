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
# package views


#Replace when validation node is added
class ValidationOnlyTempUtil
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return ValidationOnlyTempUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def view(validationComponentInterface)
        commonStrings = CommonStrings.getInstance()
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("View Name: " + validationComponentInterface.getTransformInfoInterface().getName(), self, "view()")
            end
            return StringUtil.getInstance().EMPTY_STRING
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end

    def self.instance()
        ValidationOnlyTempUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ValidationOnlyTempUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ValidationOnlyTempUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ValidationOnlyTempUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :ValidationComponentInterface, "org/allbinary/logic/control/validate/ValidationComponentInterface"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    ValidationOnlyTempUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

