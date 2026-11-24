# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
require "org/allbinary/game/input/RTSLayerFormFactory"

module ::Org; module Allbinary; module Game; module Layer

class AdvancedRTSLayerFormFactory < ::Org::Allbinary::Game::Input::RTSLayerFormFactory
    attr_accessor :logUtil, :scrollSelectionForm

    def jfields_org_allbinary_game_layer_AdvancedRTSLayerFormFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @scrollSelectionForm = nil unless instance_variable_defined?(:@scrollSelectionForm)
    end
    

    def initialize(label, itemArrayFactoryInterface)
        super()
        jfields_org_allbinary_game_layer_AdvancedRTSLayerFormFactory
        scrollSelectionForm = ::Org::Allbinary::Graphics::Form::ScrollSelectionForm.getNullScrollSelectionForm()
        begin
            items = itemArrayFactoryInterface.getItems()
            scrollSelectionForm = RTSScrollSelectionFormFactory.getInstance(label, items)
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR, e)
        end
        @scrollSelectionForm = scrollSelectionForm
    end
    

    def getInstance(rtsLayer)
        return @scrollSelectionForm
    end
    java_overload :getInstance, 1
end

module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :ScrollSelectionForm, "org/allbinary/graphics/form/ScrollSelectionForm" unless const_defined?(:ScrollSelectionForm, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ItemArraySingletonFactoryInterface, "org/allbinary/graphics/form/item/ItemArraySingletonFactoryInterface" unless const_defined?(:ItemArraySingletonFactoryInterface, false); end; end; end; end; end
autoload :RTSLayer, "org/allbinary/game/layer/RTSLayer" unless const_defined?(:RTSLayer, false)
autoload :RTSScrollSelectionFormFactory, "org/allbinary/game/layer/RTSScrollSelectionFormFactory" unless const_defined?(:RTSScrollSelectionFormFactory, false)

end; end; end; end

