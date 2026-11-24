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

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/cache/IndexedBasicArrayListCache"

module ::Org; module Allbinary; module Logic; module Util; module Cache

class KeylessBasicArrayListCache < IndexedBasicArrayListCache
    attr_accessor :logUtil, :basicArrayListUtil

    def jfields_org_allbinary_logic_util_cache_KeylessBasicArrayListCache
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @basicArrayListUtil = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance()
    end
    

    def initialize()
        super()
        jfields_org_allbinary_logic_util_cache_KeylessBasicArrayListCache
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
    java_overload :get, 0
    

    def clear()
        KeylessBasicArrayListCache.superclass.java_super_method(:clear, 0).bind(self).call()
        basicArrayList = nil
        (@list.size() - 1).step(0, -(1)) do |index|
            basicArrayList = (@list.objectArray[index])
            basicArrayList.clear()
        end
    end
    java_overload :clear, 0
    

    def log()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
    java_overload :log, 0
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end

end; end; end; end; end

