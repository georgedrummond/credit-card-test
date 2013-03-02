Feature: Credit card validator


Scenario Outline: Command line input
  When I run `bin/card <card_number>`
  Then the output should contain "<output>"

Scenarios:
  | card_number         | output                                 |
  | 4111111111111111    | VISA: 4111111111111111 (valid)         |
  | 4111111111111       | VISA: 4111111111111 (invalid)          |
  | 4012888888881881    | VISA: 4012888888881881 (valid)         |
  | 378282246310005     | AMEX: 378282246310005 (valid)          |
  | 6011111111111117    | Discover: 6011111111111117 (valid)     |
  | 5105105105105100    | Mastercard: 5105105105105100 (valid)   |
  | 5105 1051 0510 5106 | Mastercard: 5105105105105106 (invalid) |
  | 9111111111111111    | Unknown: 9111111111111111 (invalid)    |


