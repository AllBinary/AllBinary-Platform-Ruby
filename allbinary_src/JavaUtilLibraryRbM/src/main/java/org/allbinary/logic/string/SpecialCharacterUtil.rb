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
# package org.allbinary.logic.string


module ::Org; module Allbinary; module Logic; module StringPackage

class SpecialCharacterUtil
    

    def self.getHashMap()
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        commonPhoneStrings = ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance()
        stringUtil = StringUtil.getInstance()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put("!", stringUtil.EMPTY_STRING)
        hashMap.put("@", stringUtil.EMPTY_STRING)
        hashMap.put(commonPhoneStrings.POUND, stringUtil.EMPTY_STRING)
        hashMap.put("$", stringUtil.EMPTY_STRING)
        hashMap.put("%", stringUtil.EMPTY_STRING)
        hashMap.put("^", stringUtil.EMPTY_STRING)
        hashMap.put(commonSeps.AMPERSAND, stringUtil.EMPTY_STRING)
        hashMap.put(commonPhoneStrings.STAR, stringUtil.EMPTY_STRING)
        hashMap.put(commonSeps.PARENTHESIS_OPEN, stringUtil.EMPTY_STRING)
        hashMap.put(commonSeps.PARENTHESIS_CLOSE, stringUtil.EMPTY_STRING)
        hashMap.put(commonSeps.DASH, stringUtil.EMPTY_STRING)
        hashMap.put(commonSeps.UNDERSCORE, stringUtil.EMPTY_STRING)
        hashMap.put(::Org::Allbinary::Logic::MathPackage::MathData.getInstance().PLUS, stringUtil.EMPTY_STRING)
        hashMap.put(commonSeps.EQUALS, stringUtil.EMPTY_STRING)
        hashMap.put("\\", stringUtil.EMPTY_STRING)
        hashMap.put("|", stringUtil.EMPTY_STRING)
        hashMap.put(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().EXTENSION_SEP, stringUtil.EMPTY_STRING)
        hashMap.put(",", stringUtil.EMPTY_STRING)
        hashMap.put("<", stringUtil.EMPTY_STRING)
        hashMap.put(">", stringUtil.EMPTY_STRING)
        hashMap.put("?", stringUtil.EMPTY_STRING)
        hashMap.put(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR, stringUtil.EMPTY_STRING)
        hashMap.put("~", stringUtil.EMPTY_STRING)
        hashMap.put("`", stringUtil.EMPTY_STRING)
        return hashMap
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :MathData, "org/allbinary/logic/math/MathData" unless const_defined?(:MathData, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false)

end; end; end; end

