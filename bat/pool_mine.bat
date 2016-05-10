setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_SINGLE_ALLOC_PERCENT 100
setx GPU_MAX_HEAP_SIZE 100
ethminer -G -F http://kr.suprnova.cc:6767/<username>.<worker>/10 --cl-local-work 256 --cl-global-work 16384
