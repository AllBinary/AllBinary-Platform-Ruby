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
# package org.allbinary.input.automation.module.game


module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Game

module MagicCharacterGameObjectInterface
    

    def getHitPointGameObjectInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getMagicGameObjectInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :HitPointGameObjectInterface, "org/allbinary/input/automation/module/game/HitPointGameObjectInterface" unless const_defined?(:HitPointGameObjectInterface, false)
autoload :MagicGameObjectInterface, "org/allbinary/input/automation/module/game/MagicGameObjectInterface" unless const_defined?(:MagicGameObjectInterface, false)

end; end; end; end; end; end

