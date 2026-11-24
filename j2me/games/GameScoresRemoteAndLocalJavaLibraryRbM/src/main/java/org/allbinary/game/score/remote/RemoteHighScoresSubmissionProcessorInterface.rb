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
# package org.allbinary.game.score.remote


module ::Org; module Allbinary; module Game; module Score; module Remote

module RemoteHighScoresSubmissionProcessorInterface
    

    def process(remoteHighScores, abeClientInformation, highScore)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Game; module Score; autoload :HighScore, "org/allbinary/game/score/HighScore" unless const_defined?(:HighScore, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
autoload :RemoteHighScores, "org/allbinary/game/score/remote/RemoteHighScores" unless const_defined?(:RemoteHighScores, false)

end; end; end; end; end

