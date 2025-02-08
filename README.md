# Insufficient Error Handling in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code: insufficient error handling. The `fetchData` function attempts to fetch data from an API, but its error handling is inadequate.  This can lead to silent failures or unexpected behavior.

## The Problem

The `fetchData` function uses a `try-catch` block, but the catch block only prints a generic error message. This lacks detail, making debugging difficult.  Additionally, the exception is not re-thrown, preventing higher levels from handling the failure appropriately. 

## The Solution

The solution improves error handling by:

1.  Catching specific exceptions (like `FormatException` if JSON decoding fails).
2.  Re-throwing exceptions with more context to aid in debugging.
3.  Providing more informative error messages to the user.

## How to run

1. Clone this repository.
2. Navigate to the repository directory.
3. Run `dart bug.dart` to see the original code's behavior and then run `dart bugSolution.dart` to see how the improved solution functions. 