# Unhandled Exception in Asynchronous Network Request

This repository demonstrates a common error in Dart: failing to gracefully handle exceptions that might occur during asynchronous network requests using the `http` package. The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a more robust solution.

**Problem:**
The original code lacks comprehensive error handling, leaving the application vulnerable to crashes if the network request fails.  The `catch` block only prints the error; it doesn't provide any mechanism for recovery or alternative actions.

**Solution:**
The improved code adds more informative error handling, including distinguishing between different types of errors (network errors vs. data parsing errors).  It also uses a custom exception type to provide more context for debugging.