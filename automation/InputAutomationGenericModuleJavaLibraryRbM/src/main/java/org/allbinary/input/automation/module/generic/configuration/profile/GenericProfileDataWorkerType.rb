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
# package org.allbinary.input.automation.module.generic.configuration.profile

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerTypeInterface"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile

class GenericProfileDataWorkerType
    include GenericProfileDataWorkerTypeInterface
    attr_accessor :name

    def jfields_org_allbinary_input_automation_module_generic_configuration_profile_GenericProfileDataWorkerType
        @name = nil unless instance_variable_defined?(:@name)
    end
    

    def initialize(name)
        jfields_org_allbinary_input_automation_module_generic_configuration_profile_GenericProfileDataWorkerType
        self.setName(name)
        @@hashMap.put(self.getName(), self)
    end
    

    def getName()
        return @name
    end
    java_overload :getName, 0
    

    def setName(name)
        @name = name
    end
    java_overload :setName, 1
    

    # throws Exception
    def toXmlNode(document)
        node = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createTextNode(document, GenericProfileDataWorkerData::NAME, @name)
        return node
    end
    java_overload :toXmlNode, 1
    

    def toString()
        return "GenericProfileDataWorkerType: " + self.getName()
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def self.getInstance(node)
        name = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(node)
        return @@hashMap.get(name)
    end

    def self.hashMap()
        GenericProfileDataWorkerType.java_static_fields unless @java_static_fields_started
        return defined?(@@hashMap) ? @@hashMap : nil
    end

    def self.hashMap=(value)
        GenericProfileDataWorkerType.java_static_fields unless @java_static_fields_started
        @@hashMap = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            const_set(:SAVED_CAPTURE, SavedCaptureGenericProfileDataWorkerType::SAVED_CAPTURE)
            const_set(:SCREEN_CAPTURE, GenericProfileDataWorkerType.new("Screen " + ::Org::Allbinary::Input::Media::Image::InputImageType::CAPTURE.getName()))
            const_set(:COMPARISON, GenericProfileDataWorkerType.new(::Org::Allbinary::Input::Media::Image::InputImageType::COMPARISON.getName()))
            const_set(:MOTION, GenericProfileDataWorkerType.new(::Org::Allbinary::Input::Media::Image::InputImageType::MOTION.getName()))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GenericProfileDataWorkerType"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SAVED_CAPTURE, :SCREEN_CAPTURE, :COMPARISON, :MOTION].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Media; module Image; autoload :InputImageType, "org/allbinary/input/media/image/InputImageType" unless const_defined?(:InputImageType, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :GenericProfileDataWorkerData, "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerData" unless const_defined?(:GenericProfileDataWorkerData, false)
autoload :SavedCaptureGenericProfileDataWorkerType, "org/allbinary/input/automation/module/generic/configuration/profile/SavedCaptureGenericProfileDataWorkerType" unless const_defined?(:SavedCaptureGenericProfileDataWorkerType, false)

begin
    GenericProfileDataWorkerType.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

