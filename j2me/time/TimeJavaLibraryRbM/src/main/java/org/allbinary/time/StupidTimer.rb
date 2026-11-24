# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.time

require "java/lang/Object"

module ::Org; module Allbinary; module TimePackage

class StupidTimer
    attr_accessor :logUtil, :commonStrings, :nullUtil, :threadObjectUtil

    def jfields_org_allbinary_time_StupidTimer
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @nullUtil = ::Org::Allbinary::Logic::NullUtil.getInstance()
        @threadObjectUtil = ::Org::Allbinary::ThreadPackage::ThreadObjectUtil.getInstance()
    end

    def initialize
        jfields_org_allbinary_time_StupidTimer
    end
    

    def visitBool(visitorInterface)
        result = visitorInterface.visit(@nullUtil.NULL_OBJECT)
        result2 = result
        return result2
    end
    

    # throws Exception
    def visit(visitorInterface, timeDelayHelper)
        tookTooLong = false
        _WAITING_FOR = "Waiting for: "
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(_WAITING_FOR).append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(visitorInterface)).to_s, self, @commonStrings.VISIT)
        index = 0
        while self.visitBool(visitorInterface)
            if index % 10 == 0
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(_WAITING_FOR).appendint(index).to_s, self, @commonStrings.VISIT)
            end
            index += 1
            (self).java_monitor.synchronize do
                @threadObjectUtil.waitObjectFor(self, 1800)
            end
            if timeDelayHelper.isTimeTNT()
                tookTooLong = true
                break
            end
        end
        if tookTooLong
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.VISIT, StandardError.new(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Took Too Long: ").append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(visitorInterface)).to_s))
        else
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(timeDelayHelper.to_s, self, @commonStrings.VISIT)
        end
    end
    

    # throws Exception
    def stopWaiting()
        (self).java_monitor.synchronize do
            @threadObjectUtil.notifyObject(self)
        end
    end
end

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Visitor; autoload :Visitor, "org/allbinary/logic/util/visitor/Visitor" unless const_defined?(:Visitor, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :ThreadObjectUtil, "org/allbinary/thread/ThreadObjectUtil" unless const_defined?(:ThreadObjectUtil, false); end; end; end
autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false)

end; end; end

