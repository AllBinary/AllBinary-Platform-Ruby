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
            @@instance = NullUtil.getInstance().NULL_OBJECT
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

autoload :Enumeration, "java/util/Enumeration"
autoload :GamePersistanceStrings, "org/allbinary/game/configuration/persistance/GamePersistanceStrings"
autoload :Input, "org/allbinary/game/input/Input"
autoload :InputPersistance, "org/allbinary/game/input/InputPersistance"
autoload :InputMappingEvent, "org/allbinary/game/input/mapping/event/InputMappingEvent"
autoload :InputMappingEventListenerInterface, "org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface"
autoload :NullInputMappingEventListener, "org/allbinary/game/input/mapping/event/NullInputMappingEventListener"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :EnumerationUtil, "org/allbinary/util/EnumerationUtil"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :InputToGameKeyMapping, "org/allbinary/game/input/mapping/InputToGameKeyMapping"

begin
    PersistentInputMapping.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

