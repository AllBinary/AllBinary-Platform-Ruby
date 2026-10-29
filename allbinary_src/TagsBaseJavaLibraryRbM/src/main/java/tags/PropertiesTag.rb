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

require "tags/CommandTag"

class PropertiesTag < CommandTag
    attr_accessor :logUtil, :propertiesHashMap

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @propertiesHashMap = nil
    end
    

    def initialize()
        super()
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        end
        @propertiesHashMap = StdUtil.getInstance().createHashMap()
    end
    

    def getPropertiesHashMap()
        return @propertiesHashMap
    end
    

    def doEndTag()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
            @logUtil.putF("Tag Ended", self, "doEndTag")
        end
        @propertiesHashMap = StdUtil.getInstance().createHashMap()
        return EVAL_PAGE
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"

