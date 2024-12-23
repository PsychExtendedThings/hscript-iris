package test.world;

// using test.world.Meow;
function main() {
	try {
		"hello world".contains("hello");
		trace("StringTools.contains should have thrown an error");
	} catch (e:Dynamic) {}

	using StringTools;
	try {
		"hello world".contains("hello");
	} catch (e:Dynamic) {
		trace("StringTools.contains threw an error");
	}

	trace('i am going to die');

	trace('StringTools.startsWith("hello world", "hello")', StringTools.startsWith("hello world", "hello"));
	trace('"hello world".startsWith("hello")', "hello world".startsWith("hello"));

	trace('StringTools.hex(0xFF0000)', StringTools.hex(0xFF0000));
	trace('0xFF0000.hex()', 0xFF0000.hex());

	trace('StringTools.hex(0xFF00, 6)', StringTools.hex(0xFF00, 6));
	trace('0x00ff00.hex(6)', 0x00ff00.hex(6));

	trace('StringTools.contains("hello world", "hello")', StringTools.contains("hello world", "hello"));
	trace('"hello world".contains("hello")', "hello world".contains("hello"));

	// Lambda

	try {
		var result = [1, 2, 3].findIndex(function(v) return v == 2);
		trace("Lambda.findIndex should have thrown an error");
	} catch (e:Dynamic) {}

	using Lambda;

	try {
		var result = [1, 2, 3].findIndex(function(v) return v == 2);
	} catch (e:Dynamic) {
		trace("Lambda.findIndex threw an error");
	}
}
