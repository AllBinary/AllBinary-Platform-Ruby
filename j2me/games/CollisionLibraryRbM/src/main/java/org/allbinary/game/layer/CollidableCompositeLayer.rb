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
            (CollidableCompositeLayer.send(:remove_const, :NULL_COLLIDABLE_COMPOSITE_LAYER) if CollidableCompositeLayer.const_defined?(:NULL_COLLIDABLE_COMPOSITE_LAYER, false); CollidableCompositeLayer.const_set(:NULL_COLLIDABLE_COMPOSITE_LAYER, CollidableCompositeLayer.new(StringUtil.getInstance().EMPTY_STRING, RectangleFactory::SINGLETON, ViewPositionBase::NULL_VIEW_POSITION, CollidableNeverCollideBehaviorFactory.getInstance())))
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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_COLLIDABLE_COMPOSITE_LAYER, NullUtil.getInstance().NULL_OBJECT)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CollidableCompositeLayer"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_COLLIDABLE_COMPOSITE_LAYER].include?(name)
        end
        super
    end
end

autoload :ArtificialIntelligence, "org/allbinary/ai/ArtificialIntelligence"
autoload :ArtificialIntelligenceInterface, "org/allbinary/ai/ArtificialIntelligenceInterface"
autoload :CollidableBaseBehavior, "org/allbinary/game/collision/CollidableBaseBehavior"
autoload :CollidableBaseBehaviorFactory, "org/allbinary/game/collision/CollidableBaseBehaviorFactory"
autoload :CollidableNeverCollideBehaviorFactory, "org/allbinary/game/collision/CollidableNeverCollideBehaviorFactory"
autoload :Rectangle, "org/allbinary/graphics/Rectangle"
autoload :RectangleFactory, "org/allbinary/graphics/RectangleFactory"
autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase"
autoload :NullUtil, "org/allbinary/logic/NullUtil"

begin
    CollidableCompositeLayer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

