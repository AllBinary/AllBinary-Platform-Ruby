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

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Style; module Color

class ColorsView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :commonPhoneStrings, :HEXRADIX, :MAX, :delta

    def jfields_org_allbinary_logic_visual_dhtml_style_color_ColorsView
        @commonPhoneStrings = ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance()
        @HEXRADIX = 16
        @MAX = 255
        @delta = 20
    end
    

    def initialize()
        jfields_org_allbinary_logic_visual_dhtml_style_color_ColorsView
    end
    

    # throws Exception
    def getColorNode(document, redIndex, greenIndex, blueIndex)
        hexColorStringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
        colorNode = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ColorData.getInstance().NAME, hexColorStringBuffer.to_s)
        return colorNode
    end
    java_overload :getColorNode, 4
    

    # throws Exception
    def toXmlNode(document)
        node = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ColorsData.getInstance().NAME, "RGB Colors In Hex")
        blackNode = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ColorData.getInstance().NAME, "000000")
        node.appendChild(blackNode)
        (0...@MAX).step(@delta) do |index|
            hexColorStringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
            colorNode = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ColorData.getInstance().NAME, hexColorStringBuffer.to_s)
            node.appendChild(colorNode)
        end
        whiteNode = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ColorData.getInstance().NAME, "FFFFFF")
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
    java_overload :toXmlNode, 1
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :ColorData, "org/allbinary/logic/visual/dhtml/style/color/ColorData" unless const_defined?(:ColorData, false)
autoload :ColorsData, "org/allbinary/logic/visual/dhtml/style/color/ColorsData" unless const_defined?(:ColorsData, false)

end; end; end; end; end; end; end

