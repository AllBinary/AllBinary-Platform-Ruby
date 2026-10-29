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
# package org.allbinary.logic.visual.transform.generator


class TransformsGeneratorUtil
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return TransformsGeneratorUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def generateComponentsFromObjectConfig(abeClientInformation, transformInfoInterface, group)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Started Group: " + group, self, "generateComponentsFromObjectConfig(2)")
        end
        transformInfoObjectConfigInterface = transformInfoInterface.getObjectConfigInterface()
        result = self.generateComponentsFromObjectConfig(abeClientInformation, transformInfoObjectConfigInterface, transformInfoInterface, group)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("End Group: " + group, self, "generateComponentsFromObjectConfig(2)")
        end
        return result
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def generateComponentsFromObjectConfig(abeClientInformation, transformInfoObjectConfigInterface, transformInfoInterface, group)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Started Group: " + group, self, "generateComponentsFromObjectConfig()")
        end
        transformInfoObjectConfigComponentVector = transformInfoObjectConfigInterface.getTransformsGroup(group)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            stringBuffer = StringMaker.new()
            stringBuffer.append("Processing ")
            stringBuffer.appendint(transformInfoObjectConfigComponentVector.size())
            stringBuffer.append(" Components Group: ")
            stringBuffer.append(group)
            @logUtil.putF(stringBuffer.to_s, self, "generateComponentsFromObjectConfig()")
        end
        if transformInfoObjectConfigComponentVector.size() < 1
            raise StandardError.new("No Pages Generated For Template.")
        end
        size = transformInfoObjectConfigComponentVector.size()
        (0...size).each do |index|
            transformInfoObjectConfigComponent = transformInfoObjectConfigComponentVector.get(index)
            TransformGeneratorUtil.getInstance().generate(abeClientInformation, transformInfoObjectConfigComponent, transformInfoInterface)
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Done Group: " + group, self, "generateComponentsFromObjectConfig()")
        end
        stringBuffer = StringMaker.new()
        stringBuffer.append("<!-- Generated all template views successfully for View: ")
        stringBuffer.append(transformInfoInterface.getName())
        stringBuffer.append("-->")
        return stringBuffer.to_s
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoDomNode"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface"
require "org/allbinary/logic/visual/transform/generator/TransformGeneratorUtil"

class TransformsGeneratorUtil
    @@instance = TransformsGeneratorUtil.new()
end

