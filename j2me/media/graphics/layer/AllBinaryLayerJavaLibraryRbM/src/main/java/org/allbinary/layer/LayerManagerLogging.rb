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

require "java/lang/Object"
require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/layer/LayerManagerLoggingBase"

module ::Org; module Allbinary; module Layer

class LayerManagerLogging < LayerManagerLoggingBase
    attr_accessor :logUtil, :stringBuilder, :APPEND, :APPEND_, :_AT_, :ATTEMPT_REMOVE_, :REMOVE_, :REMOVE, :DID_NOT_REMOVE, :CLEAR

    def jfields_org_allbinary_layer_LayerManagerLogging
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @stringBuilder = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
        jfields_org_allbinary_layer_LayerManagerLogging
    end
    

    def self.getInstance()
        return LayerManagerLogging.instance
    end
    

    # throws Exception
    def append(layerInterface)
        @stringBuilder.delete(0, @stringBuilder.length())
        @logUtil.putF(@stringBuilder.appendint(((::Org::Allbinary::TsUtil.getInstance().hashCode(self)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).append(@APPEND_).append(layerInterface.getName()).to_s, self, @APPEND)
    end
    java_overload :append, 1
    

    def appendAt(layerInterface, index)
        @stringBuilder.delete(0, @stringBuilder.length())
        @logUtil.putF(@stringBuilder.appendint(((::Org::Allbinary::TsUtil.getInstance().hashCode(self)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).append(@APPEND_).append(layerInterface.getName()).append(@_AT_).appendint(index).to_s, self, @APPEND)
    end
    java_overload :appendAt, 2
    

    def remove(layerInterface)
        if layerInterface == nil
            @stringBuilder.delete(0, @stringBuilder.length())
            @logUtil.putF(@stringBuilder.appendint(((::Org::Allbinary::TsUtil.getInstance().hashCode(self)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).append(@ATTEMPT_REMOVE_).append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(layerInterface)).to_s, self, @REMOVE)
        else
            @stringBuilder.delete(0, @stringBuilder.length())
            @logUtil.putF(@stringBuilder.appendint(((::Org::Allbinary::TsUtil.getInstance().hashCode(self)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).append(@ATTEMPT_REMOVE_).append(layerInterface.getName()).to_s, self, @REMOVE)
        end
    end
    java_overload :remove, 1
    

    def removeResult(layerManager, layerInterface, result)
        if layerInterface == nil
            @stringBuilder.delete(0, @stringBuilder.length())
            @logUtil.putF(@stringBuilder.appendint(((::Org::Allbinary::TsUtil.getInstance().hashCode(self)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).append(@REMOVE_).append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(layerInterface)).to_s, self, @REMOVE)
        elsif result
            if LayerManagerLogging.removeFailed
                @stringBuilder.delete(0, @stringBuilder.length())
                @logUtil.putF(@stringBuilder.appendint(((::Org::Allbinary::TsUtil.getInstance().hashCode(self)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).append(@REMOVE_).append(layerInterface.getName()).to_s, self, @REMOVE)
            end
        else
            @stringBuilder.delete(0, @stringBuilder.length())
            @logUtil.putF(@stringBuilder.appendint(((::Org::Allbinary::TsUtil.getInstance().hashCode(self)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).append(@DID_NOT_REMOVE).append(layerInterface.getName()).to_s, self, @REMOVE)
            LayerManagerLogging.removeFailed = true
        end
    end
    java_overload :removeResult, 3
    

    def log(layerManager)
        @stringBuilder.delete(0, @stringBuilder.length())
        size = layerManager.getSize()
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @stringBuilder.append((::Org::Allbinary::TsUtil.getInstance().hashCode(layerManager)).to_s(16)).append(commonSeps.COLON_SEP)
        @stringBuilder.appendint(size).append(commonSeps.COLON_SEP)
        allBinaryLayer = nil
        (0...size).each do |index|
            allBinaryLayer = (layerManager.getLayerAt(index))
            @stringBuilder.append(allBinaryLayer.getName()).append(commonSeps.COMMA)
        end
        @logUtil.putF(@stringBuilder.to_s, self, @REMOVE)
    end
    java_overload :log, 1
    

    def clear()
        @stringBuilder.delete(0, @stringBuilder.length())
        @logUtil.putF(@stringBuilder.appendint(((::Org::Allbinary::TsUtil.getInstance().hashCode(self)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).append(@CLEAR).to_s, self, @CLEAR)
    end
    java_overload :clear, 0

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

module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false)
autoload :LayerManager, "org/allbinary/layer/LayerManager" unless const_defined?(:LayerManager, false)

begin
    LayerManagerLogging.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

