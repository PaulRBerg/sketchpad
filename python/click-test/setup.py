# -*- coding: utf-8 -*-

from setuptools import setup, find_packages

with open('README.md') as f:
    readme = f.read()

setup(
    name='click-test',
    description='Click cli tool test',
    long_description=readme,
    author='Paul Berg',
    author_email='',
    license=license,
    packages=find_packages(exclude=('tests')),
    include_package_data=True,
    install_requires=[
        'click==6.7',
    ],
    entry_points={
        'console_scripts': ["clicktest=cli.cli:hello"],
    }
)