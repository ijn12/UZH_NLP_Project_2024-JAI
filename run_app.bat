@echo off
setlocal

echo Enter the path to your Python installation (e.g., C:\Python39\python.exe):
set /p python_path=

echo Creating virtual environment in the 'venv' folder...
%python_path% -m venv venv || (
    echo Error creating virtual environment!
    pause
    exit /b 1
)

echo Activating virtual environment...
call venv\Scripts\activate || (
    echo Error activating virtual environment!
    pause
    exit /b 1
)

echo Upgrading pip...
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