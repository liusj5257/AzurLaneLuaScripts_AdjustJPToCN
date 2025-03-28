slot0 = setmetatable
slot1 = rawset
slot2 = rawget
slot3 = error
slot4 = ipairs
slot5 = pairs
slot6 = print
slot7 = table
slot8 = string
slot9 = tostring
slot10 = type
slot11 = require("pb")
slot12 = require("wire_format")
slot13 = require("type_checkers")
slot14 = require("encoder")
slot15 = require("decoder")
slot16 = require("listener")
slot17 = require("containers")
slot19 = require("descriptor").FieldDescriptor
slot20 = require("text_format")

module("protobuf")

slot21 = function(slot0, slot1, slot2)
	slot3 = {
		__newindex = function (slot0, slot1, slot2)
			if uv0[slot1] then
				uv1(slot0, slot1, slot2)
			else
				uv2("error key: " .. slot1)
			end
		end,
		__index = slot3
	}

	slot3.__call = function()
		return uv0({}, uv1)
	end

	_M[slot0] = uv2(slot1, slot3)
end

slot21("Descriptor", {}, {
	full_name = true,
	name = true,
	containing_type = true,
	is_extendable = true,
	extensions = true,
	fields = true,
	extension_ranges = true,
	nested_types = true,
	options = true,
	enum_types = true,
	filename = true
})
slot21("FieldDescriptor", slot19, {
	full_name = true,
	name = true,
	containing_type = true,
	type = true,
	index = true,
	label = true,
	default_value = true,
	number = true,
	extension_scope = true,
	is_extension = true,
	enum_type = true,
	has_default_value = true,
	message_type = true,
	cpp_type = true
})
slot21("EnumDescriptor", {}, {
	full_name = true,
	values = true,
	containing_type = true,
	name = true,
	options = true
})
slot21("EnumValueDescriptor", {}, {
	options = true,
	name = true,
	type = true,
	index = true,
	number = true
})

