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
# package org.allbinary.logic.visual.dhtml.html.table

require "org/allbinary/logic/visual/dhtml/html/HtmlTag"

class HtmlCell < HtmlTag
    attr_accessor :END, :START, :ENDTAG, :HEIGHT, :WIDTH, :height, :width, :before, :body, :after

    def initialize_fields
        @END = ">"
        @START = "<td "
        @ENDTAG = "</td>"
        @HEIGHT = "height"
        @WIDTH = "width"
        @height = nil
        @width = nil
        @before = nil
        @body = nil
        @after = nil
    end
    

    def initialize(before, width, height, after)
        super()
        initialize_fields
        @before = String.new(before)
        @after = String.new(after)
        @height = String.new(height)
        @width = String.new(width)
        addAttribute(@HEIGHT, @height)
        addAttribute(@WIDTH, @width)
    end
    

    def addText(body)
        @body = body
    end
    

    def toString()
        stringUtil = StringUtil.getInstance()
        result = stringUtil.EMPTY_STRING
        attributeKeys = @otherAttributes.keySet().toArray()
        attributeSize = attributeKeys.length
        result = @before
        result += (@START).to_s
        result += (" ").to_s
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
        result += (@body).to_s
        result += (@ENDTAG).to_s
        result += (@after).to_s
        return result
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringUtil"

