# Unhandled Exception in Dart's `catch` Block

This repository demonstrates a common error in Dart where the `catch` block in a `try-catch` statement only prints the error message but doesn't rethrow the exception. This can lead to unexpected behavior or silent failures in your application.

## Bug Description

The `fetchData` function in `bug.dart` makes an HTTP request.  The `catch` block prints the error, but fails to rethrow the exception.  This means the program continues to run, even though an error occurred.

## Solution

The `bugSolution.dart` file shows the corrected version. The `catch` block now uses `rethrow` to re-propagate the exception, ensuring that it is handled appropriately up the call stack. This will prevent unexpected behavior and potential data loss or corruption.