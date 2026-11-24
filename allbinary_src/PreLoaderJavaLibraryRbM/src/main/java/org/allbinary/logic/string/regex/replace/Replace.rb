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


module ::Org; module Allbinary; module Logic; module StringPackage; module Regex; module Replace

class Replace
    attr_accessor :logUtil, :j2seUtil, :REPLACERS_, :ALL, :FOUND_KEY, :hashMap

    def jfields_org_allbinary_logic_string_regex_replace_Replace
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @j2seUtil = ::Org::Allbinary::J2SEUtil.getInstance()
        @REPLACERS_ = "Replacers: "
        @ALL = "all"
        @FOUND_KEY = "found key total: "
        @hashMap = nil unless instance_variable_defined?(:@hashMap)
    end

    def initialize(*args)
        case args.length
        when 2 then jnew_org_allbinary_logic_string_regex_replace_Replace_2(*args)
        when 1 then jnew_org_allbinary_logic_string_regex_replace_Replace_1(*args)
        else raise ArgumentError, "No constructor of Replace takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_string_regex_replace_Replace_2(*java_overload_args)
        return jnew_org_allbinary_logic_string_regex_replace_Replace_2_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::String))
        return jnew_org_allbinary_logic_string_regex_replace_Replace_2_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_string_regex_replace_Replace_2_1(key, value)
        jfields_org_allbinary_logic_string_regex_replace_Replace
        @hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        @hashMap.put([key], [value])
    end
    

    def jnew_org_allbinary_logic_string_regex_replace_Replace_2_2(keys, values)
        jfields_org_allbinary_logic_string_regex_replace_Replace
        @hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        @hashMap.put(keys, values)
    end
    

    def jnew_org_allbinary_logic_string_regex_replace_Replace_1(hashMap)
        jfields_org_allbinary_logic_string_regex_replace_Replace
        @hashMap = hashMap
    end
    

    def all(replace)
        return self.upTo(replace, (-2147483648))
    end
    

    def upTo(replace, total)
        newStringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().REPLACE)
                @logUtil.putF("Total Number Of Replaces: " + (totalNumberOfReplaces).to_s, self, @ALL)
            end
        end
        return replace
    end
    

    def line(replace)
        newStringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().REPLACE)
            @logUtil.putF("Total Number Of Replaces: " + (totalNumberOfReplaces).to_s, self, @ALL)
        end
        return replace
    end
    

    def self.main(args)
        begin
            stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
            appUrlGlobals = ::Org::Allbinary::Globals::AppUrlGlobals.new()
            appUrlGlobals.setWebappPath("G:/mnt/bc/mydev/work/allbinary_src/ToolsJavaLibrary/tools")
            ::Org::Allbinary::Globals::URLGLOBALS.init(appUrlGlobals)
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

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; autoload :J2SEUtil, "org/allbinary/J2SEUtil" unless const_defined?(:J2SEUtil, false); end; end
module ::Org; module Allbinary; module Globals; autoload :AppUrlGlobals, "org/allbinary/globals/AppUrlGlobals" unless const_defined?(:AppUrlGlobals, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
require "java/lang/System"

end; end; end; end; end; end

