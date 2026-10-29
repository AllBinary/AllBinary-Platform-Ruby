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
# package org.allbinary.logic.visual.transform.data

# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/visual/transform/data/TransformHttpRequestDocument"

class TransformStoreDocument < TransformHttpRequestDocument
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize(*args)
        case args.length
        when 2 then constructor2(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor2(pageContext, weblisketSession)
        method(:initialize).super_method.call(pageContext, weblisketSession)
        initialize_fields
        begin
            storeName = weblisketSession.getStoreName()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Using Session StoreName: " + storeName, self, @commonStrings.CONSTRUCTOR)
            end
            self.getBaseNode().appendChild(StoreFrontViewFactory.getInstance(storeName).toXmlNode(self.getDoc()))
            self.getBaseNode().appendChild(RequestParams.new(pageContext.getRequest()).toXmlNode(self.getDoc()))
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
            end
            raise e
        end
    end
    

    def constructor1(searchRequest)
        method(:initialize).super_method.call(searchRequest)
        initialize_fields
        begin
            self.getBaseNode().appendChild(StoreFrontViewFactory.getInstance(searchRequest.getStoreFront().getName()).toXmlNode(self.getDoc()))
            self.getBaseNode().appendChild(searchRequest.getParams().getParamsNode(self.getDoc()))
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
            end
            raise e
        end
    end
end

require "org/allbinary/business/context/modules/storefront/StoreFrontViewFactory"
require "org/allbinary/logic/communication/http/request/RequestParams"
require "org/allbinary/logic/communication/http/request/session/WeblisketSession"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/search/SearchRequest"

