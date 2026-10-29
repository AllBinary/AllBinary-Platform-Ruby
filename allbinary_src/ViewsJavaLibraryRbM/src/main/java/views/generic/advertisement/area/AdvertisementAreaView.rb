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
# package views.generic.advertisement.area

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

class AdvertisementAreaView < HttpStoreComponentView
    include DomNodeInterface
    attr_accessor :logUtil, :advertisementAreaName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @advertisementAreaName = nil
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        @advertisementAreaName = self.getPropertiesHashMap().get(AdvertisementAreaData.getInstance().NAME)
    end
    

    # throws Exception
    def toXmlNode(document)
        begin
            advertisementAreasEntityInterface = AdvertisementAreasEntityFactory.getInstance()
            advertisementAreaInterface = advertisementAreasEntityInterface.get(self.getTransformInfoInterface().getStoreName(), @advertisementAreaName)
            return nil
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().XSLLOGGINGERROR)
                @logUtil.put(@commonStrings.FAILURE, self, "toXmlNode", e)
            end
            raise e
        end
    end
    

    def addDomNodeInterfaces()
        self.addDomNodeInterface(self)
    end
    

    # throws Exception
    def view()
        begin
            self.addDomNodeInterfaces()
            return super()
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
end

require "org/allbinary/business/advertisement/area/AdvertisementAreaData"
require "org/allbinary/business/advertisement/area/AdvertisementAreaInterface"
require "org/allbinary/data/tables/advertisement/areas/AdvertisementAreasEntityFactory"
require "org/allbinary/data/tables/advertisement/areas/AdvertisementAreasEntityInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

