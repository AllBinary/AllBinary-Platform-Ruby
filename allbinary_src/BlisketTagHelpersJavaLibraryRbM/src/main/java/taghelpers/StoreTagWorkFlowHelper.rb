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
# package taghelpers

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelper"

module ::Taghelpers

class StoreTagWorkFlowHelper < ::Admin::Taghelpers::TagHelper
    attr_accessor :logUtil, :abeClientInformation, :storeWorkFlowInterface

    def jfields_taghelpers_StoreTagWorkFlowHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @abeClientInformation = ::Org::Allbinary::Logic::System::Security::Licensing::ServiceClientInformationInterfaceFactory.getInstance()
        @storeWorkFlowInterface = nil unless instance_variable_defined?(:@storeWorkFlowInterface)
    end
    

    def initialize(hashMap, pageContext)
        super()
        jfields_taghelpers_StoreTagWorkFlowHelper
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPER)
            @logUtil.putF("Properties: " + hashMap.to_s, self, "StoreTagWorkFlowHelper()")
        end
        @storeWorkFlowInterface = ::Org::Allbinary::Logic::ControlPackage::Workflow::StoreTagWorkFlowFactory.getInstance().getInstance(@abeClientInformation, hashMap, pageContext)
    end
    

    # throws Exception
    def process()
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPER)
                @logUtil.putF("Process", self, @commonStrings.PROCESS)
            end
            return @storeWorkFlowInterface.process()
        rescue StandardError => e
            error = "Failed to process workflow: "
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
    java_overload :process, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Workflow; autoload :StoreTagWorkFlowFactory, "org/allbinary/logic/control/workflow/StoreTagWorkFlowFactory" unless const_defined?(:StoreTagWorkFlowFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Workflow; autoload :StoreWorkFlowInterface, "org/allbinary/logic/control/workflow/StoreWorkFlowInterface" unless const_defined?(:StoreWorkFlowInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory" unless const_defined?(:ServiceClientInformationInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end

