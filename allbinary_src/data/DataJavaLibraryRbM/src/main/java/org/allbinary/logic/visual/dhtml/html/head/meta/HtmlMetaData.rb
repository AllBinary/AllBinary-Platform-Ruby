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
# package org.allbinary.logic.visual.dhtml.html.head.meta


class HtmlMetaData
    attr_accessor :NAME, :LABEL, :VALUE

    def initialize_fields
        @NAME = "HTMLMETA_NAME"
        @LABEL = "HTMLMETA_LABEL"
        @VALUE = "meta"
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getInstance()
        return HtmlMetaData.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class HtmlMetaData
    @@instance = HtmlMetaData.new()
end

