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
# package org.allbinary.business.context

# require "javax/servlet/jsp/PageContext"

module ::Org; module Allbinary; module Business; module Context

class AbContext
    attr_accessor :logUtil, :commonStrings, :propertiesHashMap, :pageContext

    def jfields_org_allbinary_business_context_AbContext
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @propertiesHashMap = nil unless instance_variable_defined?(:@propertiesHashMap)
        @pageContext = nil unless instance_variable_defined?(:@pageContext)
    end
    

    def initialize(propertiesHashMap, pageContext)
        jfields_org_allbinary_business_context_AbContext
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Properties HashMap: " + propertiesHashMap.to_s, self, @commonStrings.CONSTRUCTOR)
        end
        @propertiesHashMap = propertiesHashMap
        @pageContext = pageContext
    end
    

    def getWeblisketSession()
        return ::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSession.new(@propertiesHashMap, @pageContext)
    end
    

    def getPageContext()
        return @pageContext
    end
    

    def getPropertiesHashMap()
        return @propertiesHashMap
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession" unless const_defined?(:WeblisketSession, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSessionInterface, "org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface" unless const_defined?(:WeblisketSessionInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end

