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
# package org.allbinary.logic.visual.transform.template.customizer.widgets.title


class TitleData
    attr_accessor :NAME, :TEXT, :VIEWNAMEKEY, :MAXLEN

    def initialize_fields
        @NAME = "TITLE_NAME"
        @TEXT = "TITLE_TEXT"
        @VIEWNAMEKEY = "Title"
        @MAXLEN = 255
    end
    

    def self.getInstance()
        return TitleData.instance
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

class TitleData
    @@instance = TitleData.new()
end

