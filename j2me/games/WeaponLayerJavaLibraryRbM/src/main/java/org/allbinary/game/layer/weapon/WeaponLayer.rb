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

require "java/lang/JavaOverload"
require "org/allbinary/game/multiplayer/layer/MultiPlayerGameLayer"
require "org/allbinary/game/tick/TickableInterface"

module ::Org; module Allbinary; module Game; module Layer; module Weapon

class WeaponLayer < ::Org::Allbinary::Game::Multiplayer::Layer::MultiPlayerGameLayer
    include ::Org::Allbinary::Game::Tick::TickableInterface
    attr_accessor :animationInterface, :initAnimationInterface, :destroyedAnimationInterface, :sourceLayerInterface, :totalDamage, :initDamage, :destroyed, :scoreableInterface, :movement, :weaponProperties, :multiPlayerType, :collidableWeaponBehavior

    def jfields_org_allbinary_game_layer_weapon_WeaponLayer
        @animationInterface = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)
        @initAnimationInterface = nil unless instance_variable_defined?(:@initAnimationInterface)
        @destroyedAnimationInterface = nil unless instance_variable_defined?(:@destroyedAnimationInterface)
        @sourceLayerInterface = ::Org::Allbinary::Layer::AllBinaryLayer::NULL_ALLBINARY_LAYER
        @totalDamage = 0 unless instance_variable_defined?(:@totalDamage)
        @initDamage = 0 unless instance_variable_defined?(:@initDamage)
        @destroyed = true
        @scoreableInterface = ::Org::Allbinary::Game::Score::NoScoreable.getInstance()
        @movement = nil unless instance_variable_defined?(:@movement)
        @weaponProperties = ::Org::Allbinary::Game::Combat::Weapon::WeaponProperties::NULL_WEAPON_PROPERTIES
        @multiPlayerType = nil unless instance_variable_defined?(:@multiPlayerType)
        @collidableWeaponBehavior = CollidableWeaponBehavior.getNullInstance()
    end
    

    def initialize(name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
        super(remoteInfo, ::Org::Allbinary::Game::Identification::BasicGroupFactory.getInstance().NONE_ARRAY, name, rectangle, viewPosition)
        jfields_org_allbinary_game_layer_weapon_WeaponLayer
        @initAnimationInterface = animationInterface
        self.setAnimationInterface(animationInterface)
        @destroyedAnimationInterface = destroyedAnimationInterface
        @movement = movement
        @multiPlayerType = multiPlayerType
    end
    

    def setCollidableInferface(collidableInferface)
        WeaponLayer.superclass.java_super_method(:setCollidableInferface, 1).bind(self).call(collidableInferface)
        @collidableWeaponBehavior = self.getCollidableInferface()
    end
    java_overload :setCollidableInferface, 1
    

    # throws Exception
    def initXYZ(x, y, z)
        @x = x
        @y = y
        @z = z
    end
    java_overload :initXYZ, 3
    

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
    java_overload :init, 5
    

    def setGroupInterfaces()
        basicGroupFactory = ::Org::Allbinary::Game::Identification::BasicGroupFactory.getInstance()
        if @sourceLayerInterface.getGroupInterface()[0] == basicGroupFactory.ENEMY
            self.setGroupInterface(basicGroupFactory.ENEMY_ARRAY)
        else
            self.setGroupInterface(@sourceLayerInterface.getGroupInterface())
        end
    end
    java_overload :setGroupInterfaces, 0
    

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
    java_overload :processTick, 1
    

    def isDestroyed()
        return @destroyed
    end
    java_overload :isDestroyed, 0
    

    def damage(damage, damageType)
        @totalDamage += damage * damage
    end
    java_overload :damage, 2
    

    def givePoints(total)
        @scoreableInterface.addPoints(::Org::Allbinary::Game::Configuration::GameConfigurationUtil.getInstance().getCompetitionValue() * total)
    end
    java_overload :givePoints, 1
    

    def isExhausted()
        if @totalDamage > self.getInitDamage() || @totalDamage < 0
            return true
        else
            return false
        end
    end
    java_overload :isExhausted, 0
    

    def getDamage(damageType)
        if !self.isExhausted()
            total = self.getInitDamage() - @totalDamage
            self.givePoints(total)
            return total
        end
        return 0
    end
    java_overload :getDamage, 1
    

    def setDestroyed(destroyed)
        @destroyed = destroyed
        if self.isDestroyed()
            @scoreableInterface = ::Org::Allbinary::Game::Score::NoScoreable.getInstance()
            ::Org::Allbinary::Game::Combat::Destroy::DestroyedLayerProcessor.getInstance().add(self)
        end
    end
    java_overload :setDestroyed, 1
    

    def getInitDamage()
        return @initDamage
    end
    java_overload :getInitDamage, 0
    

    def setAnimationInterface(animationInterface)
        @animationInterface = animationInterface
    end
    java_overload :setAnimationInterface, 1
    

    def getAnimationInterface()
        return @animationInterface
    end
    java_overload :getAnimationInterface, 0
    

    def getInitAnimationInterfaceP()
        return @initAnimationInterface
    end
    java_overload :getInitAnimationInterfaceP, 0
    

    def setInitAnimationInterfaceP(initAnimationInterface)
        @initAnimationInterface = initAnimationInterface
    end
    java_overload :setInitAnimationInterfaceP, 1
    

    def getDestroyedAnimationInterface()
        return @destroyedAnimationInterface
    end
    java_overload :getDestroyedAnimationInterface, 0
    

    def getOwnerLayerInterface()
        return @sourceLayerInterface
    end
    java_overload :getOwnerLayerInterface, 0
    

    def setOwnerLayerInterface(sourceLayerInterface)
        @sourceLayerInterface = sourceLayerInterface
    end
    java_overload :setOwnerLayerInterface, 1
    

    def paint(graphics)
        viewPosition = self.getViewPosition()
        @animationInterface.paintXY(graphics, viewPosition.getX() - self.getHalfWidth(), viewPosition.getY() - self.getHalfHeight())
    end
    java_overload :paint, 1
    

    def paintThreed(graphics)
        viewPosition = self.getViewPosition()
        @animationInterface.paintThreedXYZ(graphics, viewPosition.getX() - self.getHalfWidth(), viewPosition.getY() - self.getHalfHeight(), viewPosition.getZ() - self.getHalfDepth())
    end
    java_overload :paintThreed, 1
    

    def getMovement()
        return @movement
    end
    java_overload :getMovement, 0
    

    def setMovement(movement)
        @movement = movement
    end
    java_overload :setMovement, 1
    

    def getType()
        return WeaponLayer.getStaticType()
    end
    java_overload :getType, 0
    

    def self.getStaticType()
        return 0
    end
    

    def getMultiPlayerType()
        return @multiPlayerType
    end
    java_overload :getMultiPlayerType, 0
    

    def setWeaponPropertiesP(weaponProperties)
        @weaponProperties = weaponProperties
    end
    java_overload :setWeaponPropertiesP, 1
    

    def getWeaponPropertiesP()
        return @weaponProperties
    end
    java_overload :getWeaponPropertiesP, 0
    

    def implmentsTickableInterface()
        return true
    end
    java_overload :implmentsTickableInterface, 0
    

    # throws Exception
    def set(gl)
        @initAnimationInterface.set(gl)
    end
    java_overload :set, 1
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL, "javax/microedition/khronos/opengles/GL" unless const_defined?(:GL, false); end; end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :IndexedAnimation, "org/allbinary/animation/IndexedAnimation" unless const_defined?(:IndexedAnimation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Collision; autoload :CollidableBaseBehavior, "org/allbinary/game/collision/CollidableBaseBehavior" unless const_defined?(:CollidableBaseBehavior, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Destroy; autoload :DestroyedLayerProcessor, "org/allbinary/game/combat/destroy/DestroyedLayerProcessor" unless const_defined?(:DestroyedLayerProcessor, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Weapon; autoload :WeaponProperties, "org/allbinary/game/combat/weapon/WeaponProperties" unless const_defined?(:WeaponProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :GameConfigurationUtil, "org/allbinary/game/configuration/GameConfigurationUtil" unless const_defined?(:GameConfigurationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :BasicGroupFactory, "org/allbinary/game/identification/BasicGroupFactory" unless const_defined?(:BasicGroupFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Multiplayer; module Layer; autoload :RemoteInfo, "org/allbinary/game/multiplayer/layer/RemoteInfo" unless const_defined?(:RemoteInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :NoScoreable, "org/allbinary/game/score/NoScoreable" unless const_defined?(:NoScoreable, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :ScoreableInterface, "org/allbinary/game/score/ScoreableInterface" unless const_defined?(:ScoreableInterface, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Physics; module Movement; autoload :Movement, "org/allbinary/physics/movement/Movement" unless const_defined?(:Movement, false); end; end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPosition, "org/allbinary/view/ViewPosition" unless const_defined?(:ViewPosition, false); end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase" unless const_defined?(:ViewPositionBase, false); end; end; end
autoload :CollidableWeaponBehavior, "org/allbinary/game/layer/weapon/CollidableWeaponBehavior" unless const_defined?(:CollidableWeaponBehavior, false)

end; end; end; end; end

