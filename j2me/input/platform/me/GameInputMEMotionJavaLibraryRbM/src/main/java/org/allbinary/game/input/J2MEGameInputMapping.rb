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
# package org.allbinary.game.input

require "org/allbinary/game/input/mapping/PersistentInputMapping"

class J2MEGameInputMapping < PersistentInputMapping
    

    def initialize()
        super(GamePersistanceStrings.getInstance().SAVED_INPUT_CONFIGURATION_RECORD_ID)
    end
    

    # throws Exception
    def init(abeClientInformation)
        @logUtil.putF(@commonStrings.START, self, @commonStrings.INIT)
        J2MEKeyFactory.getInstance().init()
        super(abeClientInformation)
        if self.getTotalMapped() == 0 || self.isDefaultNew()
            self.getInputMapping().addMapping(self.getDefault())
            self.save(abeClientInformation)
        end
    end
    

    def isDelete(input)
        if input == GameKeyFactory.getInstance().GAME_D
            return true
        else
            return false
        end
    end
    

    def isSystemInput(input)
        return false
    end
end

require "org/allbinary/game/configuration/persistance/GamePersistanceStrings"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"

