
# Bitcoin Time Series Analysis and Forecasting

This project demonstrates an end-to-end pipeline for analyzing, forecasting, and detecting anomalies in Bitcoin price data using Python.

---

## 📁 Project Structure

```
.
├── bitcoin_utils.py           # Core utility functions (fetch, preprocess, visualize, forecast, detect)
├── bitcoin.API.ipynb          # Demonstrates how to use each utility function
├── bitcoin.API.md             # Markdown tutorial for the API
├── bitcoin.example.ipynb      # End-to-end use case notebook
├── bitcoin.example.md         # Markdown explanation for the example
├── Dockerfile                 # Docker container setup
├── docker_build.sh            # Shell script to build Docker image
├── docker_jupyter.sh          # Shell script to run Jupyter notebook in container
├── docker_bash.sh             # Shell script to open a bash shell in the container
└── bitcoin_prices_final.csv   # Final dataset with anomalies (generated during run)
```

---

## 🧪 Features

- ✅ Fetch Bitcoin data (placeholder API)
- ✅ Upload to and read from AWS S3 using `s3fs`
- ✅ Preprocess time series data
- ✅ Visualize prices and moving averages
- ✅ Decompose seasonal patterns
- ✅ Forecast future prices using ARIMA
- ✅ Detect anomalies using Z-score and IQR
- ✅ Modular, reusable utility functions
- ✅ Dockerized environment

---

## 🚀 Setup Instructions

### 1. Build Docker Container

```bash
bash docker_build.sh
```

### 2. Run Jupyter Notebook

```bash
bash docker_jupyter.sh
```

Open the URL shown in your terminal to access the Jupyter interface.

### 3. Open a Bash Shell in Container

```bash
bash docker_bash.sh
```

---

## 📄 Deliverables

| File                    | Description                                      |
|-------------------------|--------------------------------------------------|
| `bitcoin_utils.py`      | All utility functions                           |
| `bitcoin.API.ipynb`     | How to use the API functions                    |
| `bitcoin.API.md`        | Markdown explanation of the API                 |
| `bitcoin.example.ipynb` | End-to-end pipeline demonstration               |
| `bitcoin.example.md`    | Markdown walkthrough of the example notebook    |

---

## 🧠 Learning Outcomes

- How to design reusable data science utilities
- Forecast time series using statistical and ML models
- Detect anomalies and outliers in financial data
- Deploy your notebook environment in Docker
- Follow Causify-AI open source tutorial standards

---

## 🏁 Final Notes

This project complies with the [DATA605 class project guidelines](https://github.com/causify-ai/tutorials), follows the recommended directory structure, and is compatible with both the `data605_style` and `causify_style` Docker environments.

