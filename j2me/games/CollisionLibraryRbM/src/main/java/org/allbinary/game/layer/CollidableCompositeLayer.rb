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

require "java/lang/JavaOverload"
require "org/allbinary/game/collision/CollidableInterfaceCompositeInterface"
require "org/allbinary/game/layer/AllBinaryGameLayer"

module ::Org; module Allbinary; module Game; module Layer

class CollidableCompositeLayer < AllBinaryGameLayer
    include ::Org::Allbinary::Game::Collision::CollidableInterfaceCompositeInterface
    attr_accessor :collidableInferface

    def jfields_org_allbinary_game_layer_CollidableCompositeLayer
        @collidableInferface = ::Org::Allbinary::Game::Collision::CollidableNeverCollideBehaviorFactory.getInstance().createBehavior()
    end
    

    def self.getNullInstance()
        if CollidableCompositeLayer::NULL_COLLIDABLE_COMPOSITE_LAYER == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            (CollidableCompositeLayer.instance_exec(CollidableCompositeLayer.new(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Graphics::RectangleFactory::SINGLETON, ::Org::Allbinary::View::ViewPositionBase::NULL_VIEW_POSITION, ::Org::Allbinary::Game::Collision::CollidableNeverCollideBehaviorFactory.getInstance())) { |java_value| remove_const(:NULL_COLLIDABLE_COMPOSITE_LAYER) if const_defined?(:NULL_COLLIDABLE_COMPOSITE_LAYER, false); const_set(:NULL_COLLIDABLE_COMPOSITE_LAYER, java_value) })
        end
        return CollidableCompositeLayer::NULL_COLLIDABLE_COMPOSITE_LAYER
    end
    

    def initialize(name, layerInfo, viewPosition, collidableBaseBehaviorFactory)
        super(name, layerInfo, viewPosition)
        jfields_org_allbinary_game_layer_CollidableCompositeLayer
        if collidableBaseBehaviorFactory != ::Org::Allbinary::Game::Collision::CollidableNeverCollideBehaviorFactory.getInstance()
            self.setCollidableInferface(collidableBaseBehaviorFactory.createBehavior())
        end
    end
    

    def getArtificialIntelligenceInterface()
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(@commonStrings.NOT_IMPLEMENTED, self)
        return ::Org::Allbinary::Ai::ArtificialIntelligence.getInstance()
    end
    java_overload :getArtificialIntelligenceInterface, 0
    

    def getCollidableInferface()
        return @collidableInferface
    end
    java_overload :getCollidableInferface, 0
    

    def setCollidableInferface(collidableInferface)
        @collidableInferface = collidableInferface
    end
    java_overload :setCollidableInferface, 1
    

    def implmentsCollidableInterface()
        return true
    end
    java_overload :implmentsCollidableInterface, 0
    

    def toStringAppend(stringBuffer)
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        CollidableCompositeLayer.superclass.java_super_method(:toStringAppend, 1).bind(self).call(stringBuffer)
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append(self.getCollidableInferface().to_s)
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
        begin
            const_set(:NULL_COLLIDABLE_COMPOSITE_LAYER, ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT)
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

module ::Org; module Allbinary; module Ai; autoload :ArtificialIntelligence, "org/allbinary/ai/ArtificialIntelligence" unless const_defined?(:ArtificialIntelligence, false); end; end; end
module ::Org; module Allbinary; module Ai; autoload :ArtificialIntelligenceInterface, "org/allbinary/ai/ArtificialIntelligenceInterface" unless const_defined?(:ArtificialIntelligenceInterface, false); end; end; end
module ::Org; module Allbinary; module Game; module Collision; autoload :CollidableBaseBehavior, "org/allbinary/game/collision/CollidableBaseBehavior" unless const_defined?(:CollidableBaseBehavior, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Collision; autoload :CollidableBaseBehaviorFactory, "org/allbinary/game/collision/CollidableBaseBehaviorFactory" unless const_defined?(:CollidableBaseBehaviorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Collision; autoload :CollidableNeverCollideBehaviorFactory, "org/allbinary/game/collision/CollidableNeverCollideBehaviorFactory" unless const_defined?(:CollidableNeverCollideBehaviorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :RectangleFactory, "org/allbinary/graphics/RectangleFactory" unless const_defined?(:RectangleFactory, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase" unless const_defined?(:ViewPositionBase, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end

begin
    CollidableCompositeLayer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

