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


module RTSInterface
    

    def isSelfUpgradeable()
        raise NotImplementedError
    end
    

    def isCompleted()
        raise NotImplementedError
    end
    

    def getPercentComplete()
        raise NotImplementedError
    end
    

    def getLevel()
        raise NotImplementedError
    end
    

    def getMaxLevel()
        raise NotImplementedError
    end
    

    def getCost()
        raise NotImplementedError
    end
    

    def downgrade()
        raise NotImplementedError
    end
    

    def getDowngradeCost()
        raise NotImplementedError
    end
    

    def isDowngradeable()
        raise NotImplementedError
    end
    

    def getUpgradeCost()
        raise NotImplementedError
    end
    

    def isUpgradeable()
        raise NotImplementedError
    end
    

    def upgrade()
        raise NotImplementedError
    end
end

