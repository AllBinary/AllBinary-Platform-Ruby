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
# package org.allbinary.graphics.displayable.screen


module ::Org; module Allbinary; module Graphics; module Displayable; module Screen

class ScreenRepaintProcessorFactory
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
    end
    

    def create(displayable)
        if !::Org::Allbinary::J2MEUtil.isJ2ME()
            return ScreenRepaintProcessor.new(displayable)
        else
            return ::Org::Allbinary::Canvas::Processor.getInstance()
        end
    end

    def self.instance()
        ScreenRepaintProcessorFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ScreenRepaintProcessorFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ScreenRepaintProcessorFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ScreenRepaintProcessorFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Displayable, "javax/microedition/lcdui/Displayable" unless const_defined?(:Displayable, false); end; end; end
module ::Org; module Allbinary; autoload :J2MEUtil, "org/allbinary/J2MEUtil" unless const_defined?(:J2MEUtil, false); end; end
module ::Org; module Allbinary; module Canvas; autoload :Processor, "org/allbinary/canvas/Processor" unless const_defined?(:Processor, false); end; end; end
autoload :ScreenRepaintProcessor, "org/allbinary/graphics/displayable/screen/ScreenRepaintProcessor" unless const_defined?(:ScreenRepaintProcessor, false)

begin
    ScreenRepaintProcessorFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

