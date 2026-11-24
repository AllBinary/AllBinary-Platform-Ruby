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
# package org.allbinary.input.automation.module.actions.script.condition.processors.output

require "java/lang/JavaOverload"
require "org/allbinary/input/automation/module/actions/script/condition/processors/output/BasicProfileActionScriptOutput"
require "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputInterface"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Actions; module Script; module Condition; module Processors; module Output

class ImageActionScriptOutput < BasicProfileActionScriptOutput
    include ImageActionScriptOutputInterface
    attr_accessor :logUtil, :saved, :display, :imageTypes, :actionScriptOutputJPanel

    def jfields_org_allbinary_input_automation_module_actions_script_condition_processors_output_ImageActionScriptOutput
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @saved = false
        @display = false
        @imageTypes = nil unless instance_variable_defined?(:@imageTypes)
        @actionScriptOutputJPanel = nil unless instance_variable_defined?(:@actionScriptOutputJPanel)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_input_automation_module_actions_script_condition_processors_output_ImageActionScriptOutput_1(*args)
        when 0 then jnew_org_allbinary_input_automation_module_actions_script_condition_processors_output_ImageActionScriptOutput_0(*args)
        else raise ArgumentError, "No constructor of ImageActionScriptOutput takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_input_automation_module_actions_script_condition_processors_output_ImageActionScriptOutput_1(node)
        ImageActionScriptOutput.superclass.instance_method(:initialize).bind(self).call(NAME, node)
        jfields_org_allbinary_input_automation_module_actions_script_condition_processors_output_ImageActionScriptOutput
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        actionNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(ImageActionScriptOutputData::NAME, node.getChildNodes())
        if actionNode != nil
            nodeList = actionNode.getChildNodes()
            (0...nodeList.getLength()).each do |index|
                childNode = nodeList.item(index)
                if childNode.getNodeName().compareTo(ImageActionScriptOutputData::SAVE) == 0
                    booleanString = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(childNode)
                    self.setSaved(booleanString)
                elsif childNode.getNodeName().compareTo(ImageActionScriptOutputData::DISPLAY) == 0
                    booleanString = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(childNode)
                    self.setSaved(booleanString)
                elsif childNode.getNodeName().compareTo(ImageActionScriptOutputData::TYPES) == 0
                    self.setImageTypes(ImageTypes.new(childNode))
                else
                    raise StandardError.new("Action Script Output Unknown Node")
                end
            end
        else
            raise StandardError.new("Action Script Output Node Null")
        end
        self.setAllowsChildren(false)
        @actionScriptOutputJPanel = ImageActionScriptOutputJPanel.new(self)
    end
    

    def jnew_org_allbinary_input_automation_module_actions_script_condition_processors_output_ImageActionScriptOutput_0()
        ImageActionScriptOutput.superclass.instance_method(:initialize).bind(self).call(NAME)
        jfields_org_allbinary_input_automation_module_actions_script_condition_processors_output_ImageActionScriptOutput
        self.setImageTypes(ImageTypes.new())
        self.setAllowsChildren(false)
        @actionScriptOutputJPanel = ImageActionScriptOutputJPanel.new(self)
    end
    

    def getActionScriptOutputJPanel()
        return @actionScriptOutputJPanel
    end
    java_overload :getActionScriptOutputJPanel, 0
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put(ImageActionScriptOutputData::DISPLAY, (self.isDisplay()).to_s)
        hashMap.put(ImageActionScriptOutputData::SAVE, (self.isSaved()).to_s)
        @logUtil.putF("HashMap: " + hashMap.to_s, self, "toHashMap()")
        return hashMap
    end
    java_overload :toHashMap, 0
    

    # throws Exception
    def toXmlNode(document)
        node = ImageActionScriptOutput.superclass.java_super_method(:toXmlNode, 1).bind(self).call(document)
        newNode = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNodeWithValueNodes(document, ImageActionScriptOutputData::NAME, self.toHashMap())
        newNode.appendChild(self.getImageTypes().toXmlNode(document))
        node.appendChild(newNode)
        return node
    end
    java_overload :toXmlNode, 1
    

    # throws Exception
    def process(frame)
        ImageActionScriptOutputProcessor.process(self, frame)
    end
    java_overload :process, 1
    

    def showDialog()
        @actionScriptOutputJPanel.getCapturedImageActionJDialog().setVisible(true)
    end
    java_overload :showDialog, 0
    

    def isSaved()
        return @saved
    end
    java_overload :isSaved, 0
    

    def setSaved(saved)
        @saved = saved
    end
    java_overload :setSaved, 1
    

    def isDisplay()
        return @display
    end
    java_overload :isDisplay, 0
    

    def setDisplay(display)
        @display = display
    end
    java_overload :setDisplay, 1
    

    def future_toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(" Is Save: ")
        stringBuffer.appendboolean(self.isSaved())
        stringBuffer.append(" Is Display: ")
        stringBuffer.appendboolean(self.isDisplay())
        stringBuffer.append(" ")
        stringBuffer.append(self.getImageTypes().to_s)
        return stringBuffer.to_s
    end
    java_overload :future_toString, 0
    

    def log()
        @logUtil.putF(self.future_toString(), self, "log")
    end
    java_overload :log, 0
    

    def getImageTypes()
        return @imageTypes
    end
    java_overload :getImageTypes, 0
    

    def setImageTypes(imageTypes)
        @imageTypes = imageTypes
    end
    java_overload :setImageTypes, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "Captures")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageActionScriptOutput"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
autoload :ImageActionScriptOutputData, "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputData" unless const_defined?(:ImageActionScriptOutputData, false)
autoload :ImageActionScriptOutputJPanel, "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputJPanel" unless const_defined?(:ImageActionScriptOutputJPanel, false)
autoload :ImageActionScriptOutputProcessor, "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputProcessor" unless const_defined?(:ImageActionScriptOutputProcessor, false)
autoload :ImageTypes, "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageTypes" unless const_defined?(:ImageTypes, false)

begin
    ImageActionScriptOutput.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end; end; end

