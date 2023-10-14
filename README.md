# Actions Tutorial
Learn GitHub Actions, one of the CI/CD environment.

### Get Started
Make workflows directory in .github/ and add .yml file with arbitrary name. Look the code below which test the C++ code automatically.
```.cpp:.github/main.yml
name: C++ Test Workflow

on:
  - push

jobs:
  build:
    name: AutoTesting
    runs-on: ubuntu-latest

    steps:
    - name: Checkout code
      uses: actions/checkout@v4
    
    - name: Set up C++ build environment
      uses: Trass3r/setup-cpp@master
      with:
        compiler: g++
    
    - name: Build C++ program
      run: g++ src.cpp -o forAutoTesting
    
    - name: Run C++ program
      run: ./forAutoTesting

```
