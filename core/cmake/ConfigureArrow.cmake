set(ARROW_ROOT ${CMAKE_BINARY_DIR}/arrow)

                        # " -DCMAKE_CXX_FLAGS=-D_GLIBCXX_USE_CXX11_ABI=0"
set(ARROW_CMAKE_ARGS    " -DARROW_BUILD_BENCHMARKS=OFF"
                        " -DCMAKE_BUILD_TYPE=Release"
                        " -DARROW_BUILD_STATIC=OFF"
                        " -DARROW_BUILD_SHARED=ON"
                        " -DARROW_BUILD_TESTS=OFF"
                        " -DARROW_PYTHON=ON")

file(MAKE_DIRECTORY "${ARROW_ROOT}/build")

ExternalProject_Add(arrow_ep
                    GIT_REPOSITORY      https://github.com/apache/arrow.git
                    GIT_TAG             apache-arrow-0.15.1
                    SOURCE_DIR          "${ARROW_ROOT}/arrow"
                    SOURCE_SUBDIR       "cpp"
                    BINARY_DIR          "${ARROW_ROOT}/build"
                    CMAKE_ARGS          ${ARROW_CMAKE_ARGS} -DCMAKE_INSTALL_PREFIX=${CMAKE_BINARY_DIR}/thirdparty)