slot22 = {
	[slot19.TYPE_DOUBLE] = slot12.WIRETYPE_FIXED64,
	[slot19.TYPE_FLOAT] = slot12.WIRETYPE_FIXED32,
	[slot19.TYPE_INT64] = slot12.WIRETYPE_VARINT,
	[slot19.TYPE_UINT64] = slot12.WIRETYPE_VARINT,
	[slot19.TYPE_INT32] = slot12.WIRETYPE_VARINT,
	[slot19.TYPE_FIXED64] = slot12.WIRETYPE_FIXED64,
	[slot19.TYPE_FIXED32] = slot12.WIRETYPE_FIXED32,
	[slot19.TYPE_BOOL] = slot12.WIRETYPE_VARINT,
	[slot19.TYPE_STRING] = slot12.WIRETYPE_LENGTH_DELIMITED,
	[slot19.TYPE_GROUP] = slot12.WIRETYPE_START_GROUP,
	[slot19.TYPE_MESSAGE] = slot12.WIRETYPE_LENGTH_DELIMITED,
	[slot19.TYPE_BYTES] = slot12.WIRETYPE_LENGTH_DELIMITED,
	[slot19.TYPE_UINT32] = slot12.WIRETYPE_VARINT,
	[slot19.TYPE_ENUM] = slot12.WIRETYPE_VARINT,
	[slot19.TYPE_SFIXED32] = slot12.WIRETYPE_FIXED32,
	[slot19.TYPE_SFIXED64] = slot12.WIRETYPE_FIXED64,
	[slot19.TYPE_SINT32] = slot12.WIRETYPE_VARINT,
	[slot19.TYPE_SINT64] = slot12.WIRETYPE_VARINT
}
slot23 = {
	[slot19.TYPE_STRING] = true,
	[slot19.TYPE_GROUP] = true,
	[slot19.TYPE_MESSAGE] = true,
	[slot19.TYPE_BYTES] = true
}
slot24 = {
	[slot19.CPPTYPE_INT32] = slot13.Int32ValueChecker(),
	[slot19.CPPTYPE_INT64] = slot13.TypeChecker({
		string = true,
		number = true
	}),
	[slot19.CPPTYPE_UINT32] = slot13.Uint32ValueChecker(),
	[slot19.CPPTYPE_UINT64] = slot13.TypeChecker({
		string = true,
		number = true
	}),
	[slot19.CPPTYPE_DOUBLE] = slot13.TypeChecker({
		number = true
	}),
	[slot19.CPPTYPE_FLOAT] = slot13.TypeChecker({
		number = true
	}),
	[slot19.CPPTYPE_BOOL] = slot13.TypeChecker({
		boolean = true,
		int = true,
		bool = true
	}),
	[slot19.CPPTYPE_ENUM] = slot13.Int32ValueChecker(),
	[slot19.CPPTYPE_STRING] = slot13.TypeChecker({
		string = true
	})
}
slot25 = {
	[slot19.TYPE_DOUBLE] = slot12.DoubleByteSize,
	[slot19.TYPE_FLOAT] = slot12.FloatByteSize,
	[slot19.TYPE_INT64] = slot12.Int64ByteSize,
	[slot19.TYPE_UINT64] = slot12.UInt64ByteSize,
	[slot19.TYPE_INT32] = slot12.Int32ByteSize,
	[slot19.TYPE_FIXED64] = slot12.Fixed64ByteSize,
	[slot19.TYPE_FIXED32] = slot12.Fixed32ByteSize,
	[slot19.TYPE_BOOL] = slot12.BoolByteSize,
	[slot19.TYPE_STRING] = slot12.StringByteSize,
	[slot19.TYPE_GROUP] = slot12.GroupByteSize,
	[slot19.TYPE_MESSAGE] = slot12.MessageByteSize,
	[slot19.TYPE_BYTES] = slot12.BytesByteSize,
	[slot19.TYPE_UINT32] = slot12.UInt32ByteSize,
	[slot19.TYPE_ENUM] = slot12.EnumByteSize,
	[slot19.TYPE_SFIXED32] = slot12.SFixed32ByteSize,
	[slot19.TYPE_SFIXED64] = slot12.SFixed64ByteSize,
	[slot19.TYPE_SINT32] = slot12.SInt32ByteSize,
	[slot19.TYPE_SINT64] = slot12.SInt64ByteSize
}
slot26 = {
	[slot19.TYPE_DOUBLE] = slot14.DoubleEncoder,
	[slot19.TYPE_FLOAT] = slot14.FloatEncoder,
	[slot19.TYPE_INT64] = slot14.Int64Encoder,
	[slot19.TYPE_UINT64] = slot14.UInt64Encoder,
	[slot19.TYPE_INT32] = slot14.Int32Encoder,
	[slot19.TYPE_FIXED64] = slot14.Fixed64Encoder,
	[slot19.TYPE_FIXED32] = slot14.Fixed32Encoder,
	[slot19.TYPE_BOOL] = slot14.BoolEncoder,
	[slot19.TYPE_STRING] = slot14.StringEncoder,
	[slot19.TYPE_GROUP] = slot14.GroupEncoder,
	[slot19.TYPE_MESSAGE] = slot14.MessageEncoder,
	[slot19.TYPE_BYTES] = slot14.BytesEncoder,
	[slot19.TYPE_UINT32] = slot14.UInt32Encoder,
	[slot19.TYPE_ENUM] = slot14.EnumEncoder,
	[slot19.TYPE_SFIXED32] = slot14.SFixed32Encoder,
	[slot19.TYPE_SFIXED64] = slot14.SFixed64Encoder,
	[slot19.TYPE_SINT32] = slot14.SInt32Encoder,
	[slot19.TYPE_SINT64] = slot14.SInt64Encoder
}
slot27 = {
	[slot19.TYPE_DOUBLE] = slot14.DoubleSizer,
	[slot19.TYPE_FLOAT] = slot14.FloatSizer,
	[slot19.TYPE_INT64] = slot14.Int64Sizer,
	[slot19.TYPE_UINT64] = slot14.UInt64Sizer,
	[slot19.TYPE_INT32] = slot14.Int32Sizer,
	[slot19.TYPE_FIXED64] = slot14.Fixed64Sizer,
	[slot19.TYPE_FIXED32] = slot14.Fixed32Sizer,
	[slot19.TYPE_BOOL] = slot14.BoolSizer,
	[slot19.TYPE_STRING] = slot14.StringSizer,
	[slot19.TYPE_GROUP] = slot14.GroupSizer,
	[slot19.TYPE_MESSAGE] = slot14.MessageSizer,
	[slot19.TYPE_BYTES] = slot14.BytesSizer,
	[slot19.TYPE_UINT32] = slot14.UInt32Sizer,
	[slot19.TYPE_ENUM] = slot14.EnumSizer,
	[slot19.TYPE_SFIXED32] = slot14.SFixed32Sizer,
	[slot19.TYPE_SFIXED64] = slot14.SFixed64Sizer,
	[slot19.TYPE_SINT32] = slot14.SInt32Sizer,
	[slot19.TYPE_SINT64] = slot14.SInt64Sizer
}
slot28 = {
	[slot19.TYPE_DOUBLE] = slot15.DoubleDecoder,
	[slot19.TYPE_FLOAT] = slot15.FloatDecoder,
	[slot19.TYPE_INT64] = slot15.Int64Decoder,
	[slot19.TYPE_UINT64] = slot15.UInt64Decoder,
	[slot19.TYPE_INT32] = slot15.Int32Decoder,
	[slot19.TYPE_FIXED64] = slot15.Fixed64Decoder,
	[slot19.TYPE_FIXED32] = slot15.Fixed32Decoder,
	[slot19.TYPE_BOOL] = slot15.BoolDecoder,
	[slot19.TYPE_STRING] = slot15.StringDecoder,
	[slot19.TYPE_GROUP] = slot15.GroupDecoder,
	[slot19.TYPE_MESSAGE] = slot15.MessageDecoder,
	[slot19.TYPE_BYTES] = slot15.BytesDecoder,
	[slot19.TYPE_UINT32] = slot15.UInt32Decoder,
	[slot19.TYPE_ENUM] = slot15.EnumDecoder,
	[slot19.TYPE_SFIXED32] = slot15.SFixed32Decoder,
	[slot19.TYPE_SFIXED64] = slot15.SFixed64Decoder,
	[slot19.TYPE_SINT32] = slot15.SInt32Decoder,
	[slot19.TYPE_SINT64] = slot15.SInt64Decoder
}
slot29 = {
	[slot19.TYPE_DOUBLE] = slot12.WIRETYPE_FIXED64,
	[slot19.TYPE_FLOAT] = slot12.WIRETYPE_FIXED32,
	[slot19.TYPE_INT64] = slot12.WIRETYPE_VARINT,
	[slot19.TYPE_UINT64] = slot12.WIRETYPE_VARINT,
	[slot19.TYPE_INT32] = slot12.WIRETYPE_VARINT,
	[slot19.TYPE_FIXED64] = slot12.WIRETYPE_FIXED64,
	[slot19.TYPE_FIXED32] = slot12.WIRETYPE_FIXED32,
	[slot19.TYPE_BOOL] = slot12.WIRETYPE_VARINT,
	[slot19.TYPE_STRING] = slot12.WIRETYPE_LENGTH_DELIMITED,
	[slot19.TYPE_GROUP] = slot12.WIRETYPE_START_GROUP,
	[slot19.TYPE_MESSAGE] = slot12.WIRETYPE_LENGTH_DELIMITED,
	[slot19.TYPE_BYTES] = slot12.WIRETYPE_LENGTH_DELIMITED,
	[slot19.TYPE_UINT32] = slot12.WIRETYPE_VARINT,
	[slot19.TYPE_ENUM] = slot12.WIRETYPE_VARINT,
	[slot19.TYPE_SFIXED32] = slot12.WIRETYPE_FIXED32,
	[slot19.TYPE_SFIXED64] = slot12.WIRETYPE_FIXED64,
	[slot19.TYPE_SINT32] = slot12.WIRETYPE_VARINT,
	[slot19.TYPE_SINT64] = slot12.WIRETYPE_VARINT
}

