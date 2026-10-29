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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/visual/transform/generator/TransformGeneratorUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfo"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "views/business/context/modules/storefront/customizer/CustomizerUtil"

class StoreCustomizerComponentUtil
    @@instance = StoreCustomizerComponentUtil.new()
end

