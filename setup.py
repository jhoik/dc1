from setuptools import find_packages
from setuptools import setup

REQUIRED_PACKAGES = ['Keras==2.0.4',
                     'h5py==2.7.0',
                     'pillow==4.0.0',
                     'google-cloud-storage >= 1.6.0']

setup(
    name='trainer',
    version='0.1',
    install_requires=REQUIRED_PACKAGES,
    packages=find_packages(),
    include_package_data=True,
    description='Data Challenge CNN example on retinopathy with numpy array'
)
