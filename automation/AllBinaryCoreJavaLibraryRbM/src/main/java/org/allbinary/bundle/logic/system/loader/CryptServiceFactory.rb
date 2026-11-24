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
# package org.allbinary.bundle.logic.system.loader

require "java/lang/JavaOverload"
require "org/osgi/framework/ServiceFactory"

module ::Org; module Allbinary; module Bundle; module Logic; module System; module Loader

class CryptServiceFactory
    include ::Org::Osgi::Framework::ServiceFactory
    attr_accessor :logUtil, :commonStrings, :cryptService

    def jfields_org_allbinary_bundle_logic_system_loader_CryptServiceFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @cryptService = CryptService.new()
    end
    

    def initialize()
        jfields_org_allbinary_bundle_logic_system_loader_CryptServiceFactory
    end
    

    def getService(bundle, registration)
        @logUtil.putF(@commonStrings.START, self, "getService")
        return @cryptService
    end
    java_overload :getService, 2
    

    def ungetService(bundle, registration, service)
    end
    java_overload :ungetService, 3
end

module ::Org; module Osgi; module Framework; autoload :Bundle, "org/osgi/framework/Bundle" unless const_defined?(:Bundle, false); end; end; end
module ::Org; module Osgi; module Framework; autoload :ServiceRegistration, "org/osgi/framework/ServiceRegistration" unless const_defined?(:ServiceRegistration, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :CryptService, "org/allbinary/bundle/logic/system/loader/CryptService" unless const_defined?(:CryptService, false)

end; end; end; end; end; end

