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
# package org.allbinary.logic.visual.dhtml.html.input

require "org/allbinary/logic/visual/dhtml/html/HtmlTag"

class HtmlInput < HtmlTag
    attr_accessor :END, :STARTINPUT, :ENDINPUT, :TYPE, :NAME, :before, :type, :name, :after

    def initialize_fields
        @END = ">"
        @STARTINPUT = "<INPUT "
        @ENDINPUT = "</INPUT>"
        @TYPE = "TYPE=\""
        @NAME = "NAME=\""
        @before = nil
        @type = nil
        @name = nil
        @after = nil
    end
    

    def initialize(before, type, name, after)
        super()
        initialize_fields
        @before = before
        @type = type
        @name = name
        @after = after
    end
    

    def toString()
        stringUtil = StringUtil.getInstance()
        result = stringUtil.EMPTY_STRING
        attributeKeys = @otherAttributes.keySet().toArray()
        attributeSize = attributeKeys.length
        result = @before
        result += (@STARTINPUT).to_s
        result += (@TYPE).to_s
        result += (@type).to_s
        result += ("\" ").to_s
        result += (@NAME).to_s
        result += (@name).to_s
        result += ("\" ").to_s
        (0...attributeSize).each do |i|
            key = attributeKeys[i]
            value = @otherAttributes.get(key)
            if value != nil && (value <=> stringUtil.EMPTY_STRING) != 0
                result += (key).to_s
                result += ("=\"").to_s
                result += (value).to_s
                result += ("\" ").to_s
            end
        end
        result += (@END).to_s
        result += (@ENDINPUT).to_s
        result += (@after).to_s
        return result
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringUtil"

