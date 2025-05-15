
# Bitcoin Example: Full Time Series Analysis Pipeline

This tutorial walks through a complete example using `bitcoin_utils.py` to perform end-to-end Bitcoin price analysis, forecasting, and anomaly detection.

---

## 📌 Goals

This example demonstrates:
- Reading and preprocessing Bitcoin time series data
- Uploading and retrieving files from S3 using `s3fs`
- Visualizing the data and decomposing seasonal components
- Forecasting future prices using ARIMA
- Detecting anomalies using Z-Score and IQR methods
- Saving and exporting the final results

---

## 🧰 Step-by-Step Summary

### 1. Import Modules

The notebook begins by importing utility functions from `bitcoin_utils.py`.

```python
from bitcoin_utils import (
    fetch_bitcoin_data,
    save_to_local,
    upload_to_s3,
    load_from_s3,
    preprocess_data,
    check_missing,
    plot_price,
    decompose_series,
    plot_moving_average,
    forecast_arima,
    detect_anomalies
)
```

---

### 2. Load Bitcoin Data

- You can either fetch fresh data using an API key, or load from an existing local CSV.
- The CSV is then saved locally and uploaded to S3.

---

### 3. Preprocess the Data

- Converts the `Timestamp` column to datetime format
- Sets it as the index
- Checks for missing values

---

### 4. Visualize Trends and Decompose Time Series

- Plots the price history
- Adds a 5-day moving average
- Uses seasonal decomposition to reveal trend and seasonality

---

### 5. Forecast Prices Using ARIMA

- ARIMA(5,1,0) model is fit to the price series
- Next 10 days are forecasted and plotted

---

### 6. Detect Anomalies

- Outliers are flagged using both Z-Score and IQR techniques
- Results are visualized on the price chart

---

### 7. Save and Upload Final Results

- Final dataset is saved as a CSV and uploaded to S3

---

## ✅ Deliverables

- `bitcoin.example.ipynb` notebook that demonstrates the full pipeline
- `bitcoin_prices_final.csv` file containing final results
- Charts and forecasts embedded in notebook outputs

---

## 📦 Integration

This example is structured to run inside a Docker container using scripts provided in the project directory.

Make sure to use:
- `docker_build.sh` to build the container
- `docker_jupyter.sh` to launch the notebook environment

---

## 💡 Notes

- The forecasting and anomaly logic are encapsulated in the utils file for reusability.
- The notebook is self-contained and restartable.
- Designed to comply with DATA605 and Causify.AI tutorial format.
