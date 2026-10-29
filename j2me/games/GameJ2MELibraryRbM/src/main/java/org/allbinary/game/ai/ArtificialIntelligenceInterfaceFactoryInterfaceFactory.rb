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
# package org.allbinary.game.ai


class ArtificialIntelligenceInterfaceFactoryInterfaceFactory
    attr_accessor :list

    def initialize_fields
        @list = BasicArrayListUtil.getInstance().getImmutableInstance()
    end

    def initialize
        initialize_fields
    end
    

    def clear()
        @list = BasicArrayListD.new()
    end
    

    def self.getInstance()
        return ArtificialIntelligenceInterfaceFactoryInterfaceFactory::SINGLETON
    end
    

    def getInstanceFromCollection(hashtable)
        typeInteger = hashtable.get(BasicAI::ID)
        type = typeInteger.to_i
        artificialIntelligenceInterfaceFactoryInterface = @list.objectArray[type - 1]
        return artificialIntelligenceInterfaceFactoryInterface
    end
    

    def add(artificialIntelligenceInterfaceFactoryInterface)
        @list.add(artificialIntelligenceInterfaceFactoryInterface)
    end
end

require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/util/BasicArrayListUtil"
require "org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface"
require "org/allbinary/game/ai/BasicAI"

class ArtificialIntelligenceInterfaceFactoryInterfaceFactory
    SINGLETON = ArtificialIntelligenceInterfaceFactoryInterfaceFactory.new()
end

