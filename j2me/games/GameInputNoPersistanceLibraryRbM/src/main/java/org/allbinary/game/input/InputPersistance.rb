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

#GameInputNoPersistanceLibrary
class InputPersistance < ::Org::Allbinary::Game::Configuration::Persistance::BasicPersitance
    attr_accessor :hashtableUtil

    def jfields_org_allbinary_game_input_InputPersistance
        @hashtableUtil = ::Org::Allbinary::Util::HashtableUtil.getInstance()
    end
    

    def initialize(name)
        super(name)
        jfields_org_allbinary_game_input_InputPersistance
    end
    

    # throws Exception
    def loadAll(abeClientInformation)
        recordStore = ::Javax::Microedition::Rms::RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
        recordEnum = recordStore.enumerateRecords(::Org::Allbinary::Game::Configuration::Persistance::NullRecordFilter::NULL_RECORD_FILTER, ::Org::Allbinary::Game::Configuration::Persistance::NullRecordComparator::NULL_RECORD_COMPARATOR, true)
        hashtable = nil
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        smallIntegerSingletonFactory = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance()
        id = 0
        while recordEnum.hasNextElement()
            id = recordEnum.nextRecordId()
            stringBuffer.delete(0, stringBuffer.length())
            @logUtil.putF(stringBuffer.append(@persistanceStrings.LOADING_ID).appendint(id).to_s, self, @persistanceStrings.LOAD_ALL)
            hashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
            @valueList.add(hashtable)
            @idList.add(smallIntegerSingletonFactory.getAt(id))
        end
        recordStore.closeRecordStore()
    end
    java_overload :loadAll, 1
    

    # throws Exception
    def save(abeClientInformation, hashtable)
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@persistanceStrings.NOT_SAVING).append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(hashtable)).to_s, self, @commonStrings.SAVE)
        recordStore = ::Javax::Microedition::Rms::RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
        gameActionInput = nil
        list = nil
        input = nil
        inputObjectArray = @hashtableUtil.getKeysAsArray(hashtable)
        size = inputObjectArray.length
        (0...size).each do |index|
            gameActionInput = inputObjectArray[index]
            list = hashtable.get(inputObjectArray[index])
            (0...list.size()).each do |index2|
                input = list.get(index2)
            end
        end
        recordStore.closeRecordStore()
    end
    java_overload :save, 2
end

module ::Javax; module Microedition; module Rms; autoload :RecordEnumeration, "javax/microedition/rms/RecordEnumeration" unless const_defined?(:RecordEnumeration, false); end; end; end
module ::Javax; module Microedition; module Rms; autoload :RecordStore, "javax/microedition/rms/RecordStore" unless const_defined?(:RecordStore, false); end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Persistance; autoload :NullRecordComparator, "org/allbinary/game/configuration/persistance/NullRecordComparator" unless const_defined?(:NullRecordComparator, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Persistance; autoload :NullRecordFilter, "org/allbinary/game/configuration/persistance/NullRecordFilter" unless const_defined?(:NullRecordFilter, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :HashtableUtil, "org/allbinary/util/HashtableUtil" unless const_defined?(:HashtableUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :Input, "org/allbinary/game/input/Input" unless const_defined?(:Input, false)

end; end; end; end

