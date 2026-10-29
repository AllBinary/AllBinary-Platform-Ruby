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
# package org.allbinary.logic.communication.http


class AcceptableResponseUtil
    attr_accessor :candidateVector, :tagNameVector

    def initialize_fields
        @candidateVector = BasicArrayListD.new()
        @tagNameVector = BasicArrayListD.new()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return AcceptableResponseUtil.instance
    end
    

    def self.static_init
        TsUtil.getInstance().hashCode(AcceptableResponseFactory.getInstance().HTML)
    end
    

    def get(index)
        return @candidateVector.get(index)
    end
    

    def getTagName(index)
        return @tagNameVector.get(index)
    end
    

    def size()
        return @candidateVector.size()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/TsUtil"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/http/AcceptableResponseFactory"

class AcceptableResponseUtil
    @@instance = AcceptableResponseUtil.new()
end

AcceptableResponseUtil.static_init

