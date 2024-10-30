## [STARS PROTOCOLS 1799](https://star-protocols.cell.com/protocols/1799)

## A beginner’s guide to assembling a draft genome and analyzing structural variants with long-read sequencing technologies

Download lastest Miniconda3

  ```
  wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

  chmod +x Miniconda3-latest-Linux-x86_64.sh

  bash Miniconda3-latest-Linux-x86_64.sh
  ```

Press ENTER to read its license, and then enter yes to agree with it

Specify the path to install your conda

We used the latest miniconda; python 3.9.5, conda version 4.11.0

Add the conda to your PATH environment variable

  ```
  </path_to_your_conda>/bin/conda init

  source ∼/.bashrc
  ```

You can see that your command line has been changed to display “(base)”

e.g.,(base) username@hostname:∼$

if (base) doesn’t appear even after running “source ∼/.bashrc”, then restart your terminal prompt

  ```
  conda update -n base -c defaults conda

  conda config --add channels conda-forge

  conda config --add channels bioconda

  conda create -n assembly

  conda activate assembly
  ```

The “(base)” should be changed to “(assembly)”

e.g.,(assembly) username@hostname:∼$

You can deactivate your conda environment using

  ```
  conda deactivate
  ```

We recommend that you create a conda environment using the specified versions of the following packages to avoid package dependency issues

  ```
  conda activate assembly

  conda install -c bioconda kat=2.4.1

  conda install -c bioconda trinity=2.13.2

  conda install -c bioconda assembly-stats bioawk shasta canu hifiasm

  conda install -c bioconda hisat2

  conda install -c conda-forge -c bioconda busco=5.2.2

  conda install -c bioconda ragtag

  conda install -c bioconda svim svim-asm
  ```

Download the required public datasets

  ```
  chmod +x download-files.sh
  ./download-files.sh
  ```

Visualizing read-length distribution

  ```
  chmod +x read-length-table.sh
  ./read-length-table.sh
  ```
