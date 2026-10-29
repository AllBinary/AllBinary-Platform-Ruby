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
# package views.business.context.modules.storefront.customizer.includes.meta

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

class MetaView < HttpStoreComponentView
    include DomNodeInterface
    attr_accessor :logUtil, :metasValidation

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @metasValidation = nil
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        @metasValidation = MetasValidation.new(self.getWeblisketSession().getStoreName())
    end
    

    def addDomNodeInterfaces()
        self.addDomNodeInterface(@metasValidation)
    end
    

    # throws Exception
    def toXmlNode(document)
        begin
            return @metasValidation.toXmlNode(document)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().XSLLOGGINGERROR)
                @logUtil.put(@commonStrings.FAILURE, self, "toXmlNode", e)
            end
            raise e
        end
    end
    

    # throws Exception
    def view()
        begin
            self.addDomNodeInterfaces()
            return super()
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/logic/visual/transform/template/customizer/includes/meta/MetasValidation"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

