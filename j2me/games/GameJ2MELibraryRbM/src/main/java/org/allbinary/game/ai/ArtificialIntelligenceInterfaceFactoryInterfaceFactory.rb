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


module ::Org; module Allbinary; module Game; module Ai

class ArtificialIntelligenceInterfaceFactoryInterfaceFactory
    attr_accessor :list

    def jfields_org_allbinary_game_ai_ArtificialIntelligenceInterfaceFactoryInterfaceFactory
        @list = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance()
    end

    def initialize
        jfields_org_allbinary_game_ai_ArtificialIntelligenceInterfaceFactoryInterfaceFactory
    end
    

    def clear()
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, ArtificialIntelligenceInterfaceFactoryInterfaceFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ArtificialIntelligenceInterfaceFactoryInterfaceFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end
autoload :ArtificialIntelligenceInterfaceFactoryInterface, "org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface" unless const_defined?(:ArtificialIntelligenceInterfaceFactoryInterface, false)
autoload :BasicAI, "org/allbinary/game/ai/BasicAI" unless const_defined?(:BasicAI, false)

begin
    ArtificialIntelligenceInterfaceFactoryInterfaceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

