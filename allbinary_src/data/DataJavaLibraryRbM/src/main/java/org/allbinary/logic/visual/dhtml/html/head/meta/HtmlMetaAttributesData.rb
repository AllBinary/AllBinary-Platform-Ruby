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


class HtmlMetaAttributesData
    attr_accessor :NAME_VALUE, :HTTP_EQUIV_VALUE

    def initialize_fields
        @NAME_VALUE = "name"
        @HTTP_EQUIV_VALUE = "http-equiv"
    end
    

    def self.getInstance()
        return HtmlMetaAttributesData.instance
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

class HtmlMetaAttributesData
    @@instance = HtmlMetaAttributesData.new()
end

