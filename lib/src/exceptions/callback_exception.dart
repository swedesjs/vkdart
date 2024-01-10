part of '../../events.dart';

/// [CallbackException] is a class that implements the [Exception] interface.
///
/// This exception is thrown when there are issues with the Callback API in the VkDart application.
/// For example, if the Callback API is already running and an attempt is made to start it again,
/// a [CallbackException] will be thrown.
///
/// The [CallbackException] class takes a message string as a constructor parameter.
/// This message provides more details about the exception.
/// The message can be retrieved using the `toString()` method.
///
/// Example usage:
///
/// ```dart
/// try {
///     // Some code that might throw a CallbackException
/// } catch (e) {
///     if (e is CallbackException) {
///         print('Caught a CallbackException: ${e.toString()}');
///     }
/// }
///
class CallbackException implements Exception {
  /// Constructor for the [CallbackException] class.
  CallbackException(this.message);

  /// The message of the exception.
  final String message;

  @override
  String toString() => 'CallbackException: $message';
}
