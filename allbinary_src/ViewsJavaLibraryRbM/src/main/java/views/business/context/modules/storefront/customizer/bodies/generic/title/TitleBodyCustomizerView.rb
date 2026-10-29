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
# package views.business.context.modules.storefront.customizer.bodies.generic.title

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

class TitleBodyCustomizerView < HttpStoreComponentView
    include DomNodeInterface
    attr_accessor :logUtil, :titleBody

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @titleBody = nil
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
    end
    

    # throws Exception
    def addDomNodeInterfaces()
        self.addDomNodeInterface(@titleBody)
        self.addDomNodeInterface(self)
    end
    

    # throws Exception
    def toXmlNode(document)
        pageName = TransformTemplateCustomizerUtil.getInstance().getPageNameHack(self.getTransformInfoInterface().getName(), self.getWeblisketSession().getStoreName())
        if StringValidationUtil.getInstance().isEmpty(pageName)
            pageName = TitleBodyCustomizerView::NAME
        end
        return ModDomHelper.createNameValueNodes(document, PageData.getInstance().NAME, pageName)
    end
    

    # throws Exception
    def view()
        begin
            success = XmlDocumentHelper.toString(self.getDoc())
            result = StoreTransformer.new(@abeClientInformation, self.getTransformInfoInterface()).translate(success)
            return StringEscapeUtils.unescapeHtml3(result)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
end

require "org/allbinary/business/page/PageData"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/visual/transform/StoreTransformer"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/logic/visual/transform/template/customizer/bodies/title/TitleBodyValidation"
require "org/allbinary/logic/visual/transform/template/util/TransformTemplateCustomizerUtil"
require "org/apache/commons/lang3/StringEscapeUtils"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

class TitleBodyCustomizerView
    NAME = "None"
end

