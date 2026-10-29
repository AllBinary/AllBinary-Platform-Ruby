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


class HtmlTags
    attr_accessor :htmlTagVector

    def initialize_fields
        @htmlTagVector = nil
    end
    

    def initialize()
        initialize_fields
        @htmlTagVector = BasicArrayListD.new()
    end
    

    def get(index)
        return @htmlTagVector.get(index)
    end
    

    def add(htmlTag)
        @htmlTagVector.add(htmlTag)
    end
    

    def size()
        return @htmlTagVector.size()
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/visual/dhtml/html/HtmlTag"