slot30 = function(slot0)
	return uv0[slot0] == nil
end

slot31 = function(slot0, slot1)
	if slot0 == uv0.CPPTYPE_STRING and slot1 == uv0.TYPE_STRING then
		return uv1.UnicodeValueChecker()
	end

	return uv2[slot0]
end

slot32 = function(slot0)
	if slot0.label == uv0.LABEL_REPEATED then
		if uv1(slot0.default_value) ~= "table" or #slot0.default_value ~= 0 then
			uv2("Repeated field default value not empty list:" .. uv3(slot0.default_value))
		end

		if slot0.cpp_type == uv0.CPPTYPE_MESSAGE then
			slot1 = slot0.message_type

			return function (slot0)
				return uv0.RepeatedCompositeFieldContainer(slot0._listener_for_children, uv1)
			end
		else
			slot1 = uv5(slot0.cpp_type, slot0.type)

			return function (slot0)
				return uv0.RepeatedScalarFieldContainer(slot0._listener_for_children, uv1)
			end
		end
	end

	if slot0.cpp_type == uv0.CPPTYPE_MESSAGE then
		slot1 = slot0.message_type

		return function (slot0)
			result = uv0._concrete_class()

			result._SetListener(slot0._listener_for_children)

			return result
		end
	end

	return function (slot0)
		return uv0.default_value
	end
