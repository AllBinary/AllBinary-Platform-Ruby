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
# package org.allbinary.game.configuration.persistance

require "java/lang/JavaOverload"
require "org/allbinary/game/configuration/persistance/BasicPersitance"

module ::Org; module Allbinary; module Game; module Configuration; module Persistance

class KeyValuePersistance < BasicPersitance
    attr_accessor :tsUtil

    def jfields_org_allbinary_game_configuration_persistance_KeyValuePersistance
        @tsUtil = ::Org::Allbinary::TsUtil.getInstance()
    end
    

    def initialize(recordId)
        super(recordId)
        jfields_org_allbinary_game_configuration_persistance_KeyValuePersistance
    end
    

    # throws Exception
    def loadAll(abeClientInformation)
        self.loadAllSize(abeClientInformation, 1)
    end
    java_overload :loadAll, 1
    

    # throws Exception
    def loadAllSize(abeClientInformation, size)
        recordStore = NullRecordStore::NULL_RECORD_STORE
        begin
            recordStore = ::Javax::Microedition::Rms::RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            recordEnum = recordStore.enumerateRecords(NullRecordFilter::NULL_RECORD_FILTER, NullRecordComparator::NULL_RECORD_COMPARATOR, true)
            hashtable = nil
            name = nil
            value = nil
            smallIntegerSingletonFactory = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance()
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
                    hashtable = ::Org::Allbinary::Util::ABHashtable.new()
                    (0...size).each do |index|
                        name = inputStream.readUTF()
                        inputStream.readUTF()
                        value = inputStream.readUTF()
                        hashtable.put(name, value)
                    end
                    @valueList.add(hashtable)
                    @idList.add(smallIntegerSingletonFactory.getAt(id))
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
    java_overload :loadAllSize, 2
    

    # throws Exception
    def save(abeClientInformation, hashtable)
        recordStore = NullRecordStore::NULL_RECORD_STORE
        begin
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@persistanceStrings.SAVING).append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(hashtable)).to_s, self, @commonStrings.SAVE)
            recordStore = ::Javax::Microedition::Rms::RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            byteArrayOutputStream = ::Java::Io::ByteArrayOutputStream.new()
            outputStream = ::Java::Io::DataOutputStream.new(byteArrayOutputStream)
            value = nil
            commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
            objectArray = ::Org::Allbinary::Util::HashtableUtil.getInstance().getKeysAsArray(hashtable)
            anyType = nil
            size = objectArray.length
            (0...size).each do |index|
                outputStream.writeUTF(objectArray[index])
                outputStream.writeUTF(commonSeps.EQUALS)
                anyType = objectArray[index]
                value = hashtable.get(anyType)
                outputStream.writeUTF(value)
            end
            tsUtil = ::Org::Allbinary::TsUtil.getInstance()
            savedGameBytes = tsUtil.getByteArray(byteArrayOutputStream.to_s)
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
    

    def get(index)
        hashtable = @valueList.objectArray[index]
        return hashtable
    end
    java_overload :get, 1
end

module ::Java; module Io; autoload :ByteArrayInputStream, "java/io/ByteArrayInputStream" unless const_defined?(:ByteArrayInputStream, false); end; end
module ::Java; module Io; autoload :ByteArrayOutputStream, "java/io/ByteArrayOutputStream" unless const_defined?(:ByteArrayOutputStream, false); end; end
module ::Java; module Io; autoload :DataInputStream, "java/io/DataInputStream" unless const_defined?(:DataInputStream, false); end; end
module ::Java; module Io; autoload :DataOutputStream, "java/io/DataOutputStream" unless const_defined?(:DataOutputStream, false); end; end
module ::Javax; module Microedition; module Rms; autoload :RecordEnumeration, "javax/microedition/rms/RecordEnumeration" unless const_defined?(:RecordEnumeration, false); end; end; end
module ::Javax; module Microedition; module Rms; autoload :RecordStore, "javax/microedition/rms/RecordStore" unless const_defined?(:RecordStore, false); end; end; end
module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :HashtableUtil, "org/allbinary/util/HashtableUtil" unless const_defined?(:HashtableUtil, false); end; end; end
autoload :NullRecordComparator, "org/allbinary/game/configuration/persistance/NullRecordComparator" unless const_defined?(:NullRecordComparator, false)
autoload :NullRecordFilter, "org/allbinary/game/configuration/persistance/NullRecordFilter" unless const_defined?(:NullRecordFilter, false)
autoload :NullRecordStore, "org/allbinary/game/configuration/persistance/NullRecordStore" unless const_defined?(:NullRecordStore, false)

end; end; end; end; end

