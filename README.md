# homebrew-gqrx

This is a collection of [Homebrew](https://github.com/mxcl/homebrew) formulas
that makes it easier get GQRX from source running on OS X.

## Installation

These steps have been tested on macSierra (10.12).

- Install the python package prerequisites

  ```sh
  brew install python gfortran umfpack swig
  ```

- Install the prerequisite python packages

  ```sh
  pip install numpy scipy matplotlib Cheetah lxml 
  ```

- Install gqrx

  ```sh
  brew tap ttrftech/homebrew-gqrx
  brew install gr-iqbal 
  brew install gr-osmosdr [--with-rtlsdr] [--with-bladerf] [--with-airspy] [--with-hackrf]
  brew install gqrx 
  ```

