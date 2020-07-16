# Copyright (C) 2019-2020 Zilliz. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# pylint: disable=exec-used
from setuptools import setup

version = {}
with open("arctern_spark/version.py") as fp:
    exec(fp.read(), version)

setup(
    name="arctern_spark",
    packages=[
        "arctern_spark",
        "arctern_spark.tests",
        "arctern_spark.examples"
    ],
    version=version["__version__"]
)