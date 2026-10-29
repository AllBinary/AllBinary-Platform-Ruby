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
# package views.admin.storefront.statistics

require "views/business/context/modules/storefront/HttpStoreComponentView"

class StoreFrontStatisticsComponent < HttpStoreComponentView
    attr_accessor :logUtil, :newStoreFrontInterface, :domNodeInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @newStoreFrontInterface = nil
        @domNodeInterface = nil
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        @newStoreFrontInterface = StoreFrontFactory.getInstance(transformInfoInterface.getStoreName())
        @domNodeInterface = RealTimeStoreFrontStatisticsView.new(RealTimeStoreFrontStatistics.new(@newStoreFrontInterface), self.getWeblisketSession().getRole())
    end
    

    def addDomNodeInterfaces()
        self.addDomNodeInterface(@domNodeInterface)
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

require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/context/modules/storefront/statistics/RealTimeStoreFrontStatistics"
require "org/allbinary/business/context/modules/storefront/statistics/RealTimeStoreFrontStatisticsView"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"

