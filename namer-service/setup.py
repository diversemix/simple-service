
from setuptools import setup


setup(
    name='Namer-Service',
    version='1.0',
    long_description=__doc__,
    packages=['namer_service'],
    include_package_data=True,
    zip_safe=False,
    install_requires=['Flask', "Flask-SqlAlchemy", "names"]
)


