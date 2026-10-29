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
# package org.allbinary.game.layer.weapon

# require "javax/microedition/khronos/opengles/GL"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/multiplayer/layer/MultiPlayerGameLayer"
require "org/allbinary/game/tick/TickableInterface"

class WeaponLayer < MultiPlayerGameLayer
    include TickableInterface
    attr_accessor :animationInterface, :initAnimationInterface, :destroyedAnimationInterface, :sourceLayerInterface, :totalDamage, :initDamage, :destroyed, :scoreableInterface, :movement, :weaponProperties, :multiPlayerType, :collidableWeaponBehavior

    def initialize_fields
        @animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
        @initAnimationInterface = nil
        @destroyedAnimationInterface = nil
        @sourceLayerInterface = AllBinaryLayer::NULL_ALLBINARY_LAYER
        @totalDamage = 0
        @initDamage = 0
        @destroyed = true
        @scoreableInterface = NoScoreable.getInstance()
        @movement = nil
        @weaponProperties = WeaponProperties::NULL_WEAPON_PROPERTIES
        @multiPlayerType = nil
        @collidableWeaponBehavior = CollidableWeaponBehavior.getNullInstance()
    end
    

    def initialize(name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
        super(remoteInfo, BasicGroupFactory.getInstance().NONE_ARRAY, name, rectangle, viewPosition)
        initialize_fields
        @initAnimationInterface = animationInterface
        self.setAnimationInterface(animationInterface)
        @destroyedAnimationInterface = destroyedAnimationInterface
        @movement = movement
        @multiPlayerType = multiPlayerType
    end
    

    def setCollidableInferface(collidableInferface)
        super(collidableInferface)
        @collidableWeaponBehavior = self.getCollidableInferface()
    end
    

    # throws Exception
    def initXYZ(x, y, z)
        @x = x
        @y = y
        @z = z
    end
    

    # throws Exception
    def init(sourceLayerInterface, angle, otherAngle, weaponProperties, scoreable)
        self.setWeaponPropertiesP(weaponProperties)
        self.setReadyForExplosion(false)
        self.setAnimationInterface(self.getInitAnimationInterfaceP())
        self.setOwnerLayerInterface(sourceLayerInterface)
        @collidableWeaponBehavior.init(sourceLayerInterface)
        self.setGroupInterfaces()
        if scoreable != nil
            @scoreableInterface = scoreable
        end
        @totalDamage = 0
        @initDamage = weaponProperties.getDamage()
        self.setDestroyed(false)
        @movement.init(weaponProperties.getSpeed(), angle, otherAngle)
    end
    

    def setGroupInterfaces()
        basicGroupFactory = BasicGroupFactory.getInstance()
        if @sourceLayerInterface.getGroupInterface()[0] == basicGroupFactory.ENEMY
            self.setGroupInterface(basicGroupFactory.ENEMY_ARRAY)
        else
            self.setGroupInterface(@sourceLayerInterface.getGroupInterface())
        end
    end
    

    # throws Exception
    def processTick(allBinaryLayerManager)
        if self.isExhausted() && !self.isDestroyed()
            if self.isReadyForExplosion()
                indexedAnimationInterface = self.getAnimationInterface()
                currentFrame = indexedAnimationInterface.getFrame()
                if currentFrame < indexedAnimationInterface.getAnimationSize() - 1
                    indexedAnimationInterface.nextFrame()
                else
                    self.setDestroyed(true)
                end
            else
                collidableWeaponBehavior = self.getCollidableInferface()
                if collidableWeaponBehavior.isCollided()
                    self.setAnimationInterface(@destroyedAnimationInterface)
                    self.getMovement().stop()
                    self.setReadyForExplosion(true)
                else
                    self.setDestroyed(true)
                end
            end
        end
        @movement.process(self)
        @totalDamage += @weaponProperties.getDissipation()
    end
    

    def isDestroyed()
        return @destroyed
    end
    

    def damage(damage, damageType)
        @totalDamage += damage * damage
    end
    

    def givePoints(total)
        @scoreableInterface.addPoints(GameConfigurationUtil.getInstance().getCompetitionValue() * total)
    end
    

    def isExhausted()
        if @totalDamage > self.getInitDamage() || @totalDamage < 0
            return true
        else
            return false
        end
    end
    

    def getDamage(damageType)
        if !self.isExhausted()
            total = self.getInitDamage() - @totalDamage
            self.givePoints(total)
            return total
        end
        return 0
    end
    

    def setDestroyed(destroyed)
        @destroyed = destroyed
        if self.isDestroyed()
            @scoreableInterface = NoScoreable.getInstance()
            DestroyedLayerProcessor.getInstance().add(self)
        end
    end
    

    def getInitDamage()
        return @initDamage
    end
    

    def setAnimationInterface(animationInterface)
        @animationInterface = animationInterface
    end
    

    def getAnimationInterface()
        return @animationInterface
    end
    

    def getInitAnimationInterfaceP()
        return @initAnimationInterface
    end
    

    def setInitAnimationInterfaceP(initAnimationInterface)
        @initAnimationInterface = initAnimationInterface
    end
    

    def getDestroyedAnimationInterface()
        return @destroyedAnimationInterface
    end
    

    def getOwnerLayerInterface()
        return @sourceLayerInterface
    end
    

    def setOwnerLayerInterface(sourceLayerInterface)
        @sourceLayerInterface = sourceLayerInterface
    end
    

    def paint(graphics)
        viewPosition = self.getViewPosition()
        @animationInterface.paintXY(graphics, viewPosition.getX() - self.getHalfWidth(), viewPosition.getY() - self.getHalfHeight())
    end
    

    def paintThreed(graphics)
        viewPosition = self.getViewPosition()
        @animationInterface.paintThreedXYZ(graphics, viewPosition.getX() - self.getHalfWidth(), viewPosition.getY() - self.getHalfHeight(), viewPosition.getZ() - self.getHalfDepth())
    end
    

    def getMovement()
        return @movement
    end
    

    def setMovement(movement)
        @movement = movement
    end
    

    def getType()
        return WeaponLayer.getStaticType()
    end
    

    def self.getStaticType()
        return 0
    end
    

    def getMultiPlayerType()
        return @multiPlayerType
    end
    

    def setWeaponPropertiesP(weaponProperties)
        @weaponProperties = weaponProperties
    end
    

    def getWeaponPropertiesP()
        return @weaponProperties
    end
    

    def implmentsTickableInterface()
        return true
    end
    

    # throws Exception
    def set(gl)
        @initAnimationInterface.set(gl)
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/animation/NullAnimationFactory"
require "org/allbinary/game/collision/CollidableBaseBehavior"
require "org/allbinary/game/combat/destroy/DestroyedLayerProcessor"
require "org/allbinary/game/combat/weapon/WeaponProperties"
require "org/allbinary/game/configuration/GameConfigurationUtil"
require "org/allbinary/game/identification/BasicGroupFactory"
require "org/allbinary/game/multiplayer/layer/RemoteInfo"
require "org/allbinary/game/score/NoScoreable"
require "org/allbinary/game/score/ScoreableInterface"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/physics/movement/Movement"
require "org/allbinary/view/ViewPosition"
require "org/allbinary/view/ViewPositionBase"
require "org/allbinary/game/layer/weapon/CollidableWeaponBehavior"

