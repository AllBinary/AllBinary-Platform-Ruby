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
# package org.allbinary.logic.visual.theme


class ThemeData
    attr_accessor :NAME, :PATH, :PREVIEW_IMAGE_NAME, :PREVIEW_IMAGE_PATH

    def initialize_fields
        @NAME = "THEME_NAME"
        @PATH = "THEME_PATH"
        @PREVIEW_IMAGE_NAME = "THEME_PREVIEW_IMAGE_NAME"
        @PREVIEW_IMAGE_PATH = "THEME_PREVIEW_IMAGE_PATH"
    end
    

    def self.getInstance()
        return ThemeData.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class ThemeData
    @@instance = ThemeData.new()
end

