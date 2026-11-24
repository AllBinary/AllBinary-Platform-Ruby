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
# package org.allbinary.game.input.mapping


module ::Org; module Allbinary; module Game; module Input; module Mapping

class GameInputMapping
    attr_accessor :name, :gameKey

    def jfields_org_allbinary_game_input_mapping_GameInputMapping
        @name = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @gameKey = ::Org::Allbinary::Game::Input::GameKey::NULL_GAME_KEY
    end
    

    def initialize(name, gameKey)
        jfields_org_allbinary_game_input_mapping_GameInputMapping
        self.setName(name)
        self.setGameKey(gameKey)
    end
    

    def setGameKey(gameKey)
        @gameKey = gameKey
    end
    

    def getGameKey()
        return @gameKey
    end
    

    def setName(name)
        @name = name
    end
    

    def getName()
        return @name
    end
end

module ::Org; module Allbinary; module Game; module Input; autoload :GameKey, "org/allbinary/game/input/GameKey" unless const_defined?(:GameKey, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

end; end; end; end; end

