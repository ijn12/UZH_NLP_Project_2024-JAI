# NLP Project

This project is a chatbot application that uses **Retrieval-Augmented Generation (RAG)** to provide accurate and contextually relevant responses by retrieving information from a designated knowledge base or Natural Language Processing Topics before generating responses. This setup ensures that the chatbot can provide up-to-date, factually correct information while maintaining a conversational tone. In addition, the application can automatically generate learning materials from the files that you can upload.


## Getting Started

### Prerequisites
Ensure you have the following installed:
- **Python 3.12+**
- **pip** (Python package installer)
- **Streamlit** (installed via the provided scripts)

### Installation and Setup
To get started, clone the repository and navigate to the project directory:

```bash
git clone https://github.com/ijn12/UZH_NLP_Project_2024-JAI

cd UZH_NLP_Project_2024-JAI
```


## How to Start the Application
### On Windows
To start the chatbot application on Windows, follow these steps:

1. Open Command Prompt.
2. In the project directory, run:
```cmd
.\run_app.bat
```

The script will:
- Upgrade pip and install the required packages.
- Download essential NLTK data files.
- Start the Streamlit application.
- After running, the app will open in your browser. Follow the on-screen prompts to interact with the chatbot.

### On macOS/Linux
To start the chatbot application on macOS or Linux, follow these steps:

1. Open a terminal.
2. In the project directory, execute:
```cmd
./run_app.sh
```

The script will:
- Upgrade pip and install the necessary packages from requirements.txt.
- Download essential NLTK data files.
- Launch the Streamlit application.
- Once the script completes, the app will open in your browser. You can then begin interacting with the chatbot.

## How to use the application
### Insert Open AI API Key
Once the app has started, insert the Open AI Key into the field, so that you can use the chatbot and the rest of the application.

## Troubleshooting
**Package Installation Errors**: If you encounter errors during package installation, ensure that your Python and pip installations are up-to-date.

**NLTK Download Errors**: If the script fails while downloading NLTK data, check your internet connection and re-run the script.

**Streamlit Application Errors**: If the Streamlit app fails to start, ensure that Streamlit is correctly installed (pip install streamlit) and that there are no firewall restrictions.

## Usage
Once the application is running, open the displayed URL in your browser to start interacting with the chatbot. Type in questions or prompts, and the chatbot will respond using retrieval-augmented generation to provide answers from its knowledge base.