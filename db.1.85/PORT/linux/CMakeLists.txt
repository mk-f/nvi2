SET(${PROJECT_NAME}_DB_185_C_FLAGS "-D__DBINTERFACE_PRIVATE" CACHE STRING
    "${PROJECT_NAME} DB_185 C FLAGS")
SET(CMAKE_C_FLAGS "${${PROJECT_NAME}_DB_185_C_FLAGS}")
FILE(GLOB DB_SRCS
                ../../hash/*.c
                ../../btree/*.c
                ../../db/db.c
                ../../mpool/mpool.c
                ../../recno/*.c
)

add_definitions(-D__DBINTERFACE_PRIVATE)

include_directories(. include)
include_directories(../../hash)
include_directories(../../btree)
include_directories(../../mpool)
include_directories(../../recno)

add_library(db STATIC ${DB_SRCS})
