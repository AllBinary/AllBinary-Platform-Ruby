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

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/layer/Layer"
require "org/allbinary/layer/LayerInterface"

class AllBinaryLayer < Layer
    include LayerInterface
    attr_accessor :viewPositionEvent, :halfWidth, :halfHeight, :name, :viewPosition

    def initialize_fields
        @viewPositionEvent = ViewPositionEvent.new(self)
        @halfWidth = 0
        @halfHeight = 0
        @name = nil
        @viewPosition = ViewPositionBase::NULL_VIEW_POSITION
    end
    

    def initialize(name, rectangle, viewPosition)
        super(rectangle.getWidth(), rectangle.getHeight())
        initialize_fields
        localName = nil
        if name == nil
            localName = self.class.name
        else
            localName = StringMaker.new().append(name).append(CommonSeps.getInstance().COLON).append((TsUtil.getInstance().hashCode(self)).to_s(16)).to_s
        end
        @name = localName
        point = rectangle.getPoint()
        self.setPosition(point.getX(), point.getY(), point.getZ())
        self.setHalfWidth((self.getWidth() >> 1))
        self.setHalfHeight((self.getHeight() >> 1))
        @viewPosition = viewPosition
        @viewPosition.setAllbinaryLayer(self)
    end
    

    # throws Exception
    def onChangeEvent(layerManagerEvent)
    end
    

    def paintThreed(graphics)
    end
    

    def getX2()
        return self.getXP() + self.getWidth()
    end
    

    def getY2()
        return self.getYP() + self.getHeight()
    end
    

    def getZ2()
        return ((self.getZP() + self.getDepth())).to_i
    end
    

    def getName()
        return @name
    end
    

    def setHalfWidth(halfWidth)
        @halfWidth = halfWidth
    end
    

    def getHalfWidth()
        return @halfWidth
    end
    

    def setHalfHeight(halfHeight)
        @halfHeight = halfHeight
    end
    

    def getHalfHeight()
        return @halfHeight
    end
    

    def getHalfDepth()
        return (self.getDepth()).to_i / 2
    end
    

    def getViewPosition()
        return @viewPosition
    end
    

    def setViewPosition(viewPosition)
        @viewPosition = viewPosition
    end
    

    def getGroupInterface()
        return BasicGroupFactory.getInstance().NONE_ARRAY
    end
    

    def implmentsTickableInterface()
        return false
    end
    

    def implmentsGameInputInterface()
        return false
    end
    

    def implmentsArtificialIntelligenceCompositeInterface()
        return false
    end
    

    def implmentsCollidableInterface()
        return false
    end
    

    def implementsThreedInterface()
        return OpenGLFeatureUtil.getInstance().isAnyThreed()
    end
    

    def getType()
        return -1
    end
    

    def getMultiPlayerType()
        return -1
    end
    

    def toStringAppend(stringBuffer)
        commonSeps = CommonSeps.getInstance()
        positionStrings = PositionStrings.getInstance()
        commonLabels = CommonLabels.getInstance()
        stringBuffer.append(self.getName())
        stringBuffer.append(commonSeps.COLON)
        stringBuffer.append(AllBinaryLayer::TYPE)
        stringBuffer.appendint(self.getType())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.appendint((self.getXP()).to_i)
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.appendint((self.getYP()).to_i)
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.appendint((self.getZP()).to_i)
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(commonLabels.WIDTH_LABEL)
        stringBuffer.appendint((self.getWidth()).to_i)
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint((self.getHeight()).to_i)
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        self.toStringAppend(stringBuffer)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/game/identification/BasicGroupFactory"
require "org/allbinary/game/identification/Group"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/RectangleFactory"
require "org/allbinary/graphics/opengles/OpenGLFeatureUtil"
require "org/allbinary/TsUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/math/PositionStrings"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/view/ViewPositionBase"
require "org/allbinary/view/event/ViewPositionEvent"

class AllBinaryLayer
    NULL_ALLBINARY_LAYER = AllBinaryLayer.new(StringUtil.getInstance().EMPTY_STRING, RectangleFactory::SINGLETON, ViewPositionBase::NULL_VIEW_POSITION)
    TYPE = "Type: "
end

