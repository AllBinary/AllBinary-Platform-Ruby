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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_LAYER_PROCESSOR, BasicLayerProcessor.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicLayerProcessor"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_LAYER_PROCESSOR].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager"

begin
    BasicLayerProcessor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

