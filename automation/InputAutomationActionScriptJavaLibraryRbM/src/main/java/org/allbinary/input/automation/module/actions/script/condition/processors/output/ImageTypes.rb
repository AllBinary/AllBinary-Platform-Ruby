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


class ImageTypes
    attr_accessor :vector

    def initialize_fields
        @vector = BasicArrayListD.new()
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        initialize_fields
    end
    

    def constructor1(node)
        initialize_fields
        nodeList = node.getChildNodes()
        (0...nodeList.getLength()).each do |index|
            childNode = nodeList.item(index)
            if childNode.getNodeName().compareTo(ImageActionScriptOutputData::TYPE) == 0
                nextImageTypeString = DomNodeHelper.getTextNodeValue(childNode)
                self.getVector().add(InputImageType.getInstance(nextImageTypeString))
            else
                raise StandardError.new("ImageTypes Unknown Node")
            end
        end
    end
    

    def self.valueOf(anyType)
        imageTypes = ImageTypes.new()
        (0...anyType.length).each do |index|
            imageType = InputImageType.getInstance(anyType[index])
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
            newNode.appendChild(ModDomHelper.createTextNode(document, ImageActionScriptOutputData::TYPE, imageType.getName()))
        end
        return newNode
    end
    

    def toString()
        stringBuffer = StringMaker.new()
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

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/input/media/image/InputImageType"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputData"

