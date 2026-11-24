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
# package org.allbinary.game.input.mapping


module ::Org; module Allbinary; module Game; module Input; module Mapping

#GameInputPersistanceLibrary
class PersistentInputMapping
    attr_accessor :logUtil, :commonStrings, :enumerationUtil, :inputMapping, :inputMappingEventListenerInterface, :inputPersistance, :inputMappingEvent

    def jfields_org_allbinary_game_input_mapping_PersistentInputMapping
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @enumerationUtil = ::Org::Allbinary::Util::EnumerationUtil.getInstance()
        @inputMapping = InputToGameKeyMapping.new()
        @inputMappingEventListenerInterface = ::Org::Allbinary::Game::Input::Mapping::Event::NullInputMappingEventListener::NULL_INPUT_MAPPING_EVENT_LISTENER
        @inputPersistance = nil unless instance_variable_defined?(:@inputPersistance)
        @inputMappingEvent = ::Org::Allbinary::Game::Input::Mapping::Event::InputMappingEvent.new(self)
    end
    

    def self.getNullInstance()
        if PersistentInputMapping.instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            PersistentInputMapping.instance = PersistentInputMapping.new(::Org::Allbinary::Game::Configuration::Persistance::GamePersistanceStrings.getInstance().SAVED_INPUT_CONFIGURATION_RECORD_ID)
        end
        return PersistentInputMapping.instance
    end
    

    def initialize(name)
        jfields_org_allbinary_game_input_mapping_PersistentInputMapping
        @inputPersistance = ::Org::Allbinary::Game::Input::InputPersistance.new(name)
    end
    

    def getTotalMapped()
        return self.getInputMapping().getHashtable().size()
    end
    

    def isDefaultNew()
        return false
    end
    

    def getDefault()
        return InputToGameKeyMapping.getNullInstance()
    end
    

    # throws Exception
    def setDefault(abeClientInformation)
        self.getInputMapping().removeAll()
        self.getInputMapping().addMapping(self.getDefault())
        self.save(abeClientInformation)
    end
    

    # throws Exception
    def update(abeClientInformation)
        @inputPersistance.deleteAll(abeClientInformation)
        self.save(abeClientInformation)
    end
    

    # throws Exception
    def save(abeClientInformation)
        @inputPersistance.save(abeClientInformation, self.getInputMapping().getHashtable())
        @inputMappingEvent.setInputToGameKeyMapping(self.getInputMapping())
        if self.getInputMappingEventListenerInterface() != nil
            self.getInputMappingEventListenerInterface().onInputMappingEvent(@inputMappingEvent)
        end
    end
    

    # throws Exception
    def init(abeClientInformation)
        @logUtil.putF(@commonStrings.START, self, @commonStrings.INIT)
        begin
            @inputPersistance.loadAll(abeClientInformation)
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(@commonStrings.EXCEPTION, self, @commonStrings.INIT, e)
            @inputPersistance.deleteRecoreStore(abeClientInformation)
            self.setDefault(abeClientInformation)
            @inputPersistance.loadAll(abeClientInformation)
        end
        list = @inputPersistance.getList()
        totalMappedTo = 0
        size = list.size()
        hashtable = nil
        enumeration = nil
        mappedToInput = nil
        gameActionInput = nil
        (0...size).each do |index|
            hashtable = list.objectArray[index]
            enumeration = hashtable.keys()
            while @enumerationUtil.hasMoreElements(enumeration)
                mappedToInput = @enumerationUtil.nextElement(enumeration)
                gameActionInput = hashtable.get(mappedToInput)
                totalMappedTo += 1
                self.getInputMapping().add(gameActionInput, mappedToInput)
            end
        end
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("End - Total Loaded Keys Mapped: ")
        stringBuffer.appendint(self.getTotalMapped())
        stringBuffer.append(" to: ")
        stringBuffer.appendint(totalMappedTo)
        @logUtil.putF(stringBuffer.to_s, self, @commonStrings.INIT)
    end
    

    def setInputMappingEventListenerInterface(inputMappingEventListenerInterface)
        @inputMappingEventListenerInterface = inputMappingEventListenerInterface
    end
    

    def getInputMappingEventListenerInterface()
        return @inputMappingEventListenerInterface
    end
    

    def getInputMapping()
        return @inputMapping
    end
    

    # throws Exception
    def isDelete(input)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    # throws Exception
    def isSystemInput(input)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end

    def self.instance()
        PersistentInputMapping.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PersistentInputMapping.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PersistentInputMapping"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :Enumeration, "java/util/Enumeration" unless const_defined?(:Enumeration, false); end; end
module ::Org; module Allbinary; module Game; module Configuration; module Persistance; autoload :GamePersistanceStrings, "org/allbinary/game/configuration/persistance/GamePersistanceStrings" unless const_defined?(:GamePersistanceStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :Input, "org/allbinary/game/input/Input" unless const_defined?(:Input, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :InputPersistance, "org/allbinary/game/input/InputPersistance" unless const_defined?(:InputPersistance, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Mapping; module Event; autoload :InputMappingEvent, "org/allbinary/game/input/mapping/event/InputMappingEvent" unless const_defined?(:InputMappingEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Mapping; module Event; autoload :InputMappingEventListenerInterface, "org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface" unless const_defined?(:InputMappingEventListenerInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Mapping; module Event; autoload :NullInputMappingEventListener, "org/allbinary/game/input/mapping/event/NullInputMappingEventListener" unless const_defined?(:NullInputMappingEventListener, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :EnumerationUtil, "org/allbinary/util/EnumerationUtil" unless const_defined?(:EnumerationUtil, false); end; end; end
autoload :InputToGameKeyMapping, "org/allbinary/game/input/mapping/InputToGameKeyMapping" unless const_defined?(:InputToGameKeyMapping, false)

begin
    PersistentInputMapping.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

