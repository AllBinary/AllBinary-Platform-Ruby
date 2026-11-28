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
# package org.allbinary.input.motion.button


module ::Org; module Allbinary; module Input; module Motion; module Button

class CommonButtons
    attr_accessor :STANDARD_BUTTON_SIZE, :NORMAL_BUTTON, :LARGE_BUTTON

    def jfields_org_allbinary_input_motion_button_CommonButtons
        @STANDARD_BUTTON_SIZE = nil unless instance_variable_defined?(:@STANDARD_BUTTON_SIZE)
        @NORMAL_BUTTON = nil unless instance_variable_defined?(:@NORMAL_BUTTON)
        @LARGE_BUTTON = nil unless instance_variable_defined?(:@LARGE_BUTTON)
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_input_motion_button_CommonButtons
        displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        commonButtonSize = 128
        while commonButtonSize > 64
            totalColumns = displayInfo.getLastWidth() / commonButtonSize
            totalRows = displayInfo.getLastHeight() / commonButtonSize
            max = totalColumns
            if totalRows > max
                max = totalRows
            end
            if max > 9
                break
            end
            commonButtonSize = commonButtonSize >> 1
        end
        @STANDARD_BUTTON_SIZE = commonButtonSize
        @NORMAL_BUTTON = ::Org::Allbinary::Graphics::Rectangle.new(::Org::Allbinary::Graphics::PointFactory.getInstance().ZERO_ZERO, @STANDARD_BUTTON_SIZE, @STANDARD_BUTTON_SIZE)
        @LARGE_BUTTON = ::Org::Allbinary::Graphics::Rectangle.new(::Org::Allbinary::Graphics::PointFactory.getInstance().ZERO_ZERO, @STANDARD_BUTTON_SIZE << 1, @STANDARD_BUTTON_SIZE << 1)
    end

    def self.instance()
        CommonButtons.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        CommonButtons.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = CommonButtons.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CommonButtons"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end

begin
    CommonButtons.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

