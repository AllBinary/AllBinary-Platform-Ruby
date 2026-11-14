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
# package org.allbinary.game.input.mapping


class InputMapping
    attr_accessor :logUtil, :commonStrings, :hashtable, :mappedList

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @hashtable = StdUtil.getInstance().createHashtable()
        @mappedList = BasicArrayListD.new()
    end
    

    def initialize()
        initialize_fields
    end
    

    def getTotalMapped()
        return @hashtable.size()
    end
    

    def isDefaultNew()
        return false
    end
    

    def getDefault()
        return InputToGameKeyMapping.getNullInstance()
    end
    

    def removeAll()
        @hashtable.clear()
        @mappedList.clear()
    end
    

    def remove(input, mappedToInput)
        stringBuffer = StringMaker.new()
        stringUtil = StringUtil.getInstance()
        stringBuffer.append(CommonLabels.getInstance().START_LABEL)
        stringBuffer.append(stringUtil.toString(input))
        stringBuffer.append(" == ")
        stringBuffer.append(stringUtil.toString(mappedToInput))
        @logUtil.putF(stringBuffer.to_s, self, "InputMapping::remove")
        list = self.getMappedInput(input)
        if list.contains(mappedToInput)
            list.remove(mappedToInput)
            @mappedList.remove(mappedToInput)
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append("Removed: ")
            stringBuffer.append(stringUtil.toString(input))
            stringBuffer.append(" == ")
            stringBuffer.append(stringUtil.toString(mappedToInput))
            @logUtil.putF(stringBuffer.to_s, self, "InputMapping::remove")
        else
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append("Not Deleted: ")
            stringBuffer.append(stringUtil.toString(input))
            stringBuffer.append(" == ")
            stringBuffer.append(stringUtil.toString(mappedToInput))
            @logUtil.putF(stringBuffer.to_s, self, "InputMapping::remove")
        end
    end
    

    # throws Exception
    def addMapping(inputToGameKeyMapping)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    def add(input, mappedToInput)
        list = self.getMappedInput(input)
        if !list.contains(mappedToInput)
            list.add(mappedToInput)
            @mappedList.add(mappedToInput)
        end
    end
    

    def isMapped(input)
        return @mappedList.contains(input)
    end
    

    def getMappedInput(id)
        mappingInputCanBeNullList = @hashtable.get(id)
        if mappingInputCanBeNullList == nil
            list = BasicArrayListD.new()
            @hashtable.put(id, list)
            return list
        end
        return mappingInputCanBeNullList
    end
    

    def getHashtable()
        return @hashtable
    end
end

autoload :Input, "org/allbinary/game/input/Input"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :InputToGameKeyMapping, "org/allbinary/game/input/mapping/InputToGameKeyMapping"

