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
# package org.allbinary.logic.visual.transform.info

# require "javax/servlet/jsp/PageContext"

class TransformInfoHttpComposite
    attr_accessor :logUtil, :commonStrings, :transformInfoInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @transformInfoInterface = nil
    end
    

    def initialize(transformInfoInterface)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + transformInfoInterface.getName(), self, @commonStrings.CONSTRUCTOR)
        end
        @transformInfoInterface = transformInfoInterface
    end
    

    # throws Exception
    def getTransformInfoInterface()
        return @transformInfoInterface
    end
    

    def getWeblisketSession()
        return WeblisketSession.new(self.getPropertiesHashMap(), self.getPageContext())
    end
    

    def getPageContext()
        return @transformInfoInterface.getPageContext()
    end
    

    def getPropertiesHashMap()
        return @transformInfoInterface.getPropertiesHashMap()
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/communication/http/request/session/WeblisketSession"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"

