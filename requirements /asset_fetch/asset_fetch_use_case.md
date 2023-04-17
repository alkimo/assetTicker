# Asset Fetch Use Case

## How a user may visualize stock data. 

## Main Flow
1. System validates ticker input.
2. System makes a request to the API.
3. System validates data received from API.
4. System displays data.

## Exceptions
- A1: If the user enters an invalid ticker, the system displays a Bad Data error message.
- A2: If the user enters a valid ticker and the API returns bad data, the system displays an unexpected error message.
- A3: If the user enters a valid ticker and the server fails, the system displays an unexpected error message.
- A4: If the user enters a valid ticker and the API returns an invalid url, the system displays an unexpected error message.

## Assumptions
- The user has a stable internet connection.

## Dependencies
- The yahoo API is functional.
