#
# AllBinary Open License Version 1
# Copyright (c) 2022 AllBinary
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

class AboutPaintableFactory
    attr_accessor :paintableArray

    def jfields_org_allbinary_graphics_displayable_screen_AboutPaintableFactory
        @paintableArray = [::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()]
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_graphics_displayable_screen_AboutPaintableFactory
        _INFO = ["Built with the", "AllBinary Platform", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, "Comments or Questions:", "support@allbinary.com"]
        _DEVELOPERS = ["Developed By:", "Travis Berthelot"]
        @paintableArray = ::Org::Allbinary::Game::Paint::AboutPaintable.getInstance(_INFO, _DEVELOPERS).getPaintableArrayInstance()
    end

    def self.instance()
        AboutPaintableFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AboutPaintableFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AboutPaintableFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AboutPaintableFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Paint; autoload :AboutPaintable, "org/allbinary/game/paint/AboutPaintable" unless const_defined?(:AboutPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable" unless const_defined?(:NullPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :Paintable, "org/allbinary/graphics/paint/Paintable" unless const_defined?(:Paintable, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

begin
    AboutPaintableFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