end

slot33 = function(slot0, slot1)
	slot2 = slot1.label == uv0.LABEL_REPEATED
	slot3 = slot1.has_options and slot1.GetOptions().packed

	uv1(slot1, "_encoder", uv2[slot1.type](slot1.number, slot2, slot3))
	uv1(slot1, "_sizer", uv3[slot1.type](slot1.number, slot2, slot3))
	uv1(slot1, "_default_constructor", uv4(slot1))
	(function (slot0, slot1)
		uv2._decoders_by_tag[uv0.TagBytes(uv1.number, slot0)] = uv3[uv1.type](uv1.number, uv4, slot1, uv1, uv1._default_constructor)
	end)(uv7[slot1.type], False)

	if slot2 and uv8(slot1.type) then
		slot4(uv9.WIRETYPE_LENGTH_DELIMITED, True)
	end
end

slot34 = function(slot0, slot1)
	for slot5, slot6 in uv0(slot0.enum_types) do
		for slot10, slot11 in uv0(slot6.values) do
			slot1._member[slot11.name] = slot11.number
		end
	end
end

slot35 = function(slot0)
	return function ()
		slot0 = {
			_cached_byte_size = 0,
			_cached_byte_size_dirty = false,
			_fields = {},
			_is_present_in_parent = false,
			_listener = uv0.NullMessageListener(),
			_listener_for_children = uv0.Listener(slot0),
			_is_message_exist = false
		}

		return uv1(slot0, uv2)
	end
end

slot36 = function(slot0, slot1)
	slot2 = slot0.name

	slot1._getter[slot2] = function (slot0)
		if slot0._fields[uv0] == nil then
			slot0._fields[uv0] = uv0._default_constructor(slot0)

			if not slot0._cached_byte_size_dirty then
				uv1._member._Modified(slot0)
			end
		end

		return slot1
	end

	slot1._setter[slot2] = function (slot0)
		uv0("Assignment not allowed to repeated field \"" .. uv1 .. "\" in protocol message object.")
	end
end

slot37 = function(slot0, slot1)
	slot2 = slot0.name
	slot3 = slot0.message_type

	slot1._getter[slot2] = function (slot0)
		if slot0._fields[uv0] == nil then
			slot1 = uv1._concrete_class()

			slot1:_SetListener(slot0._listener_for_children)

			slot0._fields[uv0] = slot1

			if not slot0._cached_byte_size_dirty then
				uv2._member._Modified(slot0)
			end
		end

		return slot1
	end

	slot1._setter[slot2] = function (slot0, slot1)
		uv0("Assignment not allowed to composite field" .. uv1 .. "in protocol message object.")
	end
end

