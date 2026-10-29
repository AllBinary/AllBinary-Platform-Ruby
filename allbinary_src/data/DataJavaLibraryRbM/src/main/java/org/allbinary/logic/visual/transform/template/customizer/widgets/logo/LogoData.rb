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
# package org.allbinary.logic.visual.transform.template.customizer.widgets.logo


class LogoData
    attr_accessor :NAME, :IMAGEPATH, :IMAGEFILENAME, :IMAGE

    def initialize_fields
        @NAME = "LOGO_NAME"
        @IMAGEPATH = "LOGO_IMAGE_PATH"
        @IMAGEFILENAME = "LOGO_IMAGE_FILE_NAME"
        @IMAGE = "LOGO_IMAGE"
    end
    

    def self.getInstance()
        return LogoData.instance
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

class LogoData
    @@instance = LogoData.new()
end

