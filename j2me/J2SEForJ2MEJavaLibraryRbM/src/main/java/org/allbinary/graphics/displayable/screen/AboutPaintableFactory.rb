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


class AboutPaintableFactory
    attr_accessor :paintableArray

    def initialize_fields
        @paintableArray = [NullPaintable.getInstance()]
    end
    

    def self.getInstance()
        return AboutPaintableFactory.instance
    end
    

    def initialize()
        initialize_fields
        _INFO = ["Built with the", "AllBinary Platform", StringUtil.getInstance().EMPTY_STRING, "Comments or Questions:", "support@allbinary.com"]
        _DEVELOPERS = ["Developed By:", "Travis Berthelot"]
        @paintableArray = AboutPaintable.getInstance(_INFO, _DEVELOPERS).getPaintableArrayInstance()
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

autoload :AboutPaintable, "org/allbinary/game/paint/AboutPaintable"
autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable"
autoload :Paintable, "org/allbinary/graphics/paint/Paintable"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"

begin
    AboutPaintableFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

