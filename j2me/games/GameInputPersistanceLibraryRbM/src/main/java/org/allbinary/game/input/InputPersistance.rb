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
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "org/allbinary/game/configuration/persistance/BasicPersitance"

module ::Org; module Allbinary; module Game; module Input

#GameInputPersistanceLibrary
class InputPersistance < ::Org::Allbinary::Game::Configuration::Persistance::BasicPersitance
    attr_accessor :tsUtil, :hashtableUtil

    def jfields_org_allbinary_game_input_InputPersistance
        @tsUtil = ::Org::Allbinary::TsUtil.getInstance()
        @hashtableUtil = ::Org::Allbinary::Util::HashtableUtil.getInstance()
    end
    

    def initialize(name)
        super(name)
        jfields_org_allbinary_game_input_InputPersistance
    end
    

    # throws Exception
    def loadAll(abeClientInformation)
        recordStore = ::Org::Allbinary::Game::Configuration::Persistance::NullRecordStore::NULL_RECORD_STORE
        begin
            recordStore = ::Javax::Microedition::Rms::RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            recordEnum = recordStore.enumerateRecords(::Org::Allbinary::Game::Configuration::Persistance::NullRecordFilter::NULL_RECORD_FILTER, ::Org::Allbinary::Game::Configuration::Persistance::NullRecordComparator::NULL_RECORD_COMPARATOR, true)
            gameActionInputId = 0
            inputId = 0
            gameActionInput = nil
            input = nil
            hashtable = nil
            gameKeyFactory = GameKeyMappingFactory.getInstance()
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            inputFactory = InputFactory.getInstance()
            smallIntegerSingletonFactory = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance()
            stdUtil = ::Org::Allbinary::Logic::StdUtil.getInstance()
            recordAsBytes = nil
            byteArrayInputStream = nil
            inputStream = nil
            while recordEnum.hasNextElement()
                id = recordEnum.nextRecordId()
                stringBuffer.delete(0, stringBuffer.length())
                @logUtil.putF(stringBuffer.append(@persistanceStrings.LOADING_ID).appendint(id).to_s, self, @persistanceStrings.LOAD_ALL)
                recordAsBytes = @tsUtil.getRecord(recordStore, id)
                if recordAsBytes != nil
                    byteArrayInputStream = ::Java::Io::ByteArrayInputStream.new(recordAsBytes)
                    inputStream = ::Java::Io::DataInputStream.new(byteArrayInputStream)
                    hashtable = stdUtil.createHashtable()
                    value = 0
                    while inputStream.available() > 0
                        gameActionInputIdAsString = inputStream.readUTF()
                        value = Integer(gameActionInputIdAsString)
                        gameActionInputId = value
                        inputStream.readUTF()
                        value = Integer(inputStream.readUTF())
                        inputId = value
                        gameActionInput = gameKeyFactory.getGameKey(gameActionInputId)
                        input = inputFactory.getInstanceById(inputId)
                        if input == inputFactory.NO_INPUT || gameActionInput == nil
                            stringBuffer.delete(0, stringBuffer.length())
                            if input == inputFactory.NO_INPUT
                                stringBuffer.append(@persistanceStrings.ERROR_LOADING_ID)
                                stringBuffer.appendlong(inputId)
                                stringBuffer.append(@persistanceStrings.GAME_ACTION_INPUT)
                                stringBuffer.appendlong(gameActionInputId)
                                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(stringBuffer.to_s, self, @persistanceStrings.LOAD_ALL)
                            end
                            if gameActionInput == nil
                                stringBuffer.delete(0, stringBuffer.length())
                                stringBuffer.append(@persistanceStrings.ERROR_LOADING)
                                stringBuffer.appendlong(gameActionInputId)
                                stringBuffer.append(@persistanceStrings.ID)
                                stringBuffer.appendlong(inputId)
                                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(stringBuffer.to_s, self, @persistanceStrings.LOAD_ALL)
                            end
                        else
                        end
                        hashtable.put(input, gameActionInput)
                    end
                    @valueList.add(hashtable)
                    @idList.add(smallIntegerSingletonFactory.getAt(id))
                else
                end
            end
        rescue StandardError => e
            raise e
        ensure
            if recordStore != nil
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(@persistanceStrings.CLOSING_RECORDSTORE, self, @persistanceStrings.LOAD_ALL)
                recordStore.closeRecordStore()
            end
        end
    end
    java_overload :loadAll, 1
    

    # throws Exception
    def save(abeClientInformation, hashtable)
        recordStore = ::Org::Allbinary::Game::Configuration::Persistance::NullRecordStore::NULL_RECORD_STORE
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(stringBuffer.append(@persistanceStrings.SAVING).append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(hashtable)).to_s, self, @commonStrings.SAVE)
            recordStore = ::Javax::Microedition::Rms::RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            byteArrayOutputStream = ::Java::Io::ByteArrayOutputStream.new()
            outputStream = ::Java::Io::DataOutputStream.new(byteArrayOutputStream)
            gameActionInput = nil
            list = nil
            input = nil
            savedGameBytes = nil
            commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
            smallIntegerSingletonFactory = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance()
            inputObjectArray = @hashtableUtil.getKeysAsArray(hashtable)
            size = inputObjectArray.length
            (0...size).each do |index|
                gameActionInput = inputObjectArray[index]
                list = hashtable.get(inputObjectArray[index])
                (0...list.size()).each do |index2|
                    gameActionInputIdAsString = smallIntegerSingletonFactory.getAt(gameActionInput.getId()).to_s
                    outputStream.writeUTF(gameActionInputIdAsString)
                    outputStream.writeUTF(commonSeps.EQUALS)
                    input = list.objectArray[index2]
                    inputIdAsString = smallIntegerSingletonFactory.getAt(input.getId()).to_s
                    outputStream.writeUTF(inputIdAsString)
                end
            end
            savedGameBytes = byteArrayOutputStream.toByteArray()
            recordStore.addRecord(savedGameBytes, 0, savedGameBytes.length)
        rescue StandardError => e
            raise e
        ensure
            if recordStore != nil
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(@persistanceStrings.CLOSING_RECORDSTORE, self, @commonStrings.SAVE)
                recordStore.closeRecordStore()
            end
        end
    end
    java_overload :save, 2
