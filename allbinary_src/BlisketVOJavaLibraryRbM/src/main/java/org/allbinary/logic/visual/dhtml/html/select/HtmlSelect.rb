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

require "java/lang/JavaOverload"
require "org/allbinary/logic/visual/dhtml/html/HtmlTag"

module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Html; module Select

class HtmlSelect < ::Org::Allbinary::Logic::Visual::Dhtml::Html::HtmlTag
    attr_accessor :END, :STARTSELECT, :ENDSELECT, :SIZE, :NAME, :STARTOPTION, :SELETED, :ENDOPTION, :before, :name, :after, :size, :selected, :options, :multiple, :isMultipleSelect

    def jfields_org_allbinary_logic_visual_dhtml_html_select_HtmlSelect
        @END = ">"
        @STARTSELECT = "<SELECT "
        @ENDSELECT = "</SELECT>"
        @SIZE = "SIZE=\""
        @NAME = "NAME=\""
        @STARTOPTION = "<OPTION"
        @SELETED = "SELECTED"
        @ENDOPTION = "</OPTION>"
        @before = nil unless instance_variable_defined?(:@before)
        @name = nil unless instance_variable_defined?(:@name)
        @after = nil unless instance_variable_defined?(:@after)
        @size = nil unless instance_variable_defined?(:@size)
        @selected = nil unless instance_variable_defined?(:@selected)
        @options = nil unless instance_variable_defined?(:@options)
        @multiple = "multiple"
        @isMultipleSelect = false
    end
    

    def initialize(before, size, name, after)
        super()
        jfields_org_allbinary_logic_visual_dhtml_html_select_HtmlSelect
        @before = before
        @size = size
        @name = name
        @after = after
        @options = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def addOption(key)
        @options.add(key)
    end
    java_overload :addOption, 1
    

    def addOptions(fileName)
        begin
            lineReader = ::Org::Allbinary::Logic::Io::LineReader.new(fileName)
            while lineReader.hasNext()
                option = lineReader.next_()
                self.addOption(option)
            end
        rescue StandardError => e
            self.addOption("Error")
        end
    end
    java_overload :addOptions, 1
    

    def setSelected(selected)
        @selected = selected
    end
    java_overload :setSelected, 1
    

    def isMultiple()
        return @isMultipleSelect
    end
    java_overload :isMultiple, 0
    

    def setMultiple(value)
        @isMultipleSelect = value
    end
    java_overload :setMultiple, 1
    

    def getOptions()
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
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
    java_overload :getOptions, 0
    

    def toString()
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
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
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :LineReader, "org/allbinary/logic/io/LineReader" unless const_defined?(:LineReader, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

end; end; end; end; end; end; end

