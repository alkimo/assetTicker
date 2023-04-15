# Stock Variation Tracker

📈📊 A Flutter project for tracking stock variations using the Yahoo Finance API.

## Description

👉 This project is a stock price variation tracking app implemented in Flutter, utilizing the Yahoo finance API for data retrieval. The app employs Clean Architecture and TDD methodology for reliable and easy maintenance.

👉 The project is designed to allow users to track the price variations of their preferred stocks over a period of 30 trading days. It presents the percentage of price variation from one day to another and the percentage from the first trading day presented.

👉 Mockito is used to create mock objects to aid in testing of the app. The project also emphasizes a strong focus on maintainability and scalability to ensure it remains efficient and effective in the long term. The app has an intuitive and user-friendly interface, designed to make the process of tracking stock prices as easy and efficient as possible.

👉 Overall, this project is ideal for anyone looking to create a reliable and effective stock price variation tracking app in Flutter, with a strong focus on TDD, mockito, and Clean Architecture principles.

## Features

- 🔍 Search for stocks: Users will be able to search for stocks using their ticker symbols, and view detailed information about each stock.
- 📈 Real-time updates: The app will provide real-time updates on stock prices and percentage variations over the last 30 days.
- 📊 Historical data: Users will be able to view historical data on stock prices and variations, to gain a better understanding of long-term trends.

## Architecture

- 🧱 The project will follow the Clean Architecture principles, with a clear separation of concerns between the domain, data, and presentation layers.
- 🧪 The app will be developed using Test-Driven Development (TDD), with the help of the Mockito library for mocking dependencies.

## Table of Contents
- [Technologies](#technologies)
- [Installation](#installation)
- [How to Use](#how-to-use)
- [License](#license)

## Technologies

- 🚀 Flutter
- 🧪 TDD
- 🧱 Clean Architecture
- 💹 Yahoo Finance API

## Installation

1. Clone the repository.
2. Run `flutter pub get` to install dependencies.

## How to Use

1. Obtain an API key from the [Yahoo Finance API](https://finance.yahoo.com/quote/TSLA/history?p=TSLA).
2. Set the API key in the `lib/data/remote/data_sources/stock_price_remote_data_source_impl.dart` file.
3. Run the tests using the `flutter test` command.
4. Run the application using the `flutter run` command.

## License

📝 This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).
