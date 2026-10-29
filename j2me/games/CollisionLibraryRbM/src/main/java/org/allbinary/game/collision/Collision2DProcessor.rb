# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.collision

require "org/allbinary/game/collision/CollisionProcessor"

class Collision2DProcessor < CollisionProcessor
    

    def isCollision(myLayer, myLayer2)
        if myLayer2.getXP() >= myLayer.getX2() || myLayer2.getYP() >= myLayer.getY2() || myLayer2.getX2() <= myLayer.getXP() || myLayer2.getY2() <= myLayer.getYP()
            return false
        else
            return true
        end
    end
end

require "org/allbinary/layer/AllBinaryLayer"

