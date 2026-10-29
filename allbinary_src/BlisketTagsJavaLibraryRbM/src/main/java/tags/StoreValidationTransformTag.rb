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

# require "javax/servlet/jsp/JspTagException"
require "tags/ValidationTransformTag"

class StoreValidationTransformTag < ValidationTransformTag
    attr_accessor :logUtil, :storeName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @storeName = nil
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def setStoreName(value)
        @storeName = value
        self.getPropertiesHashMap().put(StoreFrontData.getInstance().NAME, @storeName)
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                @logUtil.putF("Tag Start", self, @tagStrings.DO_START_TAG)
            end
            return super()
        rescue StandardError => e
            AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
end

require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/log/LogUtil"

