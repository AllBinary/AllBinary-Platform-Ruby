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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Game; module Score

class HighScore
    attr_accessor :id, :name, :gameInfo, :score, :scoreString

    def jfields_org_allbinary_game_score_HighScore
        @id = nil unless instance_variable_defined?(:@id)
        @name = nil unless instance_variable_defined?(:@name)
        @gameInfo = nil unless instance_variable_defined?(:@gameInfo)
        @score = nil unless instance_variable_defined?(:@score)
        @scoreString = nil unless instance_variable_defined?(:@scoreString)
    end
    

    def initialize(id, name, gameInfo, score)
        jfields_org_allbinary_game_score_HighScore
        @id = id
        @name = name
        @gameInfo = gameInfo
        @score = score
        @scoreString = (@score).to_s
    end
    

    def getId()
        return @id
    end
    

    def getName()
        return @name
    end
    

    def getScore()
        return @score
    end
    

    # throws Exception
    def getAsBytes()
        byteArrayOutputStream = ::Java::Io::ByteArrayOutputStream.new()
        outputStream = ::Java::Io::DataOutputStream.new(byteArrayOutputStream)
        outputStream.writeUTF(self.getName())
        outputStream.writeLong(self.getScore())
        return byteArrayOutputStream.toByteArray()
    end
    

    def getGameInfo()
        return @gameInfo
    end
    

    def getScoreString()
        return @scoreString
    end
    

    def setName(name)
        @name = name
    end
    

    def toString()
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@name).append(commonSeps.COLON).appendlong(@score).append(commonSeps.FORWARD_SLASH).append(@scoreString).to_s
    end
    alias_method :to_s, :toString
end

module ::Java; module Io; autoload :ByteArrayOutputStream, "java/io/ByteArrayOutputStream" unless const_defined?(:ByteArrayOutputStream, false); end; end
module ::Java; module Io; autoload :DataOutputStream, "java/io/DataOutputStream" unless const_defined?(:DataOutputStream, false); end; end
module ::Org; module Allbinary; module Game; autoload :GameInfo, "org/allbinary/game/GameInfo" unless const_defined?(:GameInfo, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end

end; end; end; end