slot38 = function(slot0, slot1)
	slot2 = slot0.name
	slot3 = uv0(slot0.cpp_type, slot0.type)
	slot4 = slot0.default_value

	slot1._getter[slot2] = function (slot0)
		if slot0._fields[uv0] ~= nil then
			return slot0._fields[uv0]
		else
			return uv1
		end
	end

	slot1._setter[slot2] = function (slot0, slot1)
		uv0(slot1)

		slot0._fields[uv1] = slot1

		if not slot0._cached_byte_size_dirty then
			uv2._member._Modified(slot0)
		end
	end
end

slot39 = function(slot0, slot1)
	constant_name = slot0.name:upper() .. "_FIELD_NUMBER"
	slot1._member[constant_name] = slot0.number

	if slot0.label == uv0.LABEL_REPEATED then
		uv1(slot0, slot1)
	elseif slot0.cpp_type == uv0.CPPTYPE_MESSAGE then
		uv2(slot0, slot1)
	else
		uv3(slot0, slot1)
	end
end

slot40 = {
	__index = function (slot0, slot1)
		if uv0(slot0, "_extended_message")._fields[slot1] ~= nil then
			return slot3
		end

		if slot1.label == uv1.LABEL_REPEATED then
			slot3 = slot1._default_constructor(slot0._extended_message)
		elseif slot1.cpp_type == uv1.CPPTYPE_MESSAGE then
			slot1.message_type._concrete_class():_SetListener(slot2._listener_for_children)
		else
			return slot1.default_value
		end

		slot2._fields[slot1] = slot3

		return slot3
	end,
	__newindex = function (slot0, slot1, slot2)
		slot3 = uv0(slot0, "_extended_message")

		if slot1.label == uv1.LABEL_REPEATED or slot1.cpp_type == uv1.CPPTYPE_MESSAGE then
			uv2("Cannot assign to extension \"" .. slot1.full_name .. "\" because it is a repeated or composite type.")
		end

		uv3(slot1.cpp_type, slot1.type).CheckValue(slot2)

		slot3._fields[slot1] = slot2

		slot3._Modified()
	end
}

slot41 = function(slot0)
	return uv0({
		_extended_message = slot0
	}, uv1)
end

slot42 = function(slot0, slot1)
	for slot5, slot6 in uv0(slot0.fields) do
		uv1(slot6, slot1)
	end

	if slot0.is_extendable then
		slot1._getter.Extensions = function(slot0)
			return uv0(slot0)
		end
	end
end

slot43 = function(slot0, slot1)
	for slot6, slot7 in uv0(slot0._extensions_by_name) do
		slot1._member[uv1.upper(slot6) .. "_FIELD_NUMBER"] = slot7.number
	end
end

slot44 = function(slot0)
	slot0._member.RegisterExtension = function(slot0)
		slot0.containing_type = uv0._descriptor

		uv1(uv0, slot0)

		if uv0._extensions_by_number[slot0.number] == nil then
			uv0._extensions_by_number[slot0.number] = slot0
		else
			uv2(uv3.format("Extensions \"%s\" and \"%s\" both try to extend message type \"%s\" with field number %d.", slot0.full_name, actual_handle.full_name, uv0._descriptor.full_name, slot0.number))
		end

		uv0._extensions_by_name[slot0.full_name] = slot0
	end

	slot0._member.FromString = function(slot0)
		slot1 = uv0._member.__call()

		slot1.MergeFromString(slot0)

		return slot1
	end
end

slot45 = function(slot0, slot1)
	if slot0.label == uv0.LABEL_REPEATED then
		return slot1
	elseif slot0.cpp_type == uv0.CPPTYPE_MESSAGE then
		return slot1._is_present_in_parent
	else
		return true
	end
end

sortFunc = function(slot0, slot1)
	return slot0.index < slot1.index
end

pairsByKeys = function(slot0, slot1)
	slot2 = {}

	for slot6 in uv0(slot0) do
		uv1.insert(slot2, slot6)
	end

	uv1.sort(slot2, slot1)

	slot3 = 0

	return function ()
		uv0 = uv0 + 1

		if uv1[uv0] == nil then
			return nil
		else
			return uv1[uv0], uv2[uv1[uv0]]
		end
	end
end

