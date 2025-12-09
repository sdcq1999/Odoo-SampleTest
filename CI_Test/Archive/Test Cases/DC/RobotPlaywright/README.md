# Robot Framework + Browser Library (Playwright) Setup Guide

This document explains how to install and run Robot Framework tests using the Browser Library powered by Playwright.

---

## Step 1: Install Python

1. Download Python from:
   https://www.python.org

2. During installation, make sure to select:
   - ✅ Add Python to PATH

3. Verify the installation:
   ```bash
   python --version
   ```

---

## Step 2: Install Robot Framework

Install Robot Framework using pip:
```bash
pip install robotframework
```

Verify the installation:
```bash
robot --version
```
---

## Step 3: Install Browser Library for Robot Framework

Install Browser Library:
```bash
pip install robotframework-browser
```

Initialize Browser Library:
```bash
rfbrowser init
```

This command installs the required Node.js and Playwright dependencies.

---

## Step 4: Run the Test

Run the test:
```bash
robot test.robot
```

Troubleshooting steps.

Install node if required.

If the browser opens and a screenshot is taken, the setup is successful.
