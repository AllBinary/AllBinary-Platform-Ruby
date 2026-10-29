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
# package org.allbinary.logic.visual.dhtml.style.color

require "org/allbinary/data/tree/dom/DomNodeInterface"

class ColorsView
    include DomNodeInterface
    attr_accessor :commonPhoneStrings, :HEXRADIX, :MAX, :delta

    def initialize_fields
        @commonPhoneStrings = CommonPhoneStrings.getInstance()
        @HEXRADIX = 16
        @MAX = 255
        @delta = 20
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def getColorNode(document, redIndex, greenIndex, blueIndex)
        hexColorStringBuffer = StringMaker.new()
        if redIndex < @HEXRADIX
            hexColorStringBuffer.append(@commonPhoneStrings.ZERO)
        end
        hexColorStringBuffer.append(Integer.toString(redIndex, @HEXRADIX))
        if greenIndex < @HEXRADIX
            hexColorStringBuffer.append(@commonPhoneStrings.ZERO)
        end
        hexColorStringBuffer.append(Integer.toString(greenIndex, @HEXRADIX))
        if blueIndex < @HEXRADIX
            hexColorStringBuffer.append(@commonPhoneStrings.ZERO)
        end
        hexColorStringBuffer.append(Integer.toString(blueIndex, @HEXRADIX))
        colorNode = ModDomHelper.createNameValueNodes(document, ColorData.getInstance().NAME, hexColorStringBuffer.to_s)
        return colorNode
    end
    

    # throws Exception
    def toXmlNode(document)
        node = ModDomHelper.createNameValueNodes(document, ColorsData.getInstance().NAME, "RGB Colors In Hex")
        blackNode = ModDomHelper.createNameValueNodes(document, ColorData.getInstance().NAME, "000000")
        node.appendChild(blackNode)
        (0...@MAX).step(@delta) do |index|
            hexColorStringBuffer = StringMaker.new()
            if index < @HEXRADIX
                hexColorStringBuffer.append(@commonPhoneStrings.ZERO)
            end
            hexColorStringBuffer.append(Integer.toString(index, @HEXRADIX))
            if index < @HEXRADIX
                hexColorStringBuffer.append(@commonPhoneStrings.ZERO)
            end
            hexColorStringBuffer.append(Integer.toString(index, @HEXRADIX))
            if index < @HEXRADIX
                hexColorStringBuffer.append(@commonPhoneStrings.ZERO)
            end
            hexColorStringBuffer.append(Integer.toString(index, @HEXRADIX))
            colorNode = ModDomHelper.createNameValueNodes(document, ColorData.getInstance().NAME, hexColorStringBuffer.to_s)
            node.appendChild(colorNode)
        end
        whiteNode = ModDomHelper.createNameValueNodes(document, ColorData.getInstance().NAME, "FFFFFF")
        node.appendChild(whiteNode)
        (@MAX / 2...@MAX).step(@delta) do |blueIndex|
            (0...@MAX / 2).step(@delta) do |greenIndex|
                (0...@MAX / 2).step(@delta) do |redIndex|
                    node.appendChild(self.getColorNode(document, redIndex, greenIndex, blueIndex))
                end
            end
        end
        (@MAX / 2...@MAX).step(@delta) do |redIndex|
            (0...@MAX / 2).step(@delta) do |greenIndex|
                (0...@MAX / 2).step(@delta) do |blueIndex|
                    node.appendChild(self.getColorNode(document, redIndex, greenIndex, blueIndex))
                end
            end
        end
        (@MAX / 2...@MAX).step(@delta) do |greenIndex|
            (0...@MAX / 2).step(@delta) do |redIndex|
                (0...@MAX / 2).step(@delta) do |blueIndex|
                    node.appendChild(self.getColorNode(document, redIndex, greenIndex, blueIndex))
                end
            end
        end
        (0...@MAX).step(2 * @delta) do |greenIndex|
            (0...@MAX).step(2 * @delta) do |redIndex|
                (0...@MAX).step(2 * @delta) do |blueIndex|
                    node.appendChild(self.getColorNode(document, redIndex, greenIndex, blueIndex))
                end
            end
        end
        return node
    end
end

require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonPhoneStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/logic/visual/dhtml/style/color/ColorData"
require "org/allbinary/logic/visual/dhtml/style/color/ColorsData"

