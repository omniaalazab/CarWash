class LogInStates {}

class LogInInitialState extends LogInStates {}

class LogInSucessState extends LogInStates {}

class LogInErrorState extends LogInStates {
  final String errorMessage;
  LogInErrorState(this.errorMessage);
}
