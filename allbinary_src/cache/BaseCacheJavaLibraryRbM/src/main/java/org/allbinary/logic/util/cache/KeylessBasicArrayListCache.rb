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
# package org.allbinary.logic.util.cache

require "org/allbinary/logic/util/cache/IndexedBasicArrayListCache"

class KeylessBasicArrayListCache < IndexedBasicArrayListCache
    attr_accessor :logUtil, :basicArrayListUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @basicArrayListUtil = BasicArrayListUtil.getInstance()
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def get()
        begin
            if @index >= @list.size()
                self.addDefault()
            end
            list = self.getAt(((@index += 1) - 1))
            return list
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.GET, e)
            return @basicArrayListUtil.getImmutableInstance()
        end
    end
    

    def clear()
        super()
        basicArrayList = nil
        (@list.size() - 1).step(0, -(1)) do |index|
            basicArrayList = (@list.objectArray[index])
            basicArrayList.clear()
        end
    end
    

    def log()
        stringBuffer = StringMaker.new()
        stringBuffer.append("S: ")
        stringBuffer.appendint(@list.size())
        _S_LABEL = " s: "
        basicArrayList = nil
        (@list.size() - 1).step(0, -(1)) do |index|
            stringBuffer.append(_S_LABEL)
            basicArrayList = (@list.objectArray[index])
            stringBuffer.appendint(basicArrayList.size())
        end
        return stringBuffer.to_s
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListUtil"

