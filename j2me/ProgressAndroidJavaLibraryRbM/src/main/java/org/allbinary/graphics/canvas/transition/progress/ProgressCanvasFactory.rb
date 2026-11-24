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


module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress

class ProgressCanvasFactory
    

    def self.getInstance()
        if ProgressCanvasFactory::PROGRESS_FORM_SCREEN == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            (ProgressCanvasFactory.instance_exec(AndroidBasicTitleProgressBar.new(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().BLACK, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE)) { |java_value| remove_const(:PROGRESS_FORM_SCREEN) if const_defined?(:PROGRESS_FORM_SCREEN, false); const_set(:PROGRESS_FORM_SCREEN, java_value) })
        end
        return ProgressCanvasFactory::PROGRESS_FORM_SCREEN
    end
    

    def self.getLazyInstance()
        return ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:PROGRESS_FORM_SCREEN, ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT)
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

module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable" unless const_defined?(:NullPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :PaintableInterface, "org/allbinary/graphics/paint/PaintableInterface" unless const_defined?(:PaintableInterface, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :AndroidBasicTitleProgressBar, "org/allbinary/graphics/canvas/transition/progress/AndroidBasicTitleProgressBar" unless const_defined?(:AndroidBasicTitleProgressBar, false)
autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" unless const_defined?(:ProgressCanvas, false)

begin
    ProgressCanvasFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

