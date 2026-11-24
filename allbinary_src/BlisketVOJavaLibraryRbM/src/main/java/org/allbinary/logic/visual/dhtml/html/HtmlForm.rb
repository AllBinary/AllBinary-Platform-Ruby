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


module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Html

class HtmlForm
    attr_accessor :FORMBEGIN, :END, :FORMEND, :ACTION, :GET, :POST, :METHODS, :METHOD, :method, :action, :inputs

    def jfields_org_allbinary_logic_visual_dhtml_html_HtmlForm
        @FORMBEGIN = "<form "
        @END = ">"
        @FORMEND = "</form>"
        @ACTION = "ACTION=\""
        @GET = "GET\""
        @POST = "POST\""
        @METHODS = [@GET, @POST]
        @METHOD = "METHOD=\""
        @method = nil unless instance_variable_defined?(:@method)
        @action = nil unless instance_variable_defined?(:@action)
        @inputs = nil unless instance_variable_defined?(:@inputs)
    end
    

    def initialize(action)
        jfields_org_allbinary_logic_visual_dhtml_html_HtmlForm
        @action = action
        @inputs = ::Org::Allbinary::Util::BasicArrayListD.new()
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
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
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

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Html; module Input; autoload :HtmlInput, "org/allbinary/logic/visual/dhtml/html/input/HtmlInput" unless const_defined?(:HtmlInput, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Html; module Table; autoload :HtmlTable, "org/allbinary/logic/visual/dhtml/html/table/HtmlTable" unless const_defined?(:HtmlTable, false); end; end; end; end; end; end; end

end; end; end; end; end; end

