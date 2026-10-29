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
# package org.allbinary.logic.visual.dhtml.html.select

require "org/allbinary/logic/visual/dhtml/html/HtmlTag"

class HtmlSelect < HtmlTag
    attr_accessor :END, :STARTSELECT, :ENDSELECT, :SIZE, :NAME, :STARTOPTION, :SELETED, :ENDOPTION, :before, :name, :after, :size, :selected, :options, :multiple, :isMultipleSelect

    def initialize_fields
        @END = ">"
        @STARTSELECT = "<SELECT "
        @ENDSELECT = "</SELECT>"
        @SIZE = "SIZE=\""
        @NAME = "NAME=\""
        @STARTOPTION = "<OPTION"
        @SELETED = "SELECTED"
        @ENDOPTION = "</OPTION>"
        @before = nil
        @name = nil
        @after = nil
        @size = nil
        @selected = nil
        @options = nil
        @multiple = "multiple"
        @isMultipleSelect = false
    end
    

    def initialize(before, size, name, after)
        super()
        initialize_fields
        @before = before
        @size = size
        @name = name
        @after = after
        @options = BasicArrayListD.new()
    end
    

    def addOption(key)
        @options.add(key)
    end
    

    def addOptions(fileName)
        begin
            lineReader = LineReader.new(fileName)
            while lineReader.hasNext()
                option = lineReader.next_()
                self.addOption(option)
            end
        rescue StandardError => e
            self.addOption("Error")
        end
    end
    

    def setSelected(selected)
        @selected = selected
    end
    

    def isMultiple()
        return @isMultipleSelect
    end
    

    def setMultiple(value)
        @isMultipleSelect = value
    end
    

    def getOptions()
        stringUtil = StringUtil.getInstance()
        result = stringUtil.EMPTY_STRING
        optionsArray = @options.toArray()
        optionsSize = optionsArray.length
        (0...optionsSize).each do |i|
            value = optionsArray[i]
            if value != nil && value.compareTo(stringUtil.EMPTY_STRING) != 0
                result += (@STARTOPTION).to_s
                result += (@END).to_s
                result += (value).to_s
                result += (@ENDOPTION).to_s
            end
        end
        return result
    end
    

    def toString()
        stringUtil = StringUtil.getInstance()
        result = stringUtil.EMPTY_STRING
        attributeKeys = @otherAttributes.keySet().toArray()
        attributeSize = attributeKeys.length
        result = @before
        result += (@STARTSELECT).to_s
        result += (@NAME).to_s
        result += (@name).to_s
        result += ("\" ").to_s
        result += (@SIZE).to_s
        result += (@size).to_s
        result += ("\" ").to_s
        (0...attributeSize).each do |i|
            key = attributeKeys[i]
            value = @otherAttributes.get(key)
            if value != nil && value.compareTo(stringUtil.EMPTY_STRING) != 0
                result += (key).to_s
                result += ("=\"").to_s
                result += (value).to_s
                result += ("\" ").to_s
            end
        end
        if self.isMultiple()
            result += (" " + @multiple + " ").to_s
        end
        result += (@END).to_s
        result += (self.getOptions()).to_s
        result += (@ENDSELECT).to_s
        result += (@after).to_s
        return result
    end
    alias_method :to_s, :toString
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/io/LineReader"
require "org/allbinary/logic/string/StringUtil"

