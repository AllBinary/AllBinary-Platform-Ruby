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
# package views.admin.inventory.listings


class ProductListingFactory
    

    def initialize()
    end
    

    def self.getInstance(searchRequest)
        logUtil = LogUtil.getInstance()
        begin
            return ProductListing.new(searchRequest)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().FACTORYERROR)
                commonStrings = CommonStrings.getInstance()
                logUtil.put(commonStrings.EXCEPTION, "ProductListingFactory", commonStrings.GET_INSTANCE, e)
            end
            return nil
        end
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/search/SearchRequest"
require "org/allbinary/string/CommonStrings"
require "views/admin/inventory/listings/ProductListing"
require "views/admin/inventory/listings/ProductListingInterface"

