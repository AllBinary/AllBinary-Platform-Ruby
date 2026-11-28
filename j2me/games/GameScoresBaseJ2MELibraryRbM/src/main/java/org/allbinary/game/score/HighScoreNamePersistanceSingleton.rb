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
# package org.allbinary.game.score


module ::Org; module Allbinary; module Game; module Score

class HighScoreNamePersistanceSingleton
    attr_accessor :logUtil, :tsUtil, :commonStrings, :platformRecordIdUtil, :RECORD_ID, :name, :nameBasicArrayList

    def jfields_org_allbinary_game_score_HighScoreNamePersistanceSingleton
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @tsUtil = ::Org::Allbinary::TsUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @platformRecordIdUtil = ::Org::Allbinary::Persistance::PlatformRecordIdUtil.getInstance()
        @RECORD_ID = "_SN"
        @name = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @nameBasicArrayList = ::Org::Allbinary::Util::BasicArrayListD.new()
    end

    def initialize
        jfields_org_allbinary_game_score_HighScoreNamePersistanceSingleton
    end
    

    def self.getInstance()
        return SINGLETON
    end
    

    def clear()
        @name = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    

    # throws Exception
    def deleteAll(abeClientInformation, gameInfo)
        size = @nameBasicArrayList.size()
        (0...size).each do |index|
            integer = @nameBasicArrayList.objectArray[index]
            self.delete(abeClientInformation, gameInfo, integer.to_i)
        end
        self.clear()
    end
    

    def getRecordId(abeClientInformation)
        return @platformRecordIdUtil.getRecordId(abeClientInformation, @RECORD_ID)
    end
    

    # throws Exception
    def delete(abeClientInformation, gameInfo, deleteId)
        recordStore = ::Org::Allbinary::Game::Configuration::Persistance::NullRecordStore::NULL_RECORD_STORE
        begin
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Deleting: ").appendint(deleteId).to_s, self, @commonStrings.delete)
            recordStore = ::Javax::Microedition::Rms::RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            recordStore.deleteRecord(deleteId)
        rescue StandardError => e
            raise e
        ensure
            if recordStore != nil
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Closing RecordStore", self, @commonStrings.delete)
                recordStore.closeRecordStore()
            end
        end
    end
    

    def getIds()
        return @nameBasicArrayList
    end
    

    def load(abeClientInformation, gameInfo)
        recordStore = ::Org::Allbinary::Game::Configuration::Persistance::NullRecordStore::NULL_RECORD_STORE
        begin
            if @name == ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
                _LOADING_ID = "Loading id: "
                recordStore = ::Javax::Microedition::Rms::RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
                recordEnum = recordStore.enumerateRecords(::Org::Allbinary::Game::Configuration::Persistance::NullRecordFilter::NULL_RECORD_FILTER, ::Org::Allbinary::Game::Configuration::Persistance::NullRecordComparator::NULL_RECORD_COMPARATOR, true)
                smallIntegerSingletonFactory = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance()
                recordAsBytes = nil
                byteArrayInputStream = nil
                inputStream = nil
                while recordEnum.hasNextElement()
                    id = recordEnum.nextRecordId()
                    @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(_LOADING_ID).appendint(id).to_s, self, @commonStrings.LOAD)
                    recordAsBytes = @tsUtil.getRecord(recordStore, id)
                    byteArrayInputStream = ::Java::Io::ByteArrayInputStream.new(recordAsBytes)
                    inputStream = ::Java::Io::DataInputStream.new(byteArrayInputStream)
                    while inputStream.available() > 0
                        @name = inputStream.readUTF()
                    end
                    @nameBasicArrayList.add(smallIntegerSingletonFactory.getAt(id))
                end
            end
        rescue StandardError => e
            self.save(abeClientInformation, gameInfo, @name)
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@commonStrings.EXCEPTION_LABEL).append(::Org::Allbinary::Logic::Java::ExceptionPackage::ExceptionUtil.getInstance().getStackTrace(e)).to_s, self, @commonStrings.LOAD)
        ensure
            begin
                if recordStore != nil
                    ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Closing RecordStore", self, @commonStrings.LOAD)
                    recordStore.closeRecordStore()
                end
            rescue ::Javax::Microedition::Rms::RecordStoreException => e
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.LOAD, e)
            end
        end
        return @name
    end
    

    def save(abeClientInformation, gameInfo, name)
        recordStore = ::Org::Allbinary::Game::Configuration::Persistance::NullRecordStore::NULL_RECORD_STORE
        begin
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Saving: ").append(name).to_s, self, @commonStrings.SAVE)
            recordStore = ::Javax::Microedition::Rms::RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            byteArrayOutputStream = ::Java::Io::ByteArrayOutputStream.new()
            outputStream = ::Java::Io::DataOutputStream.new(byteArrayOutputStream)
            outputStream.writeUTF(name)
            savedGameBytes = byteArrayOutputStream.toByteArray()
            recordStore.addRecord(savedGameBytes, 0, savedGameBytes.length)
            @name = name
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.SAVE, e)
        ensure
            begin
                if recordStore != nil
                    ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Closing RecordStore", self, @commonStrings.SAVE)
                    recordStore.closeRecordStore()
                end
            rescue ::Javax::Microedition::Rms::RecordStoreException => e
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.SAVE, e)
            end
        end
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, HighScoreNamePersistanceSingleton.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "HighScoreNamePersistanceSingleton"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Java; module Io; autoload :ByteArrayInputStream, "java/io/ByteArrayInputStream" unless const_defined?(:ByteArrayInputStream, false); end; end
module ::Java; module Io; autoload :ByteArrayOutputStream, "java/io/ByteArrayOutputStream" unless const_defined?(:ByteArrayOutputStream, false); end; end
module ::Java; module Io; autoload :DataInputStream, "java/io/DataInputStream" unless const_defined?(:DataInputStream, false); end; end
module ::Java; module Io; autoload :DataOutputStream, "java/io/DataOutputStream" unless const_defined?(:DataOutputStream, false); end; end
module ::Javax; module Microedition; module Rms; autoload :RecordEnumeration, "javax/microedition/rms/RecordEnumeration" unless const_defined?(:RecordEnumeration, false); end; end; end
module ::Javax; module Microedition; module Rms; autoload :RecordStore, "javax/microedition/rms/RecordStore" unless const_defined?(:RecordStore, false); end; end; end
module ::Javax; module Microedition; module Rms; autoload :RecordStoreException, "javax/microedition/rms/RecordStoreException" unless const_defined?(:RecordStoreException, false); end; end; end
module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Game; autoload :GameInfo, "org/allbinary/game/GameInfo" unless const_defined?(:GameInfo, false); end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Persistance; autoload :NullRecordComparator, "org/allbinary/game/configuration/persistance/NullRecordComparator" unless const_defined?(:NullRecordComparator, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Persistance; autoload :NullRecordFilter, "org/allbinary/game/configuration/persistance/NullRecordFilter" unless const_defined?(:NullRecordFilter, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Persistance; autoload :NullRecordStore, "org/allbinary/game/configuration/persistance/NullRecordStore" unless const_defined?(:NullRecordStore, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module ExceptionPackage; autoload :ExceptionUtil, "org/allbinary/logic/java/exception/ExceptionUtil" unless const_defined?(:ExceptionUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Persistance; autoload :PlatformRecordIdUtil, "org/allbinary/persistance/PlatformRecordIdUtil" unless const_defined?(:PlatformRecordIdUtil, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

begin
    HighScoreNamePersistanceSingleton.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

