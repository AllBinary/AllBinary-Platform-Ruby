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
# package org.allbinary.logic.system.security.crypt


module ::Org; module Allbinary; module Logic; module System; module Security; module Crypt

class WeakCrypt
    attr_accessor :tsUtil, :abCrypt

    def jfields_org_allbinary_logic_system_security_crypt_WeakCrypt
        @tsUtil = ::Org::Allbinary::TsUtil.getInstance()
        @abCrypt = ::Org::Allbinary::Logic::System::Security::Crypt::Jcehelper::AbCrypt.new(::Org::Allbinary::Logic::System::Security::Crypt::Jcehelper::KeySpecFactory.getInstance().DES)
    end
    

    def initialize(key)
        jfields_org_allbinary_logic_system_security_crypt_WeakCrypt
        begin
            @abCrypt.init(WeakCrypt.keys[key])
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(commonStrings.EXCEPTION, self, "SuperCrypt(key)", e)
        end
    end
    

    def encrypt(value)
        begin
            crypted = @abCrypt.encrypt(@tsUtil.getByteArray(value))
            return DatabaseEncoder.encode(crypted)
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE("Encrypt Failed", self, "encrypt", e)
            return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        end
    end
    

    def decrypt(value)
        begin
            decrypted = @abCrypt.decrypt(DatabaseEncoder.decode(value))
            return decrypted.pack("c*").force_encoding("UTF-8")
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE("decrypt Failed", self, "decrypt", e)
            return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        end
    end

    def self.keys()
        WeakCrypt.java_static_fields unless @java_static_fields_started
        return defined?(@@keys) ? @@keys : nil
    end

    def self.keys=(value)
        WeakCrypt.java_static_fields unless @java_static_fields_started
        @@keys = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@keys = ["qwres6qewrupoi1132790jfahleavi89398", "143uk32lngf8675gt1tv9214uvt924ut9u9", "12kvjlvlkv11445v12951v512v9m51295v1", "gampipoiupg4g43y5u238tu2485u20u0932", "a93u5uu02s2d2g3259u4395u409u093u9vu", "nlkxzj90je3mln9l8l89qjf0j3v50j23r9j", "2lk5fn5j23nr8f0233vq35n23jn58vhy843", "9q24334m598t092tkn2iv0982456n425j9g", "5m9uvmt9436243m5v34g09d43i52ki35g99", "n123lr1iubiu2br32lv32rbu23b32ub2rlb", "va0u0iovji2ojpvj2oij22poiu4ov2uv28v", "bkk80gn2v9uc902340ut209pcup0u09utc9", "mn32m32neee23c42fn32nf3mf2n3fn2m3fm", "zcxpozo3423voizupovsijevnv3n33o33n3", "v0345324thv93h03893893vh893v8h3vhzz", "v8na898v8wyef9ty39yv98yaw39yeeyf8ye", "45zd36d34jg09434hfshp8uj9sy8s7cyr78", "b098yy0908vdvh983b2lb327980a76s5e5e", "v90y9v9p8y3r98pagsdgsagyr6y3985yhfh", "vblkzhhzp8yvzi8u4t9856456zy3rv8a388", "da7696023rgf28dssfa98asd879hg32hewe", "afo7d6ffkjb3jr3i34gb24ytuvu3jr3uryf", "4gijvqo8vq984hv984hj5j3511h832hf833"]
            const_set(:KEYMAX, WeakCrypt.keys.length)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "WeakCrypt"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:KEYMAX].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Crypt; module Jcehelper; autoload :AbCrypt, "org/allbinary/logic/system/security/crypt/jcehelper/AbCrypt" unless const_defined?(:AbCrypt, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Crypt; module Jcehelper; autoload :KeySpecFactory, "org/allbinary/logic/system/security/crypt/jcehelper/KeySpecFactory" unless const_defined?(:KeySpecFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :DatabaseEncoder, "org/allbinary/logic/system/security/crypt/DatabaseEncoder" unless const_defined?(:DatabaseEncoder, false)

begin
    WeakCrypt.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

