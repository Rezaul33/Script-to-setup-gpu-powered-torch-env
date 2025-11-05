@echo off
SETLOCAL

:: === CONFIGURATION ===
SET ENV_NAME=ml-gpu-env
SET CUDA_VERSION=cu121
SET PYTORCH_INDEX_URL=https://download.pytorch.org/whl/%CUDA_VERSION%

:: === DELETE OLD ENV ===
IF EXIST %ENV_NAME% (
    echo Deleting existing virtual environment %ENV_NAME% ...
    rmdir /s /q %ENV_NAME%
)

:: === CREATE NEW ENV ===
echo Creating new virtual environment %ENV_NAME% ...
python -m venv %ENV_NAME%

:: === ACTIVATE ENV ===
echo Activating environment ...
CALL %ENV_NAME%\Scripts\activate.bat

:: === UPGRADE PIP ===
echo Upgrading pip ...
python -m pip install --upgrade pip

:: === INSTALL PYTORCH GPU ===
echo Installing PyTorch with CUDA support (%CUDA_VERSION%) ...
pip install torch torchvision torchaudio --index-url %PYTORCH_INDEX_URL%

:: === INSTALL COMMON ML LIBRARIES ===
echo Installing common ML libraries ...
pip install pandas numpy matplotlib scikit-learn jupyter notebook

:: === VERIFY INSTALLATION ===
echo Verifying PyTorch GPU installation ...
python -c "import torch; print('PyTorch version:', torch.__version__); print('CUDA available:', torch.cuda.is_available()); print('GPU name:', torch.cuda.get_device_name(0) if torch.cuda.is_available() else 'No GPU detected')"

echo ==============================
echo PyTorch GPU environment setup complete!
echo To activate the environment in future, run:
echo     %ENV_NAME%\Scripts\activate.bat
echo ==============================
ENDLOCAL
pause
