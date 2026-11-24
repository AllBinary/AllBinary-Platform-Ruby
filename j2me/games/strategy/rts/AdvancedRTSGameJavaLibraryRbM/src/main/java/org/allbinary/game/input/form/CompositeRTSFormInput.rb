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
# package org.allbinary.game.input.form

require "java/lang/JavaOverload"
require "org/allbinary/game/input/form/RTSFormInput"

module ::Org; module Allbinary; module Game; module Input; module Form

class CompositeRTSFormInput < RTSFormInput
    attr_accessor :rtsFormInputArray, :itemIndex, :isPrimaryWaypointCreator

    def jfields_org_allbinary_game_input_form_CompositeRTSFormInput
        @rtsFormInputArray = nil unless instance_variable_defined?(:@rtsFormInputArray)
        @itemIndex = nil unless instance_variable_defined?(:@itemIndex)
        @isPrimaryWaypointCreator = nil unless instance_variable_defined?(:@isPrimaryWaypointCreator)
    end
    

    def initialize(groupInterface, isPrimaryWaypointCreator, itemIndex)
        super(groupInterface)
        jfields_org_allbinary_game_input_form_CompositeRTSFormInput
        @itemIndex = itemIndex
        @isPrimaryWaypointCreator = isPrimaryWaypointCreator
        @rtsFormInputArray = Array.new(2, nil)
        @rtsFormInputArray[0] = WaypointRTSFormInput.new(@groupInterfaceArray, isPrimaryWaypointCreator)
        @rtsFormInputArray[1] = UnitRTSFormInput.new(@groupInterfaceArray)
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        CompositeRTSFormInput.superclass.java_super_method(:setAllBinaryGameLayerManager, 1).bind(self).call(allBinaryGameLayerManager)
        geographicMapCompositeInterface = allBinaryGameLayerManager
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        size = @rtsFormInputArray.length
        (0...size).each do |index|
            @rtsFormInputArray[index].setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        end
    end
    java_overload :setAllBinaryGameLayerManager, 1
    

    # throws Exception
    def processAtPoint(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point)
        scrollSelectionForm = rtsPlayerLayerInterface.getCurrentScrollSelectionForm()
        index = scrollSelectionForm.getSelectedIndexForPoint(point)
        if self.isStickyItemSelected() && associatedRtsLayer == ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
            if self.getSelectedStickyItemIndex() <= @itemIndex[0]
                @rtsFormInputArray[0].processAtPoint(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point)
            end
        elsif index > @itemIndex[0]
            @rtsFormInputArray[1].processAtPoint(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point)
        end
    end
    java_overload :processAtPoint, 4
    

    # throws Exception
    def processGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @logUtil.putF((::Org::Allbinary::StringPackage::CommonLabels.getInstance().INDEX_LABEL + index).to_s + " > " + (@itemIndex[0]).to_s, self, commonStrings.PROCESS)
        if self.isStickyItemSelected() && associatedRtsLayer == ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
            if self.getSelectedStickyItemIndex() <= @itemIndex[0]
                @rtsFormInputArray[0].processGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index)
            end
        elsif index > @itemIndex[0]
            @rtsFormInputArray[1].processGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index)
        end
    end
    java_overload :processGameSpecific, 5
    

    # throws Exception
    def processSticky(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point)
        return @rtsFormInputArray[0].processSticky(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point)
    end
    java_overload :processSticky, 4
    

    # throws Exception
    def processStickyGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index)
        @rtsFormInputArray[0].processStickyGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index)
    end
    java_overload :processStickyGameSpecific, 5
    

    def getSelectedStickyItemIndex()
        return @rtsFormInputArray[0].getSelectedStickyItemIndex()
    end
    java_overload :getSelectedStickyItemIndex, 0
    

    def isStickyItemSelected()
        return @rtsFormInputArray[0].isStickyItemSelected()
    end
    java_overload :isStickyItemSelected, 0
    

    def setStickyItemSelected(stickyItemSelected)
        @rtsFormInputArray[0].setStickyItemSelected(stickyItemSelected)
    end
    java_overload :setStickyItemSelected, 1
    

    def getSelectedStickyItem()
        return @rtsFormInputArray[0].getSelectedStickyItem()
    end
    java_overload :getSelectedStickyItem, 0
    

    def setSelectedStickyItem(selectedStickyItem)
        @rtsFormInputArray[0].setSelectedStickyItem(selectedStickyItem)
    end
    java_overload :setSelectedStickyItem, 1
end

module ::Org; module Allbinary; module Game; module Layer; autoload :RTSPlayerLayerInterface, "org/allbinary/game/layer/RTSPlayerLayerInterface" unless const_defined?(:RTSPlayerLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :ScrollSelectionForm, "org/allbinary/graphics/form/ScrollSelectionForm" unless const_defined?(:ScrollSelectionForm, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCompositeInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface" unless const_defined?(:GeographicMapCompositeInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
autoload :UnitRTSFormInput, "org/allbinary/game/input/form/UnitRTSFormInput" unless const_defined?(:UnitRTSFormInput, false)
autoload :WaypointRTSFormInput, "org/allbinary/game/input/form/WaypointRTSFormInput" unless const_defined?(:WaypointRTSFormInput, false)

end; end; end; end; end

