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
        return defined?(@@hashMap) ? @@hashMap : nil
    end

    def self.hashMap=(value)
        @@hashMap = value
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/input/media/image/InputImageType"
require "org/allbinary/logic/StdUtil"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerData"
require "org/allbinary/input/automation/module/generic/configuration/profile/SavedCaptureGenericProfileDataWorkerType"

class GenericProfileDataWorkerType
    @@hashMap = StdUtil.getInstance().createHashMap()
    SAVED_CAPTURE = SavedCaptureGenericProfileDataWorkerType::SAVED_CAPTURE
    SCREEN_CAPTURE = GenericProfileDataWorkerType.new("Screen " + InputImageType::CAPTURE.getName())
    COMPARISON = GenericProfileDataWorkerType.new(InputImageType::COMPARISON.getName())
    MOTION = GenericProfileDataWorkerType.new(InputImageType::MOTION.getName())
end

