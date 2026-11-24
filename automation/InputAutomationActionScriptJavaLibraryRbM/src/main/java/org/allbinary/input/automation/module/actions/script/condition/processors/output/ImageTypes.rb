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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Actions; module Script; module Condition; module Processors; module Output

class ImageTypes
    attr_accessor :vector

    def jfields_org_allbinary_input_automation_module_actions_script_condition_processors_output_ImageTypes
        @vector = ::Org::Allbinary::Util::BasicArrayListD.new()
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_input_automation_module_actions_script_condition_processors_output_ImageTypes_0(*args)
        when 1 then jnew_org_allbinary_input_automation_module_actions_script_condition_processors_output_ImageTypes_1(*args)
        else raise ArgumentError, "No constructor of ImageTypes takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_input_automation_module_actions_script_condition_processors_output_ImageTypes_0()
        jfields_org_allbinary_input_automation_module_actions_script_condition_processors_output_ImageTypes
    end
    

    def jnew_org_allbinary_input_automation_module_actions_script_condition_processors_output_ImageTypes_1(node)
        jfields_org_allbinary_input_automation_module_actions_script_condition_processors_output_ImageTypes
        nodeList = node.getChildNodes()
        (0...nodeList.getLength()).each do |index|
            childNode = nodeList.item(index)
            if childNode.getNodeName().compareTo(ImageActionScriptOutputData::TYPE) == 0
                nextImageTypeString = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(childNode)
                self.getVector().add(::Org::Allbinary::Input::Media::Image::InputImageType.getInstance(nextImageTypeString))
            else
                raise StandardError.new("ImageTypes Unknown Node")
            end
        end
    end
    

    def self.valueOf(anyType)
        imageTypes = ImageTypes.new()
        (0...anyType.length).each do |index|
            imageType = ::Org::Allbinary::Input::Media::Image::InputImageType.getInstance(anyType[index])
            imageTypes.getVector().add(imageType)
        end
        return imageTypes
    end
    

    def getVector()
        return @vector
    end
    

    # throws Exception
    def toXmlNode(document)
        newNode = document.createElement(ImageActionScriptOutputData::TYPES)
        size = @vector.size()
        (0...size).each do |index|
            imageType = @vector.get(index)
            newNode.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createTextNode(document, ImageActionScriptOutputData::TYPE, imageType.getName()))
        end
        return newNode
    end
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("ImageTypes: ")
        size = @vector.size()
        (0...size).each do |index|
            imageType = @vector.get(index)
            stringBuffer.append(imageType.getName())
            if index < size - 1
                stringBuffer.append(", ")
            end
        end
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Media; module Image; autoload :InputImageType, "org/allbinary/input/media/image/InputImageType" unless const_defined?(:InputImageType, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
autoload :ImageActionScriptOutputData, "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputData" unless const_defined?(:ImageActionScriptOutputData, false)

end; end; end; end; end; end; end; end; end; end

