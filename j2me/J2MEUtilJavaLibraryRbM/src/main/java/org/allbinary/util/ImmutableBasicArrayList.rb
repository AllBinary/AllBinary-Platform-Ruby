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
# package org.allbinary.util

require "org/allbinary/util/BasicArrayListS"

class ImmutableBasicArrayList < BasicArrayListS
    attr_accessor :name

    def initialize_fields
        @name = nil
    end
    

    def initialize(name, size)
        super(size)
        initialize_fields
        @name = name
    end
    

    def add(e)
        ForcedLogUtil.log(@name, self)
        return true
    end
    

    def addAt(index, element)
        ForcedLogUtil.log(@name, self)
    end
    

    def toString()
        return @name
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/communication/log/ForcedLogUtil"