end

module ::Java; module Io; autoload :ByteArrayInputStream, "java/io/ByteArrayInputStream" unless const_defined?(:ByteArrayInputStream, false); end; end
module ::Java; module Io; autoload :ByteArrayOutputStream, "java/io/ByteArrayOutputStream" unless const_defined?(:ByteArrayOutputStream, false); end; end
module ::Java; module Io; autoload :DataInputStream, "java/io/DataInputStream" unless const_defined?(:DataInputStream, false); end; end
module ::Java; module Io; autoload :DataOutputStream, "java/io/DataOutputStream" unless const_defined?(:DataOutputStream, false); end; end
module ::Javax; module Microedition; module Rms; autoload :RecordEnumeration, "javax/microedition/rms/RecordEnumeration" unless const_defined?(:RecordEnumeration, false); end; end; end
module ::Javax; module Microedition; module Rms; autoload :RecordStore, "javax/microedition/rms/RecordStore" unless const_defined?(:RecordStore, false); end; end; end
module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Game; module Configuration; module Persistance; autoload :NullRecordComparator, "org/allbinary/game/configuration/persistance/NullRecordComparator" unless const_defined?(:NullRecordComparator, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Persistance; autoload :NullRecordFilter, "org/allbinary/game/configuration/persistance/NullRecordFilter" unless const_defined?(:NullRecordFilter, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Persistance; autoload :NullRecordStore, "org/allbinary/game/configuration/persistance/NullRecordStore" unless const_defined?(:NullRecordStore, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :HashtableUtil, "org/allbinary/util/HashtableUtil" unless const_defined?(:HashtableUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :GameKeyMappingFactory, "org/allbinary/game/input/GameKeyMappingFactory" unless const_defined?(:GameKeyMappingFactory, false)
autoload :Input, "org/allbinary/game/input/Input" unless const_defined?(:Input, false)
autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false)

end; end; end; end

