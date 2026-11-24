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


module ::Org; module Allbinary; module Game; module Input; module Mapping

class InputMapping
    attr_accessor :logUtil, :commonStrings, :hashtable, :mappedList

    def jfields_org_allbinary_game_input_mapping_InputMapping
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @hashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
        @mappedList = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def initialize()
        jfields_org_allbinary_game_input_mapping_InputMapping
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
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().START_LABEL)
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
            list = ::Org::Allbinary::Util::BasicArrayListD.new()
            @hashtable.put(id, list)
            return list
        end
        return mappingInputCanBeNullList
    end
    

    def getHashtable()
        return @hashtable
    end
end

module ::Org; module Allbinary; module Game; module Input; autoload :Input, "org/allbinary/game/input/Input" unless const_defined?(:Input, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :InputToGameKeyMapping, "org/allbinary/game/input/mapping/InputToGameKeyMapping" unless const_defined?(:InputToGameKeyMapping, false)

end; end; end; end; end

