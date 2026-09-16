GBD_DART_singularity
======================

This singularity image contains "psrchive, tempo2, tempo1, presto, dspsr" packages with GBD-DART telescope details. 
Please use this to work with GBD-DART pulsar archives.

It is the modified version of  https://github.com/louisbondonneau/Docker_receipts

Container Packages
--------------

psrchive, tempo2, tempo1, presto, dspsr, psrsalsa, SIGPROC, RFICLEAN, GPTOOL, PlotX/TransientX, pylib - nenupy, pylib - AntPat, pylib - dreamBeam, pylib - psrqpy, pylib - clean.py, pylib - pyqt5, pylib - pyglow

Build a container
------------------------

### UPDATING NECESSARY PACKAGES INSTALLED 
(assuming you are using Debian-based systems, including Ubuntu)

``` bash
sudo apt-get update 
sudo apt-get install -y autoconf automake cryptsetup git libfuse-dev libglib2.0-dev libseccomp-dev libtool pkg-config runc squashfs-tools squashfs-tools-ng uidmap wget zlib1g-dev
```

#### INSTALLING GO

```bash
GO_VERSION=1.21.5 OS=linux ARCH=amd64
wget -O /tmp/go${GO_VERSION}.${OS}-${ARCH}.tar.gz https://dl.google.com/go/go${GO_VERSION}.${OS}-${ARCH}.tar.gz
sudo tar -C /usr/local -xzf /tmp/go${GO_VERSION}.${OS}-${ARCH}.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
source ~/.bashrc
```
Verify if you have the latest version before proceeding further with,
```bash
go version
```

#### INSTALLING SINGULARITY

```bash
SINGULARITY_VERSION=4.0.0 
wget https://github.com/sylabs/singularity/releases/download/v${SINGULARITY_VERSION}/singularity-ce-${SINGULARITY_VERSION}.tar.gz
tar -xzf singularity-ce-${SINGULARITY_VERSION}.tar.gz && cd singularity-ce-$SINGULARITY_VERSION
./mconfig && make -C builddir
sudo make -C builddir install
```
Verify the instalation with,
```bash
singularity --version
```

#### Build GBD_DART singularity container

``` bash
git clone https://github.com/Arul16psp05/GBD_DART_singularity.git
cd GBD_DART_singularity
singularity build GBD_DART.sif GBD_DART_singularity
```

#### RUN GBD_DART singularity container

```
singularity shell GBD_DART.sif
```

