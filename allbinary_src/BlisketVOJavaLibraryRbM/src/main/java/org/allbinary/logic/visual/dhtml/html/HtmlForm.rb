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
# package org.allbinary.logic.visual.dhtml.html


class HtmlForm
    attr_accessor :FORMBEGIN, :END, :FORMEND, :ACTION, :GET, :POST, :METHODS, :METHOD, :method, :action, :inputs

    def initialize_fields
        @FORMBEGIN = "<form "
        @END = ">"
        @FORMEND = "</form>"
        @ACTION = "ACTION=\""
        @GET = "GET\""
        @POST = "POST\""
        @METHODS = [@GET, @POST]
        @METHOD = "METHOD=\""
        @method = nil
        @action = nil
        @inputs = nil
    end
    

    def initialize(action)
        initialize_fields
        @action = action
        @inputs = BasicArrayListD.new()
    end
    

    def setPost()
        @method = @POST
    end
    

    def setGet()
        @method = @GET
    end
    

    def addInput(htmlInput)
        @inputs.add(htmlInput)
    end
    

    def addTable(htmlTable)
        @inputs.add(htmlTable)
    end
    

    def toString()
        stringUtil = StringUtil.getInstance()
        result = stringUtil.EMPTY_STRING
        inputArray = @inputs.toArray()
        inputSize = inputArray.length
        result = @FORMBEGIN
        result += (@METHOD).to_s
        result += (@method).to_s
        result += ("\" ").to_s
        result += (@ACTION).to_s
        result += (@action).to_s
        result += ("\" ").to_s
        result += (@END).to_s
        (0...inputSize).each do |i|
            result += (inputArray[i].to_s).to_s
            result += (" ").to_s
        end
        result += (@FORMEND).to_s
        return result
    end
    alias_method :to_s, :toString
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/visual/dhtml/html/input/HtmlInput"
require "org/allbinary/logic/visual/dhtml/html/table/HtmlTable"

