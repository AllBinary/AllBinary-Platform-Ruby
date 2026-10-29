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
# package org.allbinary.business.category.properties.root.store

require "org/allbinary/business/category/properties/CategoryPropertiesFactoryInterface"

class RootStoreCategoryPropertiesFactory
    include CategoryPropertiesFactoryInterface
    attr_accessor :logUtil, :categoryPropertiesInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @categoryPropertiesInterface = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 2 then constructor2(*args)
        when 2 then constructor2(*args)
        when 2 then constructor2(*args)
        end
    end
    

    def constructor1(transformInfoInterface)
        initialize_fields
        @categoryPropertiesInterface = RootStoreCategoryProperties.new(transformInfoInterface)
    end
    

    def constructor2(transformInfoInterface, abPath)
        initialize_fields
        @categoryPropertiesInterface = RootStoreCategoryProperties.new(transformInfoInterface, abPath)
    end
    

    def constructor2(transformInfoInterface, node)
        initialize_fields
        @categoryPropertiesInterface = RootStoreCategoryProperties.new(transformInfoInterface, node)
    end
    

    def constructor2(transformInfoInterface, categoryPropertiesHashMap)
        initialize_fields
        @categoryPropertiesInterface = RootStoreCategoryProperties.new(transformInfoInterface, categoryPropertiesHashMap)
    end
    

    def getInstance()
        begin
            return @categoryPropertiesInterface
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
            end
            return nil
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/business/category/properties/CategoryPropertiesInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Node"
require "org/allbinary/business/category/properties/root/store/RootStoreCategoryProperties"

