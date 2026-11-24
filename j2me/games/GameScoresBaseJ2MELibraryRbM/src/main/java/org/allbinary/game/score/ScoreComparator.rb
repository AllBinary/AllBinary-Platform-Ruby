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
# require "java/io/EOFException"
# require "java/io/IOException"
require "javax/microedition/rms/RecordComparator"

module ::Org; module Allbinary; module Game; module Score

class ScoreComparator
    include ::Javax::Microedition::Rms::RecordComparator
    attr_accessor :logUtil, :isHighestBest

    def jfields_org_allbinary_game_score_ScoreComparator
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @isHighestBest = nil unless instance_variable_defined?(:@isHighestBest)
    end
    

    def initialize(isHighestBest)
        jfields_org_allbinary_game_score_ScoreComparator
        @isHighestBest = isHighestBest
    end
    

    def getBestScore()
        return (@isHighestBest ? 9223372036854775807 : 0)
    end
    java_overload :getBestScore, 0
    

    def compare(recordOne, recordTwo)
        byteArrayInputStreamOne = ::Java::Io::ByteArrayInputStream.new(recordOne)
        inputStreamOne = ::Java::Io::DataInputStream.new(byteArrayInputStreamOne)
        byteArrayInputStreamTwo = ::Java::Io::ByteArrayInputStream.new(recordTwo)
        inputStreamTwo = ::Java::Io::DataInputStream.new(byteArrayInputStreamTwo)
        scoreOne = 0
        scoreTwo = 0
        begin
            inputStreamOne.readUTF()
            inputStreamTwo.readUTF()
            scoreOne = inputStreamOne.readLong()
            scoreTwo = inputStreamTwo.readLong()
        rescue EOFException => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "compare", e)
        rescue IOError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "compare", e)
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "compare", e)
        end
        if @isHighestBest
            return self.getHighTooLow(scoreOne, scoreTwo)
        else
            return self.getLowTooHigh(scoreOne, scoreTwo)
        end
    end
    java_overload :compare, 2
    

    def getHighTooLow(scoreOne, scoreTwo)
        if scoreOne > scoreTwo
            return ::Javax::Microedition::Rms::RecordComparator::PRECEDES
        elsif scoreOne < scoreTwo
            return ::Javax::Microedition::Rms::RecordComparator::FOLLOWS
        else
            return ::Javax::Microedition::Rms::RecordComparator::EQUIVALENT
        end
    end
    java_overload :getHighTooLow, 2
    

    def getLowTooHigh(scoreOne, scoreTwo)
        if scoreOne < scoreTwo
            return ::Javax::Microedition::Rms::RecordComparator::PRECEDES
        elsif scoreOne > scoreTwo
            return ::Javax::Microedition::Rms::RecordComparator::FOLLOWS
        else
            return ::Javax::Microedition::Rms::RecordComparator::EQUIVALENT
        end
    end
    java_overload :getLowTooHigh, 2
end

module ::Java; module Io; autoload :ByteArrayInputStream, "java/io/ByteArrayInputStream" unless const_defined?(:ByteArrayInputStream, false); end; end
module ::Java; module Io; autoload :DataInputStream, "java/io/DataInputStream" unless const_defined?(:DataInputStream, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end

