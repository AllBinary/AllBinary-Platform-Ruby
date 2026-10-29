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

require "org/allbinary/game/input/form/RTSFormInput"

class CompositeRTSFormInput < RTSFormInput
    attr_accessor :rtsFormInputArray, :itemIndex, :isPrimaryWaypointCreator

    def initialize_fields
        @rtsFormInputArray = nil
        @itemIndex = nil
        @isPrimaryWaypointCreator = nil
    end
    

    def initialize(groupInterface, isPrimaryWaypointCreator, itemIndex)
        super(groupInterface)
        initialize_fields
        @itemIndex = itemIndex
        @isPrimaryWaypointCreator = isPrimaryWaypointCreator
        @rtsFormInputArray = Array.new(2, nil)
        @rtsFormInputArray[0] = WaypointRTSFormInput.new(@groupInterfaceArray, isPrimaryWaypointCreator)
        @rtsFormInputArray[1] = UnitRTSFormInput.new(@groupInterfaceArray)
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        super(allBinaryGameLayerManager)
        geographicMapCompositeInterface = allBinaryGameLayerManager
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        size = @rtsFormInputArray.length
        (0...size).each do |index|
            @rtsFormInputArray[index].setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        end
    end
    

    # throws Exception
    def processAtPoint(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point)
        scrollSelectionForm = rtsPlayerLayerInterface.getCurrentScrollSelectionForm()
        index = scrollSelectionForm.getSelectedIndexForPoint(point)
        if self.isStickyItemSelected() && associatedRtsLayer == CollidableDestroyableDamageableLayer.getNullInstance()
            if self.getSelectedStickyItemIndex() <= @itemIndex[0]
                @rtsFormInputArray[0].processAtPoint(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point)
            end
        elsif index > @itemIndex[0]
            @rtsFormInputArray[1].processAtPoint(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point)
        end
    end
    

    # throws Exception
    def processGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index)
        commonStrings = CommonStrings.getInstance()
        @logUtil.putF((CommonLabels.getInstance().INDEX_LABEL + index).to_s + " > " + (@itemIndex[0]).to_s, self, commonStrings.PROCESS)
        if self.isStickyItemSelected() && associatedRtsLayer == CollidableDestroyableDamageableLayer.getNullInstance()
            if self.getSelectedStickyItemIndex() <= @itemIndex[0]
                @rtsFormInputArray[0].processGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index)
            end
        elsif index > @itemIndex[0]
            @rtsFormInputArray[1].processGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index)
        end
    end
    

    # throws Exception
    def processSticky(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point)
        return @rtsFormInputArray[0].processSticky(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point)
    end
    

    # throws Exception
    def processStickyGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index)
        @rtsFormInputArray[0].processStickyGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index)
    end
    

    def getSelectedStickyItemIndex()
        return @rtsFormInputArray[0].getSelectedStickyItemIndex()
    end
    

    def isStickyItemSelected()
        return @rtsFormInputArray[0].isStickyItemSelected()
    end
    

    def setStickyItemSelected(stickyItemSelected)
        @rtsFormInputArray[0].setStickyItemSelected(stickyItemSelected)
    end
    

    def getSelectedStickyItem()
        return @rtsFormInputArray[0].getSelectedStickyItem()
    end
    

    def setSelectedStickyItem(selectedStickyItem)
        @rtsFormInputArray[0].setSelectedStickyItem(selectedStickyItem)
    end
end

require "org/allbinary/game/layer/RTSPlayerLayerInterface"
require "org/allbinary/graphics/form/item/ABCustomItem"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/identification/Group"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/form/ScrollSelectionForm"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/game/input/form/UnitRTSFormInput"
require "org/allbinary/game/input/form/WaypointRTSFormInput"

