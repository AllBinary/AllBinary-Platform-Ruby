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
# package org.allbinary.logic.control.workflow

require "java/lang/JavaOverload"
# require "java/lang/reflect/Method"
require "org/allbinary/logic/control/workflow/WorkFlowWrapper"

module ::Org; module Allbinary; module Logic; module ControlPackage; module Workflow

class StoreWorkFlowWrapper < WorkFlowWrapper
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_control_workflow_StoreWorkFlowWrapper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize(anyType)
        super(anyType)
        jfields_org_allbinary_logic_control_workflow_StoreWorkFlowWrapper
    end
    

    # throws Exception
    def getStoreName()
        begin
            helperClass = self.getWorkFlowObject().class
            method = helperClass.getMethod("getStoreName", nil)
            result = method.invoke(self.getWorkFlowObject(), nil)
            return result
        rescue StandardError => e
            error = "Reflection Exception"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, "getStoreName()", e)
            end
            raise StandardError.new(error)
        end
    end
    java_overload :getStoreName, 0
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end

