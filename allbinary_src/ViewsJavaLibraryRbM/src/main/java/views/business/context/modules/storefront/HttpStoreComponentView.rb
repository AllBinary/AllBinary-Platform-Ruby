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
# package views.business.context.modules.storefront

require "views/HttpComponentView"

class HttpStoreComponentView < HttpComponentView
    attr_accessor :logUtil, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + transformInfoInterface.getName(), self, @commonStrings.CONSTRUCTOR)
        end
        self.setTransformDocumentInterface(TransformStoreDocumentFactory.getInstance(self.getPageContext(), self.getWeblisketSession()))
    end
    

    # throws Exception
    def view()
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF(@commonStrings.START, self, "view")
            end
            self.toXmlDoc()
            success = XmlDocumentHelper.toString(self.getDoc())
            result = StoreTransformer.new(@abeClientInformation, self.getTransformInfoInterface()).translate(success)
            return result
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view", e)
            end
            raise e
        end
    end
end

require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/visual/transform/StoreTransformer"
require "org/allbinary/logic/visual/transform/data/TransformStoreDocumentFactory"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/string/CommonStrings"

