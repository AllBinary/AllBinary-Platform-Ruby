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
# package org.allbinary.graphics.canvas.transition.progress


class ProgressCanvasFactory
    

    def self.getInstance()
        if ProgressCanvasFactory::PROGRESS_FORM_SCREEN == NullUtil.getInstance().NULL_OBJECT
            (ProgressCanvasFactory.send(:remove_const, :PROGRESS_FORM_SCREEN) if ProgressCanvasFactory.const_defined?(:PROGRESS_FORM_SCREEN, false); ProgressCanvasFactory.const_set(:PROGRESS_FORM_SCREEN, ProgressCanvas.new(StringUtil.getInstance().EMPTY_STRING, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)))
        end
        return ProgressCanvasFactory::PROGRESS_FORM_SCREEN
    end
    

    def self.getLazyInstance()
        return NullPaintable.getInstance()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:PROGRESS_FORM_SCREEN, NullUtil.getInstance().NULL_OBJECT)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ProgressCanvasFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:PROGRESS_FORM_SCREEN].include?(name)
        end
        super
    end
end

autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory"
autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable"
autoload :PaintableInterface, "org/allbinary/graphics/paint/PaintableInterface"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"

begin
    ProgressCanvasFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

