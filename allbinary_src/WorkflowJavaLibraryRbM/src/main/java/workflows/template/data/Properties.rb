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
# package workflows.template.data

# require "javax/servlet/jsp/tagext/TagSupport"

class Properties
    attr_accessor :logUtil, :commonStrings, :propertiesHashMap

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @propertiesHashMap = nil
    end
    

    def initialize()
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
            @logUtil.putF("Start/Tag", self, @commonStrings.CONSTRUCTOR)
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
        return TagSupport::EVAL_PAGE
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

