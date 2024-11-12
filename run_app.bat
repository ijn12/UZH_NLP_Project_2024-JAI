@echo off
echo Installing required packages...
python -m pip install --upgrade pip || (
    echo Error upgrading pip!
    pause
    exit /b 1
)

echo Installing dependencies from requirements.txt...
python -m pip install -r requirements.txt || (
    echo Error installing packages!
    pause
    exit /b 1
)

echo Downloading NLTK data...
python -c "import nltk; nltk.download('punkt'); nltk.download('averaged_perceptron_tagger'); nltk.download('stopwords')" || (
    echo Error downloading NLTK data!
    pause
    exit /b 1
)

echo Starting Streamlit application...
streamlit run app.py
if errorlevel 1 (
    echo Error starting Streamlit application!
    pause
    exit /b 1
)
pause