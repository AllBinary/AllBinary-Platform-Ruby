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


class HtmlMetaAttributeDataFactory
    attr_accessor :NAME, :HTTP_EQUIV, :CONTENT

    def initialize_fields
        @NAME = HtmlMetaAttributeData.new(0, "HTMLMETA_ATTRIBUTE_NAME")
        @HTTP_EQUIV = HtmlMetaAttributeData.new(1, "HTMLMETA_ATTRIBUTE_HTTPEQUIV")
        @CONTENT = HtmlMetaAttributeData.new(2, "HTMLMETA_ATTRIBUTE_CONTENT")
    end
    

    def self.getInstance()
        return HtmlMetaAttributeDataFactory.instance
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

require "org/allbinary/logic/visual/dhtml/html/head/meta/HtmlMetaAttributeData"

class HtmlMetaAttributeDataFactory
    @@instance = HtmlMetaAttributeDataFactory.new()
end

