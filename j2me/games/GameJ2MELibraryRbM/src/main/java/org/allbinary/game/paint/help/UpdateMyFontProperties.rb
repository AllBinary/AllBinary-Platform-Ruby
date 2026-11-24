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
# package org.allbinary.game.paint.help


module ::Org; module Allbinary; module Game; module Paint; module Help

class UpdateMyFontProperties
    attr_accessor :actionStringArray, :keymappingBeginWidthArray, :actionStringDeltaXArray, :inputDeltaXArray, :sepArray, :sepWidthArray, :charHeight

    def jfields_org_allbinary_game_paint_help_UpdateMyFontProperties
        @actionStringArray = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().getArrayInstance()
        @keymappingBeginWidthArray = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_INT_ARRAY
        @actionStringDeltaXArray = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_INT_ARRAY
        @inputDeltaXArray = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_INT_ARRAY_ARRAY
        @sepArray = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY_OF_ARRAYS
        @sepWidthArray = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_INT_ARRAY_ARRAY
        @charHeight = 0 unless instance_variable_defined?(:@charHeight)
    end

    def initialize
        jfields_org_allbinary_game_paint_help_UpdateMyFontProperties
    end
end

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

end; end; end; end; end

