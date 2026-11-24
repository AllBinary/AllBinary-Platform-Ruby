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
# package org.allbinary.layer

require "java/lang/Object"
require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/layer/Layer"
require "org/allbinary/layer/LayerInterface"

module ::Org; module Allbinary; module Layer

class AllBinaryLayer < Layer
    include LayerInterface
    attr_accessor :viewPositionEvent, :halfWidth, :halfHeight, :name, :viewPosition

    def jfields_org_allbinary_layer_AllBinaryLayer
        @viewPositionEvent = ::Org::Allbinary::View::Event::ViewPositionEvent.new(self)
        @halfWidth = 0 unless instance_variable_defined?(:@halfWidth)
        @halfHeight = 0 unless instance_variable_defined?(:@halfHeight)
        @name = nil unless instance_variable_defined?(:@name)
        @viewPosition = ::Org::Allbinary::View::ViewPositionBase::NULL_VIEW_POSITION
    end
    

    def initialize(name, rectangle, viewPosition)
        super(rectangle.getWidth(), rectangle.getHeight())
        jfields_org_allbinary_layer_AllBinaryLayer
        localName = nil
        localName = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(name).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COLON).append((::Org::Allbinary::TsUtil.getInstance().hashCode(self)).to_s(16)).to_s
        @name = localName
        point = rectangle.getPoint()
        self.setPosition(point.getX(), point.getY(), point.getZ())
        self.setHalfWidth((self.getWidth() >> 1))
        self.setHalfHeight((self.getHeight() >> 1))
        @viewPosition = viewPosition
        @viewPosition.setAllbinaryLayer(self)
    end
    

    def setPosition(x, y, z)
        AllBinaryLayer.superclass.java_super_method(:setPosition, 3).bind(self).call(x, y, z)
    end
    java_overload :setPosition, 3
    

    def moveDXYZ(dx, dy, dz)
        AllBinaryLayer.superclass.java_super_method(:moveDXYZ, 3).bind(self).call(dx, dy, dz)
    end
    java_overload :moveDXYZ, 3
    

    def getXP()
        return AllBinaryLayer.superclass.java_super_method(:getXP, 0).bind(self).call()
    end
    java_overload :getXP, 0
    

    def getYP()
        return AllBinaryLayer.superclass.java_super_method(:getYP, 0).bind(self).call()
    end
    java_overload :getYP, 0
    

    def getZP()
        return AllBinaryLayer.superclass.java_super_method(:getZP, 0).bind(self).call()
    end
    java_overload :getZP, 0
    

    def getWidth()
        return AllBinaryLayer.superclass.java_super_method(:getWidth, 0).bind(self).call()
    end
    java_overload :getWidth, 0
    

    def getHeight()
        return AllBinaryLayer.superclass.java_super_method(:getHeight, 0).bind(self).call()
    end
    java_overload :getHeight, 0
    

    def setVisible(visible)
        AllBinaryLayer.superclass.java_super_method(:setVisible, 1).bind(self).call(visible)
    end
    java_overload :setVisible, 1
    

    def isVisible()
        return AllBinaryLayer.superclass.java_super_method(:isVisible, 0).bind(self).call()
    end
    java_overload :isVisible, 0
    

    def paint(graphics)
        AllBinaryLayer.superclass.java_super_method(:paint, 1).bind(self).call(graphics)
    end
    java_overload :paint, 1
    

    # throws Exception
    def onChangeEvent(layerManagerEvent)
    end
    java_overload :onChangeEvent, 1
    

    def paintThreed(graphics)
    end
    java_overload :paintThreed, 1
    

    def getX2()
        return self.getXP() + self.getWidth()
    end
    java_overload :getX2, 0
    

    def getY2()
        return self.getYP() + self.getHeight()
    end
    java_overload :getY2, 0
    

    def getZ2()
        return (((self.getZP() + self.getDepth())).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
    end
    java_overload :getZ2, 0
    

    def getName()
        return @name
    end
    java_overload :getName, 0
    

    def setHalfWidth(halfWidth)
        @halfWidth = halfWidth
    end
    java_overload :setHalfWidth, 1
    

    def getHalfWidth()
        return @halfWidth
    end
    java_overload :getHalfWidth, 0
    

    def setHalfHeight(halfHeight)
        @halfHeight = halfHeight
    end
    java_overload :setHalfHeight, 1
    

    def getHalfHeight()
        return @halfHeight
    end
    java_overload :getHalfHeight, 0
    

    def getHalfDepth()
        return ((self.getDepth()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }) / 2
    end
    java_overload :getHalfDepth, 0
    

    def getViewPosition()
        return @viewPosition
    end
    java_overload :getViewPosition, 0
    

    def setViewPosition(viewPosition)
        @viewPosition = viewPosition
    end
    java_overload :setViewPosition, 1
    

    def getGroupInterface()
        return ::Org::Allbinary::Game::Identification::BasicGroupFactory.getInstance().NONE_ARRAY
    end
    java_overload :getGroupInterface, 0
    

    def implmentsTickableInterface()
        return false
    end
    java_overload :implmentsTickableInterface, 0
    

    def implmentsGameInputInterface()
        return false
    end
    java_overload :implmentsGameInputInterface, 0
    

    def implmentsArtificialIntelligenceCompositeInterface()
        return false
    end
    java_overload :implmentsArtificialIntelligenceCompositeInterface, 0
    

    def implmentsCollidableInterface()
        return false
    end
    java_overload :implmentsCollidableInterface, 0
    

    def implementsThreedInterface()
        return ::Org::Allbinary::Graphics::Opengles::OpenGLFeatureUtil.getInstance().isAnyThreed()
    end
    java_overload :implementsThreedInterface, 0
    

    def getType()
        return -1
    end
    java_overload :getType, 0
    

    def getMultiPlayerType()
        return -1
    end
    java_overload :getMultiPlayerType, 0
    

    def toStringAppend(stringBuffer)
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        positionStrings = ::Org::Allbinary::MathPackage::PositionStrings.getInstance()
        commonLabels = ::Org::Allbinary::StringPackage::CommonLabels.getInstance()
        stringBuffer.append(self.getName())
        stringBuffer.append(commonSeps.COLON)
        stringBuffer.append(AllBinaryLayer::TYPE)
        stringBuffer.appendint(self.getType())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.appendint(self.getXP())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.appendint(self.getYP())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.appendint(self.getZP())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(self.getWidth())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(self.getHeight())
    end
    java_overload :toStringAppend, 1
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        self.toStringAppend(stringBuffer)
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:TYPE, "Type: ")
        begin
            const_set(:NULL_ALLBINARY_LAYER, AllBinaryLayer.new(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Graphics::RectangleFactory::SINGLETON, ::Org::Allbinary::View::ViewPositionBase::NULL_VIEW_POSITION))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AllBinaryLayer"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_ALLBINARY_LAYER, :TYPE].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :BasicGroupFactory, "org/allbinary/game/identification/BasicGroupFactory" unless const_defined?(:BasicGroupFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :RectangleFactory, "org/allbinary/graphics/RectangleFactory" unless const_defined?(:RectangleFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureUtil, "org/allbinary/graphics/opengles/OpenGLFeatureUtil" unless const_defined?(:OpenGLFeatureUtil, false); end; end; end; end
module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :PositionStrings, "org/allbinary/math/PositionStrings" unless const_defined?(:PositionStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase" unless const_defined?(:ViewPositionBase, false); end; end; end
module ::Org; module Allbinary; module View; module Event; autoload :ViewPositionEvent, "org/allbinary/view/event/ViewPositionEvent" unless const_defined?(:ViewPositionEvent, false); end; end; end; end

begin
    AllBinaryLayer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

