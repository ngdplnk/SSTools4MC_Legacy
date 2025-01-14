from setuptools import setup, find_packages

setup(
    name='sstools4mc',
    version='2.0',
    packages=find_packages(),
    install_requires=[
        'requests',
        'termcolor',
        
    ],
    author='ngdplnk',
    author_email='nikkotilion@gmail.com',
    description='SSTools4MC is a set of tools designed to assist you hosting your own dedicated Minecraft server',
    url='https://github.com/ngdplnk/SSTools4MC',
    classifiers=[
        'Programming Language :: Python :: 3',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.11',
)