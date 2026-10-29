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
# package org.allbinary.logic.visual.transform.info


class TransformInfoObjectFactory
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return TransformInfoObjectFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(abeClientInformation, transformInfoInterface)
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                commonStrings = CommonStrings.getInstance()
                @logUtil.putF("Creating View: " + transformInfoInterface.getName(), self, commonStrings.GET_INSTANCE)
            end
            params = Array.new(1, nil)
            classes = Array.new(1, nil)
            classes[0] = TransformInfoInterface
            params[0] = transformInfoInterface
            anyType = AbeFactory.getInstance().getInstance(abeClientInformation, transformInfoInterface.getObjectFile(), classes, params)
            if anyType == nil
                if transformInfoInterface != nil
                    stringBuffer = StringMaker.new()
                    stringBuffer.append("\nNo Such View Name: ")
                    stringBuffer.append(transformInfoInterface.getName())
                    stringBuffer.append("\nNo Such View Object: ")
                    stringBuffer.append(transformInfoInterface.getObjectFile())
                    raise StandardError.new(stringBuffer.to_s)
                else
                    raise StandardError.new("No Such View Object since transformInfo is null")
                end
            end
            return anyType
        rescue LicensingException => e
            error = "Failed To Get Instance: "
            if transformInfoInterface != nil
                error = error + transformInfoInterface.getName()
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(error, self, commonStrings.GET_INSTANCE, e)
            end
            raise e
        rescue StandardError => e
            error = "Failed To Get Instance: "
            if transformInfoInterface != nil
                error = error + transformInfoInterface.getName()
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(error, self, commonStrings.GET_INSTANCE, e)
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
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/loader/AbeFactory"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/LicensingException"
require "org/allbinary/logic/visual/transform/TransformInterface"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"

class TransformInfoObjectFactory
    @@instance = TransformInfoObjectFactory.new()
end

