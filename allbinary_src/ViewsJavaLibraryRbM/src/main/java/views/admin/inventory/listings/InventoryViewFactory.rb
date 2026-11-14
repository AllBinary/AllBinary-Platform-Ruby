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


class InventoryViewFactory
    

    def initialize()
    end
    

    # throws LicensingException
    def self.getInstance(searchRequest)
        logUtil = LogUtil.getInstance()
        begin
            return InventorySearch.new(searchRequest)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                commonStrings = CommonStrings.getInstance()
                logUtil.put(commonStrings.EXCEPTION, "InventoryViewFactory", "getInstance(SearchRequest)", e)
            end
            return nil
        end
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :SearchRequest, "org/allbinary/logic/control/search/SearchRequest"
autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :InventorySearch, "views/generic/inventory/InventorySearch"
autoload :InventoryViewSearchInterface, "views/admin/inventory/listings/InventoryViewSearchInterface"

