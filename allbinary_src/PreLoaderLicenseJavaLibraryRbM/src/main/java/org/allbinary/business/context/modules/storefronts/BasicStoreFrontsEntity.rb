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
# package org.allbinary.business.context.modules.storefronts

require "org/allbinary/business/init/InitSql"

class BasicStoreFrontsEntity < InitSql
    attr_accessor :logUtil, :tableName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @tableName = "storefronts"
    end
    

    def initialize()
        super(UserDbInitInfo.new())
        initialize_fields
        self.setTable(@tableName)
    end
    

    # throws Exception
    def getStoreFrontInterface(name)
        keysAndValues = StdUtil.getInstance().createHashMap()
        keysAndValues.put(StoreFrontData.getInstance().NAME, name)
        storeHashMap = self.class.superclass.instance_method(:getRow).bind(self).call(keysAndValues)
        if storeHashMap == nil
            raise StandardError.new("No Such Store: " + name)
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().FACTORYERROR)
            @logUtil.putF("StoreFront: " + storeHashMap.to_s, self, "getStore()")
        end
        return BasicStoreFront.new(storeHashMap)
    end
end

require "java/util/HashMap"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/init/db/UserDbInitInfo"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/business/context/modules/storefronts/BasicStoreFront"
require "org/allbinary/business/context/modules/storefronts/BasicStoreFrontInterface"

