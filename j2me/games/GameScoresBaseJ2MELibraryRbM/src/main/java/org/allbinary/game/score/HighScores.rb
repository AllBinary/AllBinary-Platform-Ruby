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
# package org.allbinary.game.score

require "java/lang/JavaOverload"
require "org/allbinary/game/score/HighScoresInterface"

module ::Org; module Allbinary; module Game; module Score

class HighScores
    include HighScoresInterface
    attr_accessor :orderedHighScoresList, :name, :heading, :columnOneHeading, :columnTwoHeading

    def jfields_org_allbinary_game_score_HighScores
        @orderedHighScoresList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @name = nil unless instance_variable_defined?(:@name)
        @heading = nil unless instance_variable_defined?(:@heading)
        @columnOneHeading = "Name"
        @columnTwoHeading = nil unless instance_variable_defined?(:@columnTwoHeading)
    end
    

    def initialize(name, heading, columnTwoHeading)
        jfields_org_allbinary_game_score_HighScores
        @name = name
        @heading = heading
        @columnTwoHeading = columnTwoHeading
    end
    

    def setList(orderedHighScoresList)
        @orderedHighScoresList = orderedHighScoresList
    end
    java_overload :setList, 1
    

    def getList()
        return @orderedHighScoresList
    end
    java_overload :getList, 0
    

    def getName()
        return @name
    end
    java_overload :getName, 0
    

    def getTotal()
        return self.getList().size()
    end
    java_overload :getTotal, 0
    

    def addHighScore(newHighScore)
        @orderedHighScoresList.add(newHighScore)
    end
    java_overload :addHighScore, 1
    

    def getHeading()
        return @heading
    end
    java_overload :getHeading, 0
    

    def getColumnOneHeading()
        return @columnOneHeading
    end
    java_overload :getColumnOneHeading, 0
    

    def getColumnTwoHeading()
        return @columnTwoHeading
    end
    java_overload :getColumnTwoHeading, 0
    

    # throws Exception
    def isBestScore(newHighScore)
        return false
    end
    java_overload :isBestScore, 1
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("HighScores: ")
        stringBuffer.append(@heading)
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().TOTAL_LABEL)
        stringBuffer.appendint(@orderedHighScoresList.size())
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :HighScore, "org/allbinary/game/score/HighScore" unless const_defined?(:HighScore, false)

end; end; end; end

