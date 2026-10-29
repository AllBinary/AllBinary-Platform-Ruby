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
# package tags.generic

require "tags/TransformTag"

class GenericViewTag < TransformTag
    attr_accessor :logUtil, :output, :file

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @output = nil
        @file = nil
    end
    

    def initialize()
        super()
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    def setOutput(value)
        @output = value
        self.getPropertiesHashMap().put(InputOutputTypeData.getInstance().NAME, @output)
    end
    

    def setFile(value)
        @file = value
        self.getPropertiesHashMap().put(InputOutputTypeData.getInstance().FILE, @file)
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/InputOutputTypeData"

