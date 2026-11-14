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

require "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerTypeInterface"

class GenericProfileDataWorkerType
    include GenericProfileDataWorkerTypeInterface
    attr_accessor :name

    def initialize_fields
        @name = nil
    end
    

    def initialize(name)
        initialize_fields
        self.setName(name)
        GenericProfileDataWorkerType.hashMap.put(self.getName(), self)
    end
    

    def getName()
        return @name
    end
    

    def setName(name)
        @name = name
    end
    

    # throws Exception
    def toXmlNode(document)
        node = ModDomHelper.createTextNode(document, GenericProfileDataWorkerData::NAME, @name)
        return node
    end
    

    def toString()
        return "GenericProfileDataWorkerType: " + self.getName()
    end
    alias_method :to_s, :toString
    

    def self.getInstance(node)
        name = DomNodeHelper.getTextNodeValue(node)
        return GenericProfileDataWorkerType.hashMap.get(name)
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
            @@hashMap = StdUtil.getInstance().createHashMap()
            const_set(:SAVED_CAPTURE, SavedCaptureGenericProfileDataWorkerType::SAVED_CAPTURE)
            const_set(:SCREEN_CAPTURE, GenericProfileDataWorkerType.new("Screen " + InputImageType::CAPTURE.getName()))
            const_set(:COMPARISON, GenericProfileDataWorkerType.new(InputImageType::COMPARISON.getName()))
            const_set(:MOTION, GenericProfileDataWorkerType.new(InputImageType::MOTION.getName()))
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

autoload :HashMap, "java/util/HashMap"
autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper"
autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper"
autoload :InputImageType, "org/allbinary/input/media/image/InputImageType"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :GenericProfileDataWorkerData, "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerData"
autoload :SavedCaptureGenericProfileDataWorkerType, "org/allbinary/input/automation/module/generic/configuration/profile/SavedCaptureGenericProfileDataWorkerType"

begin
    GenericProfileDataWorkerType.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

