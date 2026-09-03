from setuptools import setup, find_packages

setup(
    name="socialmedia-command-center",
    version="2.0.0",
    description="Cross-Platform Social Media Command Center & Brand Health Auditor",
    author="JTG Systems",
    author_email="jtgsystems@gmail.com",
    url="https://jtgsystems.com",
    packages=find_packages(),
    entry_points={
        "console_scripts": [
            "socialmedia=socialmedia_suite.cli:main",
        ],
    },
)
