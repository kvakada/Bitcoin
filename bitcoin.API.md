
# Bitcoin API Documentation

This document explains how to use the `bitcoin_utils.py` module, which is designed to modularize the logic for fetching, preprocessing, visualizing, forecasting, and analyzing Bitcoin time series data.

---

## 🔧 Module Overview: `bitcoin_utils.py`

The module contains reusable utility functions grouped into the following categories:

### 1. Data Access
- **`fetch_bitcoin_data(api_key, days)`**: Simulates fetching Bitcoin data via an API. Replace with actual logic in production.
- **`save_to_local(df, filename)`**: Saves a DataFrame to a local CSV file.
- **`upload_to_s3(local_path, s3_path)`**: Uploads a local CSV file to an S3 bucket.
- **`load_from_s3(s3_path)`**: Loads a CSV file from S3 into a Pandas DataFrame.

---

### 2. Data Processing
- **`preprocess_data(df)`**: Converts Timestamp to datetime and sets it as the DataFrame index.
- **`check_missing(df)`**: Checks for missing/null values and prints a summary.

---

### 3. Visualization & Analysis
- **`plot_price(df)`**: Line plot of Bitcoin price over time.
- **`plot_moving_average(df, window_size)`**: Adds and plots a moving average line.
- **`decompose_series(df)`**: Performs seasonal decomposition of time series (trend, seasonal, residuals).

---

### 4. Forecasting
- **`forecast_arima(df, steps)`**: Fits an ARIMA model and forecasts future Bitcoin prices for the specified number of days.

---

### 5. Anomaly Detection
- **`detect_anomalies(df)`**: Detects anomalies using both Z-score and rolling IQR methods and plots them.

---

## 🧪 Notebook Usage: `bitcoin.API.ipynb`

This notebook walks through the following:

1. **Imports** the necessary utility functions.
2. **Fetches/Loads** Bitcoin data (simulated fetch or from local CSV).
3. **Uploads** the dataset to S3 and then **reloads** it.
4. **Preprocesses** and checks for missing values.
5. Performs **basic visualizations**, moving averages, and seasonal decomposition.
6. Applies **ARIMA forecasting**.
7. Performs **anomaly detection**.
8. **Saves the final DataFrame** with anomalies and uploads it to S3.

---

## 💡 Key Design Decisions

- Utility-first approach ensures reusability and maintainability.
- No inline logic in notebooks: all workflows are callable via `bitcoin_utils.py`.
- Each step is modular and testable in isolation.
- Visualization functions are self-contained for easy debugging and customization.

---

## 🏁 Next Steps

This API layer will be used in:
- `bitcoin.example.ipynb` for a complete use-case
- `Dockerfile` setup for running in a containerized environment
- Integration into `Causify-AI/tutorials` repo for submission

