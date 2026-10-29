# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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
# package org.allbinary.game.layer


class LayerUtil
    

    def self.toString(hashtable, x, y, z)
        commonSeps = CommonSeps.getInstance()
        positionStrings = PositionStrings.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append(LayerUtil::HASHTABLE)
        stringBuffer.append(StringUtil.getInstance().toString(hashtable))
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.appendint(x)
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.appendint(y)
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.appendint(z)
        return stringBuffer.to_s
    end
end

require "org/allbinary/string/CommonSeps"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/math/PositionStrings"
require "org/allbinary/util/ABHashtable"

class LayerUtil
    HASHTABLE = "Hashtable: "
end

