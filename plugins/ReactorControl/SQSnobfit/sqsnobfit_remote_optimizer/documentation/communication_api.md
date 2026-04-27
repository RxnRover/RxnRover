# Communication API

The document details the requests that are sent from this program and the expected replies from a remote function calculator. JSON formatting must be used for all messages except strings and numbers.

## Request Messages

Request (type) : Expected Reply
 - `aborted` (string) : No reply expected.
 - `bounds` (string) : An N x 2 JSON Array, where N is the number of parameters, the first column is the lower bound of each parameter, and the second column is the upper bound of each parameter.
 - `budget` (string) : A positive number
 - `initial_parameters` (string) : JSON Array (empty "[]" for random initial parameters)
 - `options` (string) : A JSON dictionary with the following keys: minfcall (number or None), maxmp (number or None), maxfail (number or None), and verbose (True or False).

 - best (JSON dictionary with keys: value (number), parameters (1d JSON array), steps (number), and history (2d JSON array) : No reply expected.
 - parameters (1d JSON Array) : `abort` or a number.