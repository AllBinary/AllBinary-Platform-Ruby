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


class AcceptableResponse
    attr_accessor :logUtil, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
    end
    

    def initialize(candidate, tagName, index)
        initialize_fields
        @logUtil.putF(tagName, self, @commonStrings.CONSTRUCTOR)
        acceptableResponseUtil = AcceptableResponseUtil.getInstance()
        acceptableResponseUtil.candidateVector.addAt(index, candidate)
        acceptableResponseUtil.tagNameVector.addAt(index, tagName)
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/http/AcceptableResponseUtil"

