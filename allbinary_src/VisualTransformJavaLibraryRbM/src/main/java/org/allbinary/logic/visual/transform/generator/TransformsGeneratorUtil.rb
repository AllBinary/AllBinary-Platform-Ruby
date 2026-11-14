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
        TransformsGeneratorUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TransformsGeneratorUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TransformsGeneratorUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TransformsGeneratorUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :TransformInfoDomNode, "org/allbinary/logic/visual/transform/info/TransformInfoDomNode"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :TransformInfoObjectConfigInterface, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface"
autoload :TransformGeneratorUtil, "org/allbinary/logic/visual/transform/generator/TransformGeneratorUtil"

begin
    TransformsGeneratorUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

