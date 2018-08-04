"""Flask dashboard installation and setup script

**File** setup.py

Setup script will install config file and dashboard application.

**Author** [organization]

**Author** [name] (optional)

**[Unique category]** [designation]

**Notifications:**

[distribution designation]

[other designations]

**Copyright** [year] [organization]

"""

import os
import setuptools

def read(fname):
    """Utility function to read the README file

    Args:
        fname (str): name of file to read

    """

    return open(os.path.join(os.path.dirname(__file__), fname)).read()

setuptools.setup(
    name="flask_dashboard",
    version="1.0.0.0",
    author="[organization]",
    description=("An example flask dashboard template"),
    license="MIT",
    packages=['flask_dashboard', 'config'],
    long_description=read('README.md'),
    include_package_data=True,
    scripts=['flask_dashboard/flask_dashboard'],
)
