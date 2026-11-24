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


module ::Org; module Allbinary; module Game; module Input; module Form

class RTSFormInput
    attr_accessor :logUtil, :groupCommonFactory, :hashtable, :newUnconstructedRTSLayerInterfaceArray, :groupInterfaceArray, :selectedGeographicCellPosition, :stickyItemSelected, :selectedStickyItemIndex, :selectedStickyItem

    def jfields_org_allbinary_game_input_form_RTSFormInput
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @groupCommonFactory = ::Org::Allbinary::Game::Identification::GroupCommonFactory.getInstance()
        @hashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
        @newUnconstructedRTSLayerInterfaceArray = Array.new(7, nil)
        @groupInterfaceArray = nil unless instance_variable_defined?(:@groupInterfaceArray)
        @selectedGeographicCellPosition = ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        @stickyItemSelected = false unless instance_variable_defined?(:@stickyItemSelected)
        @selectedStickyItemIndex = 0 unless instance_variable_defined?(:@selectedStickyItemIndex)
        @selectedStickyItem = ::Org::Allbinary::Graphics::Form::Item::ABCustomItem.getNullInstance()
    end
    

    def initialize(groupInterfaceArray)
        jfields_org_allbinary_game_input_form_RTSFormInput
        size = @newUnconstructedRTSLayerInterfaceArray.length
        (0...size).each do |index|
            @newUnconstructedRTSLayerInterfaceArray[index] = ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
        end
        @groupInterfaceArray = groupInterfaceArray
        @hashtable.put(::Org::Allbinary::Direction::DirectionFactory.getInstance().NAME, ::Org::Allbinary::Direction::DirectionFactory.getInstance().DOWN)
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
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Point: ").append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(point)).to_s, self, "getItemAt")
        scrollSelectionForm = rtsPlayerLayerInterface.getCurrentScrollSelectionForm()
        return scrollSelectionForm.getSelectedItem(point)
    end
    

    # throws Exception
    def getIndexAt(rtsPlayerLayerInterface, point)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Point: ").append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(point)).to_s, self, "getItemAt")
        scrollSelectionForm = rtsPlayerLayerInterface.getCurrentScrollSelectionForm()
        return scrollSelectionForm.getSelectedIndexForPoint(point)
    end
    

    # throws Exception
    def getInstance(layerManager, aItem, geographicMapCellPosition)
        item = aItem
        layerInterfaceFactoryInterface = item.getLayerInterfaceFactoryInterface()
        cellPoint = geographicMapCellPosition.getPoint()
        if layerInterfaceFactoryInterface != nil
            @hashtable.put(::Org::Allbinary::Game::Layer::AllBinaryGameLayerManager::ID, layerManager)
            return layerInterfaceFactoryInterface.getNextInstance(self.getHashtable(), cellPoint.getX(), cellPoint.getY(), cellPoint.getZ())
        end
        return ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
    end
    

    def getSelectedGeographicCellPosition()
        return @selectedGeographicCellPosition
    end
    

    def setSelectedGeographicCellPosition(selectedGeographicCellPosition)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Selected GeographicMapCellPosition: ").append(selectedGeographicCellPosition.to_s).to_s, self, "setSelectedGeographicCellPosition")
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

module ::Org; module Allbinary; module Game; module Identification; autoload :GroupCommonFactory, "org/allbinary/game/identification/GroupCommonFactory" unless const_defined?(:GroupCommonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayer, "org/allbinary/game/layer/RTSLayer" unless const_defined?(:RTSLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSPlayerLayerInterface, "org/allbinary/game/layer/RTSPlayerLayerInterface" unless const_defined?(:RTSPlayerLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Item; autoload :LayerInterfaceFactoryImageItem, "org/allbinary/game/layer/item/LayerInterfaceFactoryImageItem" unless const_defined?(:LayerInterfaceFactoryImageItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Direction; autoload :DirectionFactory, "org/allbinary/direction/DirectionFactory" unless const_defined?(:DirectionFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :ScrollSelectionForm, "org/allbinary/graphics/form/ScrollSelectionForm" unless const_defined?(:ScrollSelectionForm, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :LayerInterfaceFactoryInterface, "org/allbinary/layer/LayerInterfaceFactoryInterface" unless const_defined?(:LayerInterfaceFactoryInterface, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :SimpleGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory" unless const_defined?(:SimpleGeographicMapCellPositionFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end

end; end; end; end; end

