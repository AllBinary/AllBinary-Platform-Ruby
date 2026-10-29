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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"

class ValidationOnlyTempUtil
    @@instance = ValidationOnlyTempUtil.new()
end

