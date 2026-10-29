# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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


class RTSFormInput
    attr_accessor :logUtil, :groupCommonFactory, :hashtable, :newUnconstructedRTSLayerInterfaceArray, :groupInterfaceArray, :selectedGeographicCellPosition, :stickyItemSelected, :selectedStickyItemIndex, :selectedStickyItem

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @groupCommonFactory = GroupCommonFactory.getInstance()
        @hashtable = StdUtil.getInstance().createHashtable()
        @newUnconstructedRTSLayerInterfaceArray = Array.new(7, nil)
        @groupInterfaceArray = nil
        @selectedGeographicCellPosition = SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        @stickyItemSelected = false
        @selectedStickyItemIndex = 0
        @selectedStickyItem = ABCustomItem.getNullInstance()
    end
    

    def initialize(groupInterfaceArray)
        initialize_fields
        size = @newUnconstructedRTSLayerInterfaceArray.length
        (0...size).each do |index|
            @newUnconstructedRTSLayerInterfaceArray[index] = CollidableDestroyableDamageableLayer.getNullInstance()
        end
        @groupInterfaceArray = groupInterfaceArray
        @hashtable.put(DirectionFactory.getInstance().NAME, DirectionFactory.getInstance().DOWN)
        if groupInterfaceArray != nil
            @hashtable.put(@groupCommonFactory.ID, groupInterfaceArray)
        end
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
    end
    

    # throws Exception
    def processAtPoint(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point)
        index = self.getIndexAt(rtsPlayerLayerInterface, point)
        if index < 0
            return
        end
        scrollSelectionForm = rtsPlayerLayerInterface.getCurrentScrollSelectionForm()
        item = scrollSelectionForm.get(index)
        if item == nil
            return
        end
        self.processGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index)
    end
    

    # throws Exception
    def process(layerManager)
        self.setAllBinaryGameLayerManager(layerManager)
    end
    

    # throws Exception
    def processGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index)
    end
    

    # throws Exception
    def processSticky(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point)
        index = self.getIndexAt(rtsPlayerLayerInterface, point)
        if index < 0
            return false
        end
        scrollSelectionForm = rtsPlayerLayerInterface.getCurrentScrollSelectionForm()
        item = scrollSelectionForm.get(index)
        if item == nil
            return false
        end
        self.processStickyGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index)
        return true
    end
    

    # throws Exception
    def processStickyGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index)
    end
    

    # throws Exception
    def getItemAt(rtsPlayerLayerInterface, point)
        @logUtil.putF(StringMaker.new().append("Point: ").append(StringUtil.getInstance().toString(point)).to_s, self, "getItemAt")
        scrollSelectionForm = rtsPlayerLayerInterface.getCurrentScrollSelectionForm()
        return scrollSelectionForm.getSelectedItem(point)
    end
    

    # throws Exception
    def getIndexAt(rtsPlayerLayerInterface, point)
        @logUtil.putF(StringMaker.new().append("Point: ").append(StringUtil.getInstance().toString(point)).to_s, self, "getItemAt")
        scrollSelectionForm = rtsPlayerLayerInterface.getCurrentScrollSelectionForm()
        return scrollSelectionForm.getSelectedIndexForPoint(point)
    end
    

    # throws Exception
    def getInstance(layerManager, aItem, geographicMapCellPosition)
        item = aItem
        layerInterfaceFactoryInterface = item.getLayerInterfaceFactoryInterface()
        cellPoint = geographicMapCellPosition.getPoint()
        if layerInterfaceFactoryInterface != nil
            @hashtable.put(AllBinaryGameLayerManager::ID, layerManager)
            return layerInterfaceFactoryInterface.getNextInstance(self.getHashtable(), cellPoint.getX(), cellPoint.getY(), cellPoint.getZ())
        end
        return CollidableDestroyableDamageableLayer.getNullInstance()
    end
    

    def getSelectedGeographicCellPosition()
        return @selectedGeographicCellPosition
    end
    

    def setSelectedGeographicCellPosition(selectedGeographicCellPosition)
        @logUtil.putF(StringMaker.new().append("Selected GeographicMapCellPosition: ").append(selectedGeographicCellPosition.to_s).to_s, self, "setSelectedGeographicCellPosition")
        @selectedGeographicCellPosition = selectedGeographicCellPosition
    end
    

    def isStickyItemSelected()
        return @stickyItemSelected
    end
    

    def setStickyItemSelected(stickyItemSelected)
        @stickyItemSelected = stickyItemSelected
    end
    

    def getSelectedStickyItem()
        return @selectedStickyItem
    end
    

    def setSelectedStickyItem(selectedStickyItem)
        @selectedStickyItem = selectedStickyItem
    end
    

    def getSelectedStickyItemIndex()
        return @selectedStickyItemIndex
    end
    

    def setSelectedStickyItemIndex(selectedStickyItemIndex)
        @selectedStickyItemIndex = selectedStickyItemIndex
    end
    

    def getHashtable()
        return @hashtable
    end
end

require "org/allbinary/game/identification/GroupCommonFactory"
require "org/allbinary/game/layer/RTSLayer"
require "org/allbinary/game/layer/RTSPlayerLayerInterface"
require "org/allbinary/game/layer/item/LayerInterfaceFactoryImageItem"
require "org/allbinary/graphics/form/item/ABCustomItem"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/direction/DirectionFactory"
require "org/allbinary/game/identification/Group"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/form/ScrollSelectionForm"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/layer/LayerInterfaceFactoryInterface"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory"
require "org/allbinary/util/ABHashtable"

