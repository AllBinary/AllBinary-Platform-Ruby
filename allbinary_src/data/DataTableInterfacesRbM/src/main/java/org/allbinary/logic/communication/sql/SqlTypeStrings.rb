# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.communication.sql


module ::Org; module Allbinary; module Logic; module Communication; module Sql

class SqlTypeStrings
    attr_accessor :CHAR_COLUMN, :INT_COLUMN, :MAX_SIZE, :SIXTY_SIZE, :NOT_NULL, :ONE_SIZE, :TWO_SIZE, :THREE_SIZE, :SIX_SIZE, :ELEVEN_SIZE, :TWELVE_SIZE, :ONE_KB_CHAR_COLUMN, :MAX_CHAR_COLUMN, :MAX_CHAR_COLUMN_NOT_NULL, :SIXTY_CHAR_COLUMN_NOT_NULL, :ONE_CHAR_COLUMN_NOT_NULL, :SIX_CHAR_COLUMN_NOT_NULL, :TWELVE_CHAR_COLUMN_NOT_NULL, :TWO_INT_NOT_NULL, :THREE_INT_NOT_NULL, :FOUR_INT_NOT_NULL, :MAX_INT_NOT_NULL, :MAX_INT_UNSIGNED, :MAX_INT_UNSIGNED_NOT_NULL, :MAX_BIG_INT_NOT_NULL, :MAX_BIG_INT_UNSIGNED, :MAX_BIG_INT_UNSIGNED_NOT_NULL, :MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL, :LONG_BLOB, :BLOB, :BLOB_NOT_NULL

    def jfields_org_allbinary_logic_communication_sql_SqlTypeStrings
        @CHAR_COLUMN = "VARCHAR"
        @INT_COLUMN = "VARCHAR"
        @MAX_SIZE = "(255)"
        @SIXTY_SIZE = "(60)"
        @NOT_NULL = "NOT NULL"
        @ONE_SIZE = "(1)"
        @TWO_SIZE = "(2)"
        @THREE_SIZE = "(3)"
        @SIX_SIZE = "(6)"
        @ELEVEN_SIZE = "(11)"
        @TWELVE_SIZE = "(12)"
        @ONE_KB_CHAR_COLUMN = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).append(@CHAR_COLUMN).append("(1024)").append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COMMA_SEP).to_s
        @MAX_CHAR_COLUMN = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).append(@CHAR_COLUMN).append(@MAX_SIZE).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COMMA_SEP).to_s
        @MAX_CHAR_COLUMN_NOT_NULL = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).append(@CHAR_COLUMN).append(@MAX_SIZE).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).append(@NOT_NULL).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COMMA_SEP).to_s
        @SIXTY_CHAR_COLUMN_NOT_NULL = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).append(@CHAR_COLUMN).append(@SIXTY_SIZE).append(@NOT_NULL).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COMMA_SEP).to_s
        @ONE_CHAR_COLUMN_NOT_NULL = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).append(@CHAR_COLUMN).append(@ONE_SIZE).append(@NOT_NULL).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COMMA_SEP).to_s
        @SIX_CHAR_COLUMN_NOT_NULL = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).append(@CHAR_COLUMN).append(@SIX_SIZE).append(@NOT_NULL).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COMMA_SEP).to_s
        @TWELVE_CHAR_COLUMN_NOT_NULL = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).append(@CHAR_COLUMN).append(@TWELVE_SIZE).append(@NOT_NULL).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COMMA_SEP).to_s
        @TWO_INT_NOT_NULL = " INT(2) NOT NULL, "
        @THREE_INT_NOT_NULL = " INT(3) NOT NULL, "
        @FOUR_INT_NOT_NULL = " INT(4) NOT NULL, "
        @MAX_INT_NOT_NULL = " INT(11) NOT NULL, "
        @MAX_INT_UNSIGNED = " INT(11) UNSIGNED, "
        @MAX_INT_UNSIGNED_NOT_NULL = " INT(11) UNSIGNED NOT NULL, "
        @MAX_BIG_INT_NOT_NULL = " BIGINT(19) NOT NULL, "
        @MAX_BIG_INT_UNSIGNED = " BIGINT(19) UNSIGNED, "
        @MAX_BIG_INT_UNSIGNED_NOT_NULL = " BIGINT(19) UNSIGNED NOT NULL, "
        @MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL = " BIGINT(19) UNSIGNED AUTO_INCREMENT NOT NULL,"
        @LONG_BLOB = " LONGBLOB, "
        @BLOB = " BLOB, "
        @BLOB_NOT_NULL = " BLOB NOT NULL, "
    end

    def initialize
        jfields_org_allbinary_logic_communication_sql_SqlTypeStrings
    end
    

    def self.getInstance()
        return SqlTypeStrings.instance
    end

    def self.instance()
        SqlTypeStrings.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        SqlTypeStrings.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = SqlTypeStrings.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SqlTypeStrings"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end

begin
    SqlTypeStrings.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

