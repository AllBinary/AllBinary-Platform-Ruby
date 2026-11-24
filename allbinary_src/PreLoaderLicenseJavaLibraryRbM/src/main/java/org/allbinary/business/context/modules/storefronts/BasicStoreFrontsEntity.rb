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

require "java/lang/JavaOverload"
require "org/allbinary/business/init/InitSql"

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefronts

class BasicStoreFrontsEntity < ::Org::Allbinary::Business::Init::InitSql
    attr_accessor :logUtil, :tableName

    def jfields_org_allbinary_business_context_modules_storefronts_BasicStoreFrontsEntity
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @tableName = "storefronts"
    end
    

    def initialize()
        super(::Org::Allbinary::Business::Init::Db::UserDbInitInfo.new())
        jfields_org_allbinary_business_context_modules_storefronts_BasicStoreFrontsEntity
        self.setTable(@tableName)
    end
    

    # throws Exception
    def getStoreFrontInterface(name)
        keysAndValues = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        keysAndValues.put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, name)
        storeHashMap = BasicStoreFrontsEntity.superclass.java_super_method(:getRow, 1).bind(self).call(keysAndValues)
        if storeHashMap == nil
            raise StandardError.new("No Such Store: " + name)
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().FACTORYERROR)
            @logUtil.putF("StoreFront: " + storeHashMap.to_s, self, "getStore()")
        end
        return BasicStoreFront.new(storeHashMap)
    end
    java_overload :getStoreFrontInterface, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :UserDbInitInfo, "org/allbinary/business/init/db/UserDbInitInfo" unless const_defined?(:UserDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :BasicStoreFront, "org/allbinary/business/context/modules/storefronts/BasicStoreFront" unless const_defined?(:BasicStoreFront, false)
autoload :BasicStoreFrontInterface, "org/allbinary/business/context/modules/storefronts/BasicStoreFrontInterface" unless const_defined?(:BasicStoreFrontInterface, false)

end; end; end; end; end; end