slot46 = function(slot0, slot1)
	slot1._member.ListFields = function(slot0)
		return (function (slot0)
			slot1, slot2, slot3 = pairsByKeys(uv0._fields, sortFunc)

			return function (slot0, slot1)
				while true do
					slot2, slot3 = uv0(slot0, slot1)

					if slot2 == nil then
						return
					elseif uv1(slot2, slot3) then
						return slot2, slot3
					end
				end
			end, slot2, slot3
		end)(slot0._fields)
	end
end

slot47 = function(slot0, slot1)
	slot2 = {}

	for slot6, slot7 in uv0(slot0.fields) do
		if slot7.label ~= uv1.LABEL_REPEATED then
			slot2[slot7.name] = slot7
		end
	end

	slot1._member.HasField = function(slot0, slot1)
		field = uv0[slot1]

		if field == nil then
			uv1("Protocol message has no singular \"" .. slot1 .. "\" field.")
		end

		if field.cpp_type == uv2.CPPTYPE_MESSAGE then
			value = slot0._fields[field]

			return value ~= nil and value._is_present_in_parent
		else
			return slot0._fields[field] ~= nil
		end
	end
end

slot48 = function(slot0, slot1)
	slot2 = {}

	for slot6, slot7 in uv0(slot0.fields) do
		if slot7.label ~= uv1.LABEL_REPEATED then
			slot2[slot7.name] = slot7
		end
	end

	slot1._member.ClearField = function(slot0, slot1)
		field = uv0[slot1]

		if field == nil then
			uv1("Protocol message has no singular \"" .. slot1 .. "\" field.")
		end

		if slot0._fields[field] then
			slot0._fields[field] = nil
		end

		uv2._member._Modified(slot0)
	end
end

slot49 = function(slot0)
	slot0._member.ClearExtension = function(slot0, slot1)
		if slot0._fields[slot1] == nil then
			slot0._fields[slot1] = nil
		end

		uv0._member._Modified(slot0)
	end
end

slot50 = function(slot0, slot1)
	slot1._member.Clear = function(slot0)
		slot0._fields = {}

		uv0._member._Modified(slot0)
	end
end

slot51 = function(slot0)
	slot1 = uv0.msg_format

	slot0.__tostring = function(slot0)
		return uv0(slot0)
	end
end

slot52 = function(slot0)
	slot0._member.HasExtension = function(slot0, slot1)
		if slot1.label == uv0.LABEL_REPEATED then
			uv1(slot1.full_name .. " is repeated.")
		end

		if slot1.cpp_type == uv0.CPPTYPE_MESSAGE then
			value = slot0._fields[slot1]

			return value ~= nil and value._is_present_in_parent
		else
			return slot0._fields[slot1]
		end
	end
end

slot53 = function(slot0)
	slot0._member._SetListener = function(slot0, slot1)
		if slot1 ~= nil then
			slot0._listener = uv0.NullMessageListener()
		else
			slot0._listener = slot1
		end
	end
end

slot54 = function(slot0, slot1)
	slot1._member.ByteSize = function(slot0)
		if not slot0._cached_byte_size_dirty and slot0._cached_byte_size > 0 then
			return slot0._cached_byte_size
		end

		slot1 = 0

		for slot5, slot6 in uv0._member.ListFields(slot0) do
			slot1 = slot5._sizer(slot6) + slot1
		end

		slot0._cached_byte_size = slot1
		slot0._cached_byte_size_dirty = false
		slot0._listener_for_children.dirty = false

		return slot1
	end
end

slot55 = function(slot0, slot1)
	slot1._member.SerializeToString = function(slot0)
		if not uv0._member.IsInitialized(slot0) then
			uv1("Message is missing required fields: " .. uv2.concat(uv0._member.FindInitializationErrors(slot0), ","))
		end

		return uv0._member.SerializePartialToString(slot0)
	end

	slot1._member.SerializeToIOString = function(slot0, slot1)
		if not uv0._member.IsInitialized(slot0) then
			uv1("Message is missing required fields: " .. uv2.concat(uv0._member.FindInitializationErrors(slot0), ","))
		end

		return uv0._member.SerializePartialToIOString(slot0, slot1)
	end
