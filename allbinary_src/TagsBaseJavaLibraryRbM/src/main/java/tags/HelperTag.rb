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
# package tags

require "tags/PropertiesTag"

class HelperTag < PropertiesTag
    attr_accessor :logUtil, :tagHelperFactoryInterface, :anyType

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @tagHelperFactoryInterface = nil
        @anyType = nil
    end
    

    def initialize(tagHelperFactoryInterface)
        super()
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        end
        @tagHelperFactoryInterface = tagHelperFactoryInterface
    end
    

    # throws Exception
    def setHelper()
        if @anyType == nil
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                @logUtil.putF("Creating TagHelper with: \n" + self.getPropertiesHashMap().to_s, self, "doStartTag")
            end
            @anyType = @tagHelperFactoryInterface.getInstance(self.getPropertiesHashMap(), @pageContext)
        end
    end
    

    def getHelper()
        return @anyType
    end
    

    def doEndTag()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
            @logUtil.putF("Tag Ended", self, "doEndTag")
        end
        @anyType = nil
        return super()
    end
end

require "admin/taghelpers/TagHelperFactoryInterface"
require "org/allbinary/logic/communication/log/LogUtil"

