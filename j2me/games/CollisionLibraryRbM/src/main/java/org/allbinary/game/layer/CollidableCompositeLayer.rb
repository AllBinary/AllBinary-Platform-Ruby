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
# package org.allbinary.game.layer

require "org/allbinary/game/collision/CollidableInterfaceCompositeInterface"
require "org/allbinary/game/layer/AllBinaryGameLayer"

class CollidableCompositeLayer < AllBinaryGameLayer
    include CollidableInterfaceCompositeInterface
    attr_accessor :collidableInferface

    def initialize_fields
        @collidableInferface = CollidableNeverCollideBehaviorFactory.getInstance().createBehavior()
    end
    

    def self.getNullInstance()
        if CollidableCompositeLayer::NULL_COLLIDABLE_COMPOSITE_LAYER == NullUtil.getInstance().NULL_OBJECT
            CollidableCompositeLayer::NULL_COLLIDABLE_COMPOSITE_LAYER = CollidableCompositeLayer.new(StringUtil.getInstance().EMPTY_STRING, RectangleFactory::SINGLETON, ViewPositionBase::NULL_VIEW_POSITION, CollidableNeverCollideBehaviorFactory.getInstance())
        end
        return CollidableCompositeLayer::NULL_COLLIDABLE_COMPOSITE_LAYER
    end
    

    def initialize(name, layerInfo, viewPosition, collidableBaseBehaviorFactory)
        super(name, layerInfo, viewPosition)
        initialize_fields
        if collidableBaseBehaviorFactory != CollidableNeverCollideBehaviorFactory.getInstance()
            self.setCollidableInferface(collidableBaseBehaviorFactory.createBehavior())
        end
    end
    

    def getArtificialIntelligenceInterface()
        ForcedLogUtil.log(@commonStrings.NOT_IMPLEMENTED, self)
        return ArtificialIntelligence.getInstance()
    end
    

    def getCollidableInferface()
        return @collidableInferface
    end
    

    def setCollidableInferface(collidableInferface)
        @collidableInferface = collidableInferface
    end
    

    def implmentsCollidableInterface()
        return true
    end
    

    def toStringAppend(stringBuffer)
        commonSeps = CommonSeps.getInstance()
        super(stringBuffer)
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append(self.getCollidableInferface().to_s)
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        self.toStringAppend(stringBuffer)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/ai/ArtificialIntelligence"
require "org/allbinary/ai/ArtificialIntelligenceInterface"
require "org/allbinary/game/collision/CollidableBaseBehavior"
require "org/allbinary/game/collision/CollidableBaseBehaviorFactory"
require "org/allbinary/game/collision/CollidableNeverCollideBehaviorFactory"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/RectangleFactory"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/view/ViewPositionBase"
require "org/allbinary/logic/NullUtil"

class CollidableCompositeLayer
    NULL_COLLIDABLE_COMPOSITE_LAYER = NullUtil.getInstance().NULL_OBJECT
end

