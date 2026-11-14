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

require "org/allbinary/layer/LayerManagerLoggingBase"

class LayerManagerLogging < LayerManagerLoggingBase
    attr_accessor :logUtil, :stringBuilder, :APPEND, :APPEND_, :_AT_, :ATTEMPT_REMOVE_, :REMOVE_, :REMOVE, :DID_NOT_REMOVE, :CLEAR

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @stringBuilder = StringMaker.new()
        @APPEND = "append"
        @APPEND_ = " append: "
        @_AT_ = " at: "
        @ATTEMPT_REMOVE_ = " Remove Attempt: "
        @REMOVE_ = " Remove: "
        @REMOVE = "remove"
        @DID_NOT_REMOVE = " Did not remove: "
        @CLEAR = " Clear List"
    end

    def initialize
        super()
        initialize_fields
    end
    

    def self.getInstance()
        return LayerManagerLogging.instance
    end
    

    # throws Exception
    def append(layerInterface)
        @stringBuilder.delete(0, @stringBuilder.length())
        @logUtil.putF(@stringBuilder.appendint((TsUtil.getInstance().hashCode(self)).to_i).append(@APPEND_).append(layerInterface.getName()).to_s, self, @APPEND)
    end
    

    def appendAt(layerInterface, index)
        @stringBuilder.delete(0, @stringBuilder.length())
        @logUtil.putF(@stringBuilder.appendint((TsUtil.getInstance().hashCode(self)).to_i).append(@APPEND_).append(layerInterface.getName()).append(@_AT_).appendint(index).to_s, self, @APPEND)
    end
    

    def remove(layerInterface)
        if layerInterface == nil
            @stringBuilder.delete(0, @stringBuilder.length())
            @logUtil.putF(@stringBuilder.appendint((TsUtil.getInstance().hashCode(self)).to_i).append(@ATTEMPT_REMOVE_).append(StringUtil.getInstance().toString(layerInterface)).to_s, self, @REMOVE)
        else
            @stringBuilder.delete(0, @stringBuilder.length())
            @logUtil.putF(@stringBuilder.appendint((TsUtil.getInstance().hashCode(self)).to_i).append(@ATTEMPT_REMOVE_).append(layerInterface.getName()).to_s, self, @REMOVE)
        end
    end
    

    def removeResult(layerManager, layerInterface, result)
        if layerInterface == nil
            @stringBuilder.delete(0, @stringBuilder.length())
            @logUtil.putF(@stringBuilder.appendint((TsUtil.getInstance().hashCode(self)).to_i).append(@REMOVE_).append(StringUtil.getInstance().toString(layerInterface)).to_s, self, @REMOVE)
        elsif result
            if LayerManagerLogging.removeFailed
                @stringBuilder.delete(0, @stringBuilder.length())
                @logUtil.putF(@stringBuilder.appendint((TsUtil.getInstance().hashCode(self)).to_i).append(@REMOVE_).append(layerInterface.getName()).to_s, self, @REMOVE)
            end
        else
            @stringBuilder.delete(0, @stringBuilder.length())
            @logUtil.putF(@stringBuilder.appendint((TsUtil.getInstance().hashCode(self)).to_i).append(@DID_NOT_REMOVE).append(layerInterface.getName()).to_s, self, @REMOVE)
            LayerManagerLogging.removeFailed = true
        end
    end
    

    def log(layerManager)
        @stringBuilder.delete(0, @stringBuilder.length())
        size = layerManager.getSize()
        commonSeps = CommonSeps.getInstance()
        @stringBuilder.append((TsUtil.getInstance().hashCode(layerManager)).to_s(16)).append(commonSeps.COLON_SEP)
        @stringBuilder.appendint(size).append(commonSeps.COLON_SEP)
        allBinaryLayer = nil
        (0...size).each do |index|
            allBinaryLayer = (layerManager.getLayerAt(index))
            @stringBuilder.append(allBinaryLayer.getName()).append(commonSeps.COMMA)
        end
        @logUtil.putF(@stringBuilder.to_s, self, @REMOVE)
    end
    

    def clear()
        @stringBuilder.delete(0, @stringBuilder.length())
        @logUtil.putF(@stringBuilder.appendint((TsUtil.getInstance().hashCode(self)).to_i).append(@CLEAR).to_s, self, @CLEAR)
    end

    def self.instance()
        LayerManagerLogging.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LayerManagerLogging.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.removeFailed()
        LayerManagerLogging.java_static_fields unless @java_static_fields_started
        return defined?(@@removeFailed) ? @@removeFailed : nil
    end

    def self.removeFailed=(value)
        LayerManagerLogging.java_static_fields unless @java_static_fields_started
        @@removeFailed = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@removeFailed = false
        begin
            @@instance = LayerManagerLogging.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LayerManagerLogging"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :TsUtil, "org/allbinary/TsUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :LayerManager, "org/allbinary/layer/LayerManager"

begin
    LayerManagerLogging.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

