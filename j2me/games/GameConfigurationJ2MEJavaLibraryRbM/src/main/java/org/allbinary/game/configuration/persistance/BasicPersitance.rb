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


module ::Org; module Allbinary; module Game; module Configuration; module Persistance

class BasicPersitance
    attr_accessor :logUtil, :commonStrings, :persistanceStrings, :platformRecordIdUtil, :recordId, :valueList, :idList

    def jfields_org_allbinary_game_configuration_persistance_BasicPersitance
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @persistanceStrings = PersistanceStrings.getInstance()
        @platformRecordIdUtil = ::Org::Allbinary::Persistance::PlatformRecordIdUtil.getInstance()
        @recordId = nil unless instance_variable_defined?(:@recordId)
        @valueList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @idList = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def initialize(recordId)
        jfields_org_allbinary_game_configuration_persistance_BasicPersitance
        @recordId = recordId
    end
    

    # throws Exception
    def deleteRecoreStore(abeClientInformation)
        ::Javax::Microedition::Rms::RecordStore.deleteRecordStore(self.getRecordId(abeClientInformation))
    end
    

    # throws Exception
    def deleteAll(abeClientInformation)
        size = @idList.size()
        (0...size).each do |index|
            integer = @idList.objectArray[index]
            self.delete(abeClientInformation, integer.to_i)
        end
        self.clear()
    end
    

    # throws Exception
    def delete(abeClientInformation, deleteId)
        recordStore = NullRecordStore::NULL_RECORD_STORE
        begin
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@persistanceStrings.DELETING_WITH_ID).appendint(deleteId).to_s, self, @commonStrings.delete)
            recordStore = ::Javax::Microedition::Rms::RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            recordStore.deleteRecord(deleteId)
        rescue StandardError => e
            raise e
        ensure
            if recordStore != nil
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(@persistanceStrings.CLOSING_RECORDSTORE, self, @commonStrings.delete)
                recordStore.closeRecordStore()
            end
        end
    end
    

    def getRecordId(abeClientInformation)
        return @platformRecordIdUtil.getRecordId(abeClientInformation, @recordId)
    end
    

    def getList()
        return @valueList
    end
    

    def getIds()
        return @idList
    end
    

    def clear()
        @valueList.clear()
        @idList.clear()
    end
end

module ::Javax; module Microedition; module Rms; autoload :RecordStore, "javax/microedition/rms/RecordStore" unless const_defined?(:RecordStore, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Persistance; autoload :PlatformRecordIdUtil, "org/allbinary/persistance/PlatformRecordIdUtil" unless const_defined?(:PlatformRecordIdUtil, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :NullRecordStore, "org/allbinary/game/configuration/persistance/NullRecordStore" unless const_defined?(:NullRecordStore, false)
autoload :PersistanceStrings, "org/allbinary/game/configuration/persistance/PersistanceStrings" unless const_defined?(:PersistanceStrings, false)

end; end; end; end; end

