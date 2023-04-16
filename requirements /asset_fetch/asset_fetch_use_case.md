# Title
Asset Fetch

## Description
This use case describes how a user may visualize financial asset data.

## Actors
- User

## Main Flow
1. User taps the text input widget.
2. User enters a valid asset ticker on the text input.
3. User taps on the "Search" button.
4. System fetches data from yahoo API.
5. System redirects the user to asset data visualization page.

## Alternative Flows
- A1: If the user enters an invalid ticker, the system displays an error message.
- A2: If the user enters a valid ticker, but the API returns bad data.

## Postconditions
- The user is redirected to the asset data visualization page.

## Assumptions
- The user has a stable internet connection.
- The user enters a valid ticker.

## Dependencies
- The yahoo API is functional.