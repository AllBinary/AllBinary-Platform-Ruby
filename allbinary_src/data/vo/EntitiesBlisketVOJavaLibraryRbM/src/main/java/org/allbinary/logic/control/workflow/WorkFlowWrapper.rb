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
require "org/allbinary/logic/control/workflow/WorkFlowInterface"

module ::Org; module Allbinary; module Logic; module ControlPackage; module Workflow

class WorkFlowWrapper
    include WorkFlowInterface
    attr_accessor :logUtil, :commonStrings, :anyType

    def jfields_org_allbinary_logic_control_workflow_WorkFlowWrapper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @anyType = nil unless instance_variable_defined?(:@anyType)
    end
    

    def initialize(anyType)
        jfields_org_allbinary_logic_control_workflow_WorkFlowWrapper
        @anyType = anyType
    end
    

    def getWorkFlowObject()
        return @anyType
    end
    java_overload :getWorkFlowObject, 0
    

    # throws Exception
    def getName()
        begin
            helperClass = @anyType.class
            method = helperClass.getMethod("getName", nil)
            result = method.invoke(@anyType, nil)
            return result
        rescue StandardError => e
            error = "Reflection Exception"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getName()", e)
            end
            raise StandardError.new(error)
        end
    end
    java_overload :getName, 0
    

    # throws Exception
    def getStoreName()
        begin
            helperClass = @anyType.class
            method = helperClass.getMethod("getStoreName", nil)
            result = method.invoke(@anyType, nil)
            return result
        rescue StandardError => e
            error = "Reflection Exception"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getStoreName()", e)
            end
            raise StandardError.new(error)
        end
    end
    java_overload :getStoreName, 0
    

    # throws Exception
    def process()
        begin
            helperClass = @anyType.class
            method = helperClass.getMethod(@commonStrings.PROCESS, nil)
            result = method.invoke(@anyType, nil)
            return result
        rescue StandardError => e
            error = "Reflection Exception"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
            end
            raise StandardError.new(error)
        end
    end
    java_overload :process, 0
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end

