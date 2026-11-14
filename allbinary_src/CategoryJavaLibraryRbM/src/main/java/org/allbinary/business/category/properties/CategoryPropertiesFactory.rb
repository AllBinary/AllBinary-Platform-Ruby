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
# package org.allbinary.business.category.properties

require "org/allbinary/business/category/properties/CategoryPropertiesFactoryInterface"

class CategoryPropertiesFactory
    include CategoryPropertiesFactoryInterface
    attr_accessor :logUtil, :categoryPropertiesInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @categoryPropertiesInterface = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(name)
        initialize_fields
        @categoryPropertiesInterface = CategoryProperties.new(name)
    end
    

    def constructor1(node)
        initialize_fields
        @categoryPropertiesInterface = CategoryProperties.new(node)
    end
    

    def constructor1(categoryPropertiesHashMap)
        initialize_fields
        @categoryPropertiesInterface = CategoryProperties.new(categoryPropertiesHashMap)
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

autoload :HashMap, "java/util/HashMap"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :Node, "org/w3c/dom/Node"
autoload :CategoryProperties, "org/allbinary/business/category/properties/CategoryProperties"
autoload :CategoryPropertiesInterface, "org/allbinary/business/category/properties/CategoryPropertiesInterface"

