URLSessionAppend
========================

URLSessionAppend is a CFWheels plugin that appends session information on to any URLs created using the `linkTo()` or form functions when the user has cookies disabled. This is done using the built in CF function `URLSessionFormat`. If cookies are enabled on the user, no session information is appended. This is ideal for security reasons, but some users (especially mobile) may have cookies disabled.

Usage
----------

You only need to install the plugin. Simply use the built in helper functions for creating links like you are used to. Session data is not appended to external URLs by looking for `http://` in the location.

Building From Source
--------------------

	rake build

History
------------

Version 0.1 - Initial Release

Version 0.2 - Better, more global way of doing this - through the urlfor method