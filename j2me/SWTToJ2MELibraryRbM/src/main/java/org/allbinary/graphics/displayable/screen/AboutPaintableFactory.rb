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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/paint/AboutPaintable"
require "org/allbinary/graphics/paint/NullPaintable"
require "org/allbinary/graphics/paint/Paintable"
require "org/allbinary/logic/string/StringUtil"

class AboutPaintableFactory
    @@instance = AboutPaintableFactory.new()
end

