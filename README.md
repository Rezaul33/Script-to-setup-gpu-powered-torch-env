# PyTorch GPU Environment Setup

This repository provides a script to set up a **clean, GPU-enabled PyTorch environment** in your project folder.  
It is specifically designed for modern NVIDIA GPUs (like the 40xx series) and ensures that PyTorch can utilize CUDA for accelerated training. This setup is ideal for deep learning and machine learning projects.

---

## Features / What the Script Does

1. **Set Environment Variables**
    - Names the virtual environment (`ml-gpu-env`) and sets the CUDA version for PyTorch (`cu121` → CUDA 12.1).

2. **Delete Old Virtual Environment (if it exists)**
    - Checks if a folder named `ml-gpu-env` exists.
    - Deletes it completely (`rmdir /s /q`) so you start fresh.

3. **Create a New Virtual Environment**
    - Uses `python -m venv` to create a fresh environment in your project folder.

4. **Activate the New Environment**
    - Runs `activate.bat` so all Python and pip commands are scoped to this environment.

5. **Upgrade pip**
    - Ensures the latest pip is installed for smooth package management.

6. **Install PyTorch with GPU Support**
    - Installs `torch`, `torchvision`, and `torchaudio` using the official PyTorch URL for **CUDA 12.1**.
    - Enables PyTorch to leverage your NVIDIA GPU for accelerated training.

7. **Install Common ML Libraries**
    - Installs essential Python libraries:
        - `numpy` → numerical computations
        - `pandas` → data handling
        - `matplotlib` → plotting and visualization
        - `scikit-learn` → classical machine learning
        - `jupyter notebook` → interactive notebooks

8. **Verify PyTorch GPU Installation**
    - Runs a small Python command to:
        - Print the PyTorch version
        - Check if CUDA (GPU) is available
        - Display the GPU detected by PyTorch

9. **Print Final Instructions**
    - Guides how to activate the environment in the future:
      ```cmd
      ml-gpu-env\Scripts\activate.bat
      ```

---

## Getting Started

After running the script:

- Your **GPU-enabled PyTorch environment** will be ready inside the project folder.
- You can start working on deep learning and ML projects immediately.
- All packages and dependencies are isolated in the virtual environment.

---

✅ **Note:** This setup ensures compatibility with NVIDIA 40xx GPUs. If you have a different GPU or CUDA version, adjustments may be necessary.

---


This repository is open-source and free to use. Feel free to adapt it for your own projects.

