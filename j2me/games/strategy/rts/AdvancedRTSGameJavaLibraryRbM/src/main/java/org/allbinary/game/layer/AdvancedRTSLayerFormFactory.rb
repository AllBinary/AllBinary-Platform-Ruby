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

require "org/allbinary/game/input/RTSLayerFormFactory"

class AdvancedRTSLayerFormFactory < RTSLayerFormFactory
    attr_accessor :logUtil, :scrollSelectionForm

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @scrollSelectionForm = nil
    end
    

    def initialize(label, itemArrayFactoryInterface)
        super()
        initialize_fields
        scrollSelectionForm = ScrollSelectionForm.getNullScrollSelectionForm()
        begin
            items = itemArrayFactoryInterface.getItems()
            scrollSelectionForm = RTSScrollSelectionFormFactory.getInstance(label, items)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR, e)
        end
        @scrollSelectionForm = scrollSelectionForm
    end
    

    def getInstance(rtsLayer)
        return @scrollSelectionForm
    end
end

require "org/allbinary/graphics/form/item/ABCustomItem"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/graphics/form/ScrollSelectionForm"
require "org/allbinary/graphics/form/item/ItemArraySingletonFactoryInterface"
require "org/allbinary/game/layer/RTSLayer"
require "org/allbinary/game/layer/RTSScrollSelectionFormFactory"

