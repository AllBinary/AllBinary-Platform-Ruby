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


class BasicLayerProcessor
    attr_accessor :logUtil, :list

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @list = BasicArrayListD.new()
    end
    

    def initialize()
        initialize_fields
    end
    

    def add(layerInterface)
        if !@list.contains(layerInterface)
            @list.add(layerInterface)
        end
    end
    

    # throws Exception
    def process(allBinaryLayerManager)
        raise StandardError.new(CommonStrings.getInstance().NOT_IMPLEMENTED)
    end
    

    def getList()
        return @list
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"

class BasicLayerProcessor
    NULL_LAYER_PROCESSOR = BasicLayerProcessor.new()
end

