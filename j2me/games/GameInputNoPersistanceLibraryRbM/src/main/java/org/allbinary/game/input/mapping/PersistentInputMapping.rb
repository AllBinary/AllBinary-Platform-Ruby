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


#GameInputNoPersistanceLibrary
class PersistentInputMapping
    attr_accessor :logUtil, :commonStrings, :enumerationUtil, :inputMapping, :inputMappingEventListenerInterface, :inputPersistance, :inputMappingEvent

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @enumerationUtil = EnumerationUtil.getInstance()
        @inputMapping = InputToGameKeyMapping.new()
        @inputMappingEventListenerInterface = NullInputMappingEventListener::NULL_INPUT_MAPPING_EVENT_LISTENER
        @inputPersistance = nil
        @inputMappingEvent = InputMappingEvent.new(self)
    end
    

    def self.getNullInstance()
        if PersistentInputMapping.instance == NullUtil.getInstance().NULL_OBJECT
            PersistentInputMapping.instance = PersistentInputMapping.new(GamePersistanceStrings.getInstance().SAVED_INPUT_CONFIGURATION_RECORD_ID)
        end
        return PersistentInputMapping.instance
    end
    

    def initialize(name)
        initialize_fields
        @inputPersistance = InputPersistance.new(name)
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
            PreLogUtil.putOE(@commonStrings.EXCEPTION, self, @commonStrings.INIT, e)
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
        stringBuffer = StringMaker.new()
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/util/Enumeration"
require "org/allbinary/game/configuration/persistance/GamePersistanceStrings"
require "org/allbinary/game/input/Input"
require "org/allbinary/game/input/InputPersistance"
require "org/allbinary/game/input/mapping/event/InputMappingEvent"
require "org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface"
require "org/allbinary/game/input/mapping/event/NullInputMappingEventListener"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/EnumerationUtil"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/game/input/mapping/InputToGameKeyMapping"

class PersistentInputMapping
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

