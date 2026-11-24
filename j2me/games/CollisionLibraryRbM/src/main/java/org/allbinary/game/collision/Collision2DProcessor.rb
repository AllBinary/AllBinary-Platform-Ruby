# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.collision

require "java/lang/JavaOverload"
require "org/allbinary/game/collision/CollisionProcessor"

module ::Org; module Allbinary; module Game; module Collision

class Collision2DProcessor < CollisionProcessor
    

    def isCollision(myLayer, myLayer2)
        if myLayer2.getXP() >= myLayer.getX2() || myLayer2.getYP() >= myLayer.getY2() || myLayer2.getX2() <= myLayer.getXP() || myLayer2.getY2() <= myLayer.getYP()
            return false
        else
            return true
        end
    end
    java_overload :isCollision, 2
end

module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end

end; end; end; end

