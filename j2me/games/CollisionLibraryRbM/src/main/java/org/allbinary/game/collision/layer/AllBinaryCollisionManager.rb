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
# package org.allbinary.game.collision.layer


class AllBinaryCollisionManager
    

    def initialize()
    end
    

    def self.getInstance()
        return AllBinaryCollisionManager.allBinaryCollisionManager
    end
    

    # throws Exception
    def process(layerManager, collidableInterfaceCompositeInterface, startIndex)
        size = layerManager.getSize()
        (startIndex + 1...size).each do |index|
            collidableInterfaceCompositeInterface2 = layerManager.getLayerAt(index)
            self.collide(layerManager, collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
        end
    end
    

    # throws Exception
    def collide(layerManager, collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
        collidableBase2 = collidableInterfaceCompositeInterface2.getCollidableInferface()
        collidableBase = collidableInterfaceCompositeInterface.getCollidableInferface()
        if collidableBase2.isCollidable(collidableInterfaceCompositeInterface)
            if collidableBase.isCollisionInterface(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
                collidableBase.collideInterface(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
                collidableBase2.collideInterface(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface)
            end
        end
    end

    def self.allBinaryCollisionManager()
        AllBinaryCollisionManager.java_static_fields unless @java_static_fields_started
        return defined?(@@allBinaryCollisionManager) ? @@allBinaryCollisionManager : nil
    end

    def self.allBinaryCollisionManager=(value)
        AllBinaryCollisionManager.java_static_fields unless @java_static_fields_started
        @@allBinaryCollisionManager = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@allBinaryCollisionManager = AllBinaryCollisionManager.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AllBinaryCollisionManager"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :CollidableBaseBehavior, "org/allbinary/game/collision/CollidableBaseBehavior"
autoload :CollidableInterfaceCompositeInterface, "org/allbinary/game/collision/CollidableInterfaceCompositeInterface"
autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer"
autoload :LayerManager, "org/allbinary/layer/LayerManager"

begin
    AllBinaryCollisionManager.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

