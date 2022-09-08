import 'package:flutter/material.dart';

SnackBar snackBarWhenSuccess({String message = "Success!"}) {
  return SnackBar(
    content: Text(message),
    backgroundColor: Colors.green,
  );
}

SnackBar snackBarWhenFailure({required String snackBarFailureText}) {
  return SnackBar(
    content: Text(snackBarFailureText),
    backgroundColor: Colors.red,
  );
}
