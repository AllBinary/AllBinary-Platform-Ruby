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
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "org/allbinary/game/input/SelectRTSLayerVisitorFactoryInterface"

module ::Org; module Allbinary; module Game; module Input

class SelectRTSLayerVisitorFactory
    include SelectRTSLayerVisitorFactoryInterface
    

    def self.getInstance()
        return SelectRTSLayerVisitorFactory.instance
    end
    

    def initialize()
    end
    

    def create(selectedRTSLayersPlayerGameInput)
        return SelectRTSLayerVisitor.new()
    end
    java_overload :create, 1

    def self.instance()
        SelectRTSLayerVisitorFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        SelectRTSLayerVisitorFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = SelectRTSLayerVisitorFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SelectRTSLayerVisitorFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Util; module Visitor; autoload :Visitor, "org/allbinary/logic/util/visitor/Visitor" unless const_defined?(:Visitor, false); end; end; end; end; end
autoload :SelectRTSLayerVisitor, "org/allbinary/game/input/SelectRTSLayerVisitor" unless const_defined?(:SelectRTSLayerVisitor, false)
autoload :SelectedRTSLayersPlayerGameInput, "org/allbinary/game/input/SelectedRTSLayersPlayerGameInput" unless const_defined?(:SelectedRTSLayersPlayerGameInput, false)

begin
    SelectRTSLayerVisitorFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

