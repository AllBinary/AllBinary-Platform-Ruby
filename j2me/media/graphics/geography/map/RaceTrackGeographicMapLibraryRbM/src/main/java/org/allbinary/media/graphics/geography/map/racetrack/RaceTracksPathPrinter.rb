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
# package org.allbinary.media.graphics.geography.map.racetrack


class RaceTracksPathPrinter
    

    def printPath(list)
        size = list.size()
        (0...size).each do |index|
            anyType = list.get(index)
            PreLogUtil.put(StringMaker.new().append("pathList.add(cellPositionFactory.getInstance").append(anyType.to_s).append(");").to_s, self, "printPath")
        end
    end
    

    def printPaths(list)
        size = list.size()
        (0...size).each do |index|
            puts(StringMaker.new().append(" Path ").appendint(index).append(CommonLabels.getInstance().COLON_SEP).to_s)
            self.printPath(list.get(index))
        end
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/string/CommonLabels"
require "java/lang/System"

