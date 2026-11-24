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
# package org.allbinary.input.automation.osgi

require "java/lang/JavaOverload"
require "org/osgi/framework/ServiceFactory"

module ::Org; module Allbinary; module Input; module Automation; module Osgi

class InputAutomationServiceFactory
    include ::Org::Osgi::Framework::ServiceFactory
    attr_accessor :logUtil, :commonStrings

    def jfields_org_allbinary_input_automation_osgi_InputAutomationServiceFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_input_automation_osgi_InputAutomationServiceFactory
    end
    

    def self.getInstance()
        return InputAutomationServiceFactory.inputAutomationServiceFactory
    end
    

    def getService(bundle, registration)
        @logUtil.putF(@commonStrings.START, self, "getService")
        return ::Org::Allbinary::Input::Automation::InputAutomationJFrame.getInstance()
    end
    java_overload :getService, 2
    

    def ungetService(bundle, registration, service)
    end
    java_overload :ungetService, 3

    def self.inputAutomationServiceFactory()
        InputAutomationServiceFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@inputAutomationServiceFactory) ? @@inputAutomationServiceFactory : nil
    end

    def self.inputAutomationServiceFactory=(value)
        InputAutomationServiceFactory.java_static_fields unless @java_static_fields_started
        @@inputAutomationServiceFactory = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@inputAutomationServiceFactory = InputAutomationServiceFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InputAutomationServiceFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Osgi; module Framework; autoload :Bundle, "org/osgi/framework/Bundle" unless const_defined?(:Bundle, false); end; end; end
module ::Org; module Osgi; module Framework; autoload :ServiceRegistration, "org/osgi/framework/ServiceRegistration" unless const_defined?(:ServiceRegistration, false); end; end; end
module ::Org; module Allbinary; module Input; module Automation; autoload :InputAutomationJFrame, "org/allbinary/input/automation/InputAutomationJFrame" unless const_defined?(:InputAutomationJFrame, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    InputAutomationServiceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

