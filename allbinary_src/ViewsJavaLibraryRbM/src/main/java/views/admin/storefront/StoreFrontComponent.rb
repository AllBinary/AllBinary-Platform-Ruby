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
# package views.admin.storefront

# require "javax/servlet/http/HttpServletRequest"
require "views/business/context/modules/storefront/HttpStoreComponentView"

class StoreFrontComponent < HttpStoreComponentView
    attr_accessor :logUtil, :newStoreFrontInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @newStoreFrontInterface = nil
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        @newStoreFrontInterface = StoreFront.new(self.getPageContext().getRequest())
        if @newStoreFrontInterface.getName() == nil
            @newStoreFrontInterface.setName(self.getWeblisketSession().getStoreName())
        end
    end
    

    # throws Exception
    def view()
        begin
            return super()
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view", e)
            end
            raise e
        end
    end
end

require "org/allbinary/business/context/modules/storefront/StoreFront"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"

