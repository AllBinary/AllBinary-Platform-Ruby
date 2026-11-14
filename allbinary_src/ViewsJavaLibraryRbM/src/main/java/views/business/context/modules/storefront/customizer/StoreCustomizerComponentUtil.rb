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
# package views.business.context.modules.storefront.customizer


class StoreCustomizerComponentUtil
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return StoreCustomizerComponentUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def generate(abeClientInformation, transformInfoInterface)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Generating Modified Views For: " + transformInfoInterface.getName(), self, "generateModifiedViews()")
        end
        customizerUtil = CustomizerUtil.getInstance()
        allCustomizedViews = customizerUtil.getTransformInfoObjectConfigGroupComponentNodes(transformInfoInterface)
        size = allCustomizedViews.size()
        (0...size).each do |index|
            nextTransformInfoInterface = allCustomizedViews.get(index)
            allViewsToBeModified = customizerUtil.getTransformInfoObjectConfigComponentNodesToCustomize(transformInfoInterface, nextTransformInfoInterface)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("View or component that was modified by a Customizer: " + nextTransformInfoInterface.getName(), self, "generateModifiedViews()")
            end
            self.generate(abeClientInformation, transformInfoInterface, allViewsToBeModified)
        end
        return StringUtil.getInstance().EMPTY_STRING
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def generate(abeClientInformation, transformInfoInterface, allViewsToBeModifiedVector)
        customizerUtil = CustomizerUtil.getInstance()
        size = allViewsToBeModifiedVector.size()
        (0...size).each do |index|
            nextTransformInfoInterface = allViewsToBeModifiedVector.get(index)
            specifiedTransformInfoInterface = customizerUtil.getTransformInfoInterfaceToCustomize(transformInfoInterface, nextTransformInfoInterface)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Retrieved: " + specifiedTransformInfoInterface.getName(), self, "generateModifiedViews()")
            end
            TransformGeneratorUtil.getInstance().generate(abeClientInformation, nextTransformInfoInterface, specifiedTransformInfoInterface)
        end
    end

    def self.instance()
        StoreCustomizerComponentUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        StoreCustomizerComponentUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = StoreCustomizerComponentUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "StoreCustomizerComponentUtil"
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
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :TransformGeneratorUtil, "org/allbinary/logic/visual/transform/generator/TransformGeneratorUtil"
autoload :TransformInfo, "org/allbinary/logic/visual/transform/info/TransformInfo"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :CustomizerUtil, "views/business/context/modules/storefront/customizer/CustomizerUtil"

begin
    StoreCustomizerComponentUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

