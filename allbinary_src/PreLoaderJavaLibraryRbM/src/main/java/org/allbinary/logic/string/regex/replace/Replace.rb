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
# package org.allbinary.logic.string.regex.replace


class Replace
    attr_accessor :logUtil, :j2seUtil, :REPLACERS_, :ALL, :FOUND_KEY, :hashMap

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @j2seUtil = J2SEUtil.getInstance()
        @REPLACERS_ = "Replacers: "
        @ALL = "all"
        @FOUND_KEY = "found key total: "
        @hashMap = nil
    end

    def initialize(*args)
        case args.length
        when 2 then constructor2(*args)
        when 2 then constructor2(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor2(key, value)
        initialize_fields
        @hashMap = StdUtil.getInstance().createHashMap()
        @hashMap.put([key], [value])
    end
    

    def constructor2(keys, values)
        initialize_fields
        @hashMap = StdUtil.getInstance().createHashMap()
        @hashMap.put(keys, values)
    end
    

    def constructor1(hashMap)
        initialize_fields
        @hashMap = hashMap
    end
    

    def all(replace)
        return self.upTo(replace, (-2147483648))
    end
    

    def upTo(replace, total)
        newStringBuffer = StringMaker.new()
        totalNumberOfReplaces = 0
        keys = nil
        values = nil
        keyArray = @j2seUtil.getHashMapAsArray(@hashMap)
        size = keyArray.length
        (0...size).each do |index2|
            keys = keyArray[index2]
            values = @hashMap.get(keys)
            foundTotal = 0
            index = 0
            nextKey = nil
            end_ = 0
            nextSecondKey = nil
            begin2 = 0
            while index < replace.length
                begin_ = (replace.index(keys[0], index) || -1)
                if begin_ != -1
                    foundTotal += 1
                    if foundTotal % 100 == 0
                        puts(@FOUND_KEY + (foundTotal).to_s)
                    end
                    nextKey = keys[0]
                    end_ = begin_ + nextKey.length
                    newStringBuffer.delete(0, newStringBuffer.length())
                    newStringBuffer.append(replace[0...begin_])
                    newStringBuffer.append(values[0])
                    index = newStringBuffer.length()
                    newStringBuffer.append(replace[end_...replace.length])
                    replace = newStringBuffer.to_s
                    if keys.length > 1
                        nextSecondKey = keys[1]
                        begin2 = (replace.index(nextSecondKey, index) || -1)
                        if begin2 != -1
                            end2 = begin2 + nextSecondKey.length
                            newStringBuffer.delete(0, newStringBuffer.length())
                            newStringBuffer.append(replace[0...begin2])
                            newStringBuffer.append(values[1])
                            index = newStringBuffer.length()
                            newStringBuffer.append(replace[end2...replace.length])
                            replace = newStringBuffer.to_s
                        end
                    end
                    totalNumberOfReplaces += 1
                    if total != (-2147483648) && totalNumberOfReplaces >= total
                        break
                    end
                else
                    break
                end
            end
        end
        if totalNumberOfReplaces > 0
            if LogConfigTypes::LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().REPLACE)
                @logUtil.putF("Total Number Of Replaces: " + (totalNumberOfReplaces).to_s, self, @ALL)
            end
        end
        return replace
    end
    

    def line(replace)
        newStringBuffer = StringMaker.new()
        totalNumberOfReplaces = 0
        key = nil
        value = nil
        keyArray = @j2seUtil.getHashMapAsArray(@hashMap)
        size = keyArray.length
        (0...size).each do |index2|
            key = keyArray[index2]
            value = @hashMap.get(key)
            index = 0
            while index < replace.length
                newStringBuffer.delete(0, newStringBuffer.length())
                begin_ = (replace.index(key, index) || -1)
                if begin_ != -1
                    puts(@FOUND_KEY)
                    end_ = (replace.index("\n", begin_ + key.length) || -1) + 1
                    if end_ >= 0
                        newStringBuffer.append(replace[0...begin_])
                        index = newStringBuffer.length()
                        newStringBuffer.append(replace[end_...replace.length])
                        replace = newStringBuffer.to_s
                        totalNumberOfReplaces += 1
                    end
                else
                    break
                end
            end
        end
        if LogConfigTypes::LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().REPLACE)
            @logUtil.putF("Total Number Of Replaces: " + (totalNumberOfReplaces).to_s, self, @ALL)
        end
        return replace
    end
    

    def self.main(args)
        begin
            stringUtil = StringUtil.getInstance()
            appUrlGlobals = AppUrlGlobals.new()
            appUrlGlobals.setWebappPath("G:/mnt/bc/mydev/work/allbinary_src/ToolsJavaLibrary/tools")
            URLGLOBALS.init(appUrlGlobals)
            testString = "\"super gun\" big tank \"goodgunriflegun"
            replace = Replace.new("gun", "abcdefghijklmnopqrstuxwxyzabcdefghijklmnopqrstuxwxyz")
            puts("Old String: " + testString)
            testString = replace.all(testString)
            puts("New String: " + testString)
            replaceCat = Replace.new("abcdefghijklmnopqrstuxwxyzabcdefghijklmnopqrstuxwxyz", stringUtil.EMPTY_STRING)
            testString = replaceCat.all(testString)
            puts("New String: " + testString)
        rescue StandardError => e
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/J2SEUtil"
require "org/allbinary/globals/AppUrlGlobals"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypes"
require "java/lang/System"

