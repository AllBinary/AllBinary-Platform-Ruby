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
# package workflows.template.data

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/PageContext"
# require "javax/servlet/jsp/tagext/TagSupport"
require "org/allbinary/logic/control/workflow/WorkFlowInterface"

module ::Workflows; module Template; module DataPackage

class BasicWorkFlow
    include ::Org::Allbinary::Logic::ControlPackage::Workflow::WorkFlowInterface
    attr_accessor :logUtil, :commonStrings, :abeClientInformation, :validationDomNodeInterface, :propertiesHashMap, :pageContext

    def jfields_workflows_template_data_BasicWorkFlow
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @abeClientInformation = ::Org::Allbinary::Logic::System::Security::Licensing::ServiceClientInformationInterfaceFactory.getInstance()
        @validationDomNodeInterface = nil unless instance_variable_defined?(:@validationDomNodeInterface)
        @propertiesHashMap = nil unless instance_variable_defined?(:@propertiesHashMap)
        @pageContext = nil unless instance_variable_defined?(:@pageContext)
    end
    

    def initialize(propertiesHashMap, pageContext)
        jfields_workflows_template_data_BasicWorkFlow
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().WORKFLOW)
            @logUtil.putF("Properties: " + propertiesHashMap.to_s, self, "BasicWorkFlow()")
        end
        @propertiesHashMap = propertiesHashMap
        @pageContext = pageContext
        @validationDomNodeInterface = ::Org::Allbinary::Logic::Visual::Transform::TransformFactory.getInstance().getInstance(@abeClientInformation, propertiesHashMap, pageContext)
    end
    

    # throws Exception
    def getName()
        return self.getPropertiesHashMap().get(::Org::Allbinary::Logic::ControlPackage::Workflow::WorkFlowData.getInstance().NAME)
    end
    java_overload :getName, 0
    

    def getPropertiesHashMap()
        return @propertiesHashMap
    end
    java_overload :getPropertiesHashMap, 0
    

    def getPageContext()
        return @pageContext
    end
    java_overload :getPageContext, 0
    

    # throws Exception
    def process()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().WORKFLOW)
            @logUtil.putF(@commonStrings.START, self, @commonStrings.PROCESS)
        end
        if @validationDomNodeInterface.isValid()
            @pageContext.getOut().print(@validationDomNodeInterface.view())
            return (TagSupport::EVAL_BODY_INCLUDE).to_s
        else
            @pageContext.getOut().print(@validationDomNodeInterface.validationInfo())
            return (TagSupport::SKIP_BODY).to_s
        end
    end
    java_overload :process, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Validate; autoload :ValidationComponentInterface, "org/allbinary/logic/control/validate/ValidationComponentInterface" unless const_defined?(:ValidationComponentInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Workflow; autoload :WorkFlowData, "org/allbinary/logic/control/workflow/WorkFlowData" unless const_defined?(:WorkFlowData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory" unless const_defined?(:ServiceClientInformationInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; autoload :TransformFactory, "org/allbinary/logic/visual/transform/TransformFactory" unless const_defined?(:TransformFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end