end

slot56 = function(slot0, slot1)
	slot2 = uv0.concat

	slot1._member._InternalSerialize = function(slot0, slot1)
		for slot5, slot6 in uv0._member.ListFields(slot0) do
			slot5._encoder(slot1, slot6)
		end
	end

	slot1._member.SerializePartialToIOString = function(slot0, slot1)
		slot2 = slot1.write

		uv0(slot0, function (slot0)
			uv0(uv1, slot0)
		end)
	end

	slot1._member.SerializePartialToString = function(slot0)
		uv0(slot0, function (slot0)
			uv0[#uv0 + 1] = slot0
		end)

		return uv1({})
	end
end

slot57 = function(slot0, slot1)
	slot2 = uv0.ReadTag
	slot3 = uv0.SkipField
	slot4 = slot1._decoders_by_tag

	slot1._member._InternalParse = function(slot0, slot1, slot2, slot3)
		uv0._member._Modified(slot0)

		slot0._is_message_exist = true
		slot4 = slot0._fields
		slot5, slot6, slot7 = nil

		while slot2 ~= slot3 do
			slot8, slot6 = uv1(slot1, slot2)

			if uv2[slot8] == nil then
				if uv3(slot1, slot6, slot3, slot5) == -1 then
					return slot2
				end

				slot2 = slot6
			else
				slot2 = slot7(slot1, slot6, slot3, slot0, slot4)
			end
		end

		return slot2
	end

	slot1._member.MergeFromString = function(slot0, slot1)
		slot2 = #slot1

		if uv0(slot0, slot1, 0, slot2) ~= slot2 then
			uv1("Unexpected end-group tag.")
		end

		return slot2
	end

	slot1._member.ParseFromString = function(slot0, slot1)
		uv0._member.Clear(slot0)
		uv1(slot0, slot1)
	end
end

slot58 = function(slot0, slot1)
	slot2 = {}

	for slot6, slot7 in uv0(slot0.fields) do
		if slot7.label == uv1.LABEL_REQUIRED then
			slot2[#slot2 + 1] = slot7
		end
	end

	slot1._member.IsInitialized = function(slot0, slot1)
		for slot5, slot6 in uv0(uv1) do
			if slot0._fields[slot6] == nil or slot6.cpp_type == uv2.CPPTYPE_MESSAGE and not slot0._fields[slot6]._is_present_in_parent then
				if slot1 ~= nil then
					slot1[#slot1 + 1] = uv3._member.FindInitializationErrors(slot0)
				end

				return false
			end
		end

		for slot5, slot6 in uv4(slot0._fields) do
			if slot5.cpp_type == uv2.CPPTYPE_MESSAGE then
				if slot5.label == uv2.LABEL_REPEATED then
					for slot10, slot11 in uv0(slot6) do
						if not slot11:IsInitialized() then
							if slot1 ~= nil then
								slot1[#slot1 + 1] = uv3._member.FindInitializationErrors(slot0)
							end

							return false
						end
					end
				elseif slot6._is_present_in_parent and not slot6:IsInitialized() then
					if slot1 ~= nil then
						slot1[#slot1 + 1] = uv3._member.FindInitializationErrors(slot0)
					end

					return false
				end
			end
		end

		return true
	end

	slot1._member.FindInitializationErrors = function(slot0)
		slot1 = {}

		for slot5, slot6 in uv0(uv1) do
			if not uv2._member.HasField(slot0, slot6.name) then
				uv3.insert(slot1, slot6.name)
			end
		end

		for slot5, slot6 in uv2._member.ListFields(slot0) do
			if slot5.cpp_type == uv4.CPPTYPE_MESSAGE then
				if slot5.is_extension then
					name = uv5.format("(%s)", slot5.full_name)
				else
					name = slot5.name
				end

				if slot5.label == uv4.LABEL_REPEATED then
					for slot10, slot11 in uv0(slot6) do
						slot15 = slot10
						prefix = uv5.format("%s[%d].", name, slot15)
						sub_errors = slot11:FindInitializationErrors()

						for slot15, slot16 in uv0(sub_errors) do
							slot1[#slot1 + 1] = prefix .. slot16
						end
					end
				else
					prefix = name .. "."
					sub_errors = slot6:FindInitializationErrors()

					for slot10, slot11 in uv0(sub_errors) do
						slot1[#slot1 + 1] = prefix .. slot11
					end
				end
			end
		end

		return slot1
	end
end

slot59 = function(slot0)
	slot1 = uv0.LABEL_REPEATED
	slot2 = uv0.CPPTYPE_MESSAGE

	slot0._member.MergeFrom = function(slot0, slot1)
		assert(slot1 ~= slot0)
		uv0._member._Modified(slot0)

		slot2 = slot0._fields

		for slot6, slot7 in uv1(slot1._fields) do
			if slot6.label == uv2 or slot6.cpp_type == uv3 then
				field_value = slot2[slot6]

				if field_value == nil then
					field_value = slot6._default_constructor(slot0)
					slot2[slot6] = field_value
				end

				field_value:MergeFrom(slot7)
			else
				slot0._fields[slot6] = slot7
			end
		end
	end
end

slot60 = function(slot0, slot1)
	uv0(slot0, slot1)
	uv1(slot0, slot1)
	uv2(slot0, slot1)

	if slot0.is_extendable then
		uv3(slot1)
		uv4(slot1)
	end

	uv5(slot0, slot1)
	uv6(slot1)
	uv7(slot1)
	uv8(slot0, slot1)
	uv9(slot0, slot1)
	uv10(slot0, slot1)
	uv11(slot0, slot1)
	uv12(slot0, slot1)
	uv13(slot1)
end

slot61 = function(slot0)
	slot1 = function(slot0)
		if not slot0._cached_byte_size_dirty then
			slot0._cached_byte_size_dirty = true
			slot0._listener_for_children.dirty = true
			slot0._is_present_in_parent = true

			slot0._listener:Modified()
		end
	end

	slot0._member._Modified = slot1
	slot0._member.SetInParent = slot1
end

slot62 = function(slot0)
	slot1 = slot0._getter
	slot2 = slot0._member

	return function (slot0, slot1)
		if uv0[slot1] then
			return slot2(slot0)
		else
			return uv1[slot1]
		end
	end
end

slot63 = function(slot0)
	slot1 = slot0._setter

	return function (slot0, slot1, slot2)
		if uv0[slot1] then
			slot3(slot0, slot2)
		else
			uv1(slot1 .. " not found")
		end
	end
end

_AddClassAttributesForNestedExtensions = function(slot0, slot1)
	for slot6, slot7 in uv0(slot0._extensions_by_name) do
		slot1._member[slot6] = slot7
	end
end

_M.Message = function(slot0)
	slot1 = {
		_decoders_by_tag = {}
	}
	slot5 = {}

	uv0(slot0, "_extensions_by_name", slot5)

	for slot5, slot6 in uv1(slot0.extensions) do
		slot0._extensions_by_name[slot6.name] = slot6
	end

	slot5 = {}

	uv0(slot0, "_extensions_by_number", slot5)

	for slot5, slot6 in uv1(slot0.extensions) do
		slot0._extensions_by_number[slot6.number] = slot6
	end

	slot1._descriptor = slot0
	slot1._extensions_by_name = {}
	slot1._extensions_by_number = {}
	slot1._getter = {}
	slot1._setter = {}
	slot1._member = {
		__call = uv3(slot1),
		__index = slot1._member,
		type = uv2({}, slot1._member)
	}

	if uv4(slot0, "_concrete_class") == nil then
		slot6 = slot2

		uv0(slot0, "_concrete_class", slot6)

		for slot6, slot7 in uv1(slot0.fields) do
			uv5(slot1, slot7)
		end
	end

	uv6(slot0, slot1)
	_AddClassAttributesForNestedExtensions(slot0, slot1)
	uv7(slot0, slot1)
	uv8(slot0, slot1)
	uv9(slot1)
	uv10(slot0, slot1)
	uv11(slot1)

	slot1.__index = uv12(slot1)
	slot1.__newindex = uv13(slot1)

	return slot2
end
