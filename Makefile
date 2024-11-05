# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = source
BUILDDIR      = build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

sync_api_files:
	mkdir -p api_files/capi/
	# Fetch CAPi API files.
	wget -q -O ./api_files/capi/capi.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/spf/interfaces/module/capi/capi.h
	wget -q -O ./api_files/capi/capi_events.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/spf/interfaces/module/capi/capi_events.h
	wget -q -O ./api_files/capi/capi_properties.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/spf/interfaces/module/capi/capi_properties.h
	wget -q -O ./api_files/capi/capi_types.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/spf/interfaces/module/capi/capi_types.h

	# Fetch OSAL API files
	mkdir -p api_files/osal/
	wget -q -O ./api_files/osal/ar_osal_error.h https://raw.githubusercontent.com/Audioreach/audioreach-graphservices/refs/heads/master/ar_osal/api/ar_osal_error.h;
	wget -q -O ./api_files/osal/ar_osal_log.h https://raw.githubusercontent.com/Audioreach/audioreach-graphservices/refs/heads/master/ar_osal/api/ar_osal_log.h;
	wget -q -O ./api_files/osal/ar_osal_heap.h https://raw.githubusercontent.com/Audioreach/audioreach-graphservices/refs/heads/master/ar_osal/api/ar_osal_heap.h
	wget -q -O ./api_files/osal/ar_osal_mem_op.h https://raw.githubusercontent.com/Audioreach/audioreach-graphservices/refs/heads/master/ar_osal/api/ar_osal_mem_op.h
	wget -q -O ./api_files/osal/ar_osal_servreg.h https://raw.githubusercontent.com/Audioreach/audioreach-graphservices/refs/heads/master/ar_osal/api/ar_osal_servreg.h
	wget -q -O ./api_files/osal/ar_osal_signal.h https://raw.githubusercontent.com/Audioreach/audioreach-graphservices/refs/heads/master/ar_osal/api/ar_osal_signal.h
	wget -q -O ./api_files/osal/ar_osal_signal2.h https://raw.githubusercontent.com/Audioreach/audioreach-graphservices/refs/heads/master/ar_osal/api/ar_osal_signal2.h
	wget -q -O ./api_files/osal/ar_osal_sleep.h https://raw.githubusercontent.com/Audioreach/audioreach-graphservices/refs/heads/master/ar_osal/api/ar_osal_sleep.h
	wget -q -O ./api_files/osal/ar_osal_sys_id.h https://raw.githubusercontent.com/Audioreach/audioreach-graphservices/refs/heads/master/ar_osal/api/ar_osal_sys_id.h
	wget -q -O ./api_files/osal/ar_osal_types.h https://raw.githubusercontent.com/Audioreach/audioreach-graphservices/refs/heads/master/ar_osal/api/ar_osal_types.h
	wget -q -O ./api_files/osal/ar_osal_file_io.h https://raw.githubusercontent.com/Audioreach/audioreach-graphservices/refs/heads/master/ar_osal/api/ar_osal_file_io.h
	wget -q -O ./api_files/osal/ar_osal_shmem.h https://raw.githubusercontent.com/Audioreach/audioreach-graphservices/refs/heads/master/ar_osal/api/ar_osal_shmem.h
	wget -q -O ./api_files/osal/ar_osal_string.h https://raw.githubusercontent.com/Audioreach/audioreach-graphservices/refs/heads/master/ar_osal/api/ar_osal_string.h
	wget -q -O ./api_files/osal/ar_osal_thread.h https://raw.githubusercontent.com/Audioreach/audioreach-graphservices/refs/heads/master/ar_osal/api/ar_osal_thread.h

	# Fetch gsl API files
	mkdir -p api_files/gsl/
	wget -q -O ./api_files/gsl/gsl_intf.h https://raw.githubusercontent.com/Audioreach/audioreach-graphservices/refs/heads/master/gsl/api/gsl_intf.h

	# Fetch GPR API files
	mkdir -p api_files/gpr/
	wget -q -O ./api_files/gpr/gpr_api.h https://raw.githubusercontent.com/Audioreach/audioreach-graphservices/refs/heads/master/gpr/api/gpr_api.h
	wget -q -O ./api_files/gpr/ipc_dl_api.h https://raw.githubusercontent.com/Audioreach/audioreach-graphservices/refs/heads/master/gpr/api/ipc_dl_api.h

	#Fetch POSAL API files.
	mkdir -p api_files/posal/
	wget -q -O ./api_files/posal/posal_bufpool.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_bufpool.h
	wget -q -O ./api_files/posal/posal_condvar.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_condvar.h
	wget -q -O ./api_files/posal/posal_err_fatal.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_err_fatal.h
	wget -q -O ./api_files/posal/posal.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal.h
	wget -q -O ./api_files/posal/posal_inline_mutex.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_inline_mutex.h
	wget -q -O ./api_files/posal/posal_interrupt.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_interrupt.h
	wget -q -O ./api_files/posal/posal_memory.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_memory.h
	wget -q -O ./api_files/posal/posal_mem_prof.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_mem_prof.h
	wget -q -O ./api_files/posal/posal_nmutex.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_nmutex.h
	wget -q -O ./api_files/posal/posal_queue.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_queue.h
	wget -q -O ./api_files/posal/posal_rtld.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_rtld.h
	wget -q -O ./api_files/posal/posal_std.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_std.h
	wget -q -O ./api_files/posal/posal_thread_prio.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_thread_prio.h
	wget -q -O ./api_files/posal/posal_cache.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_cache.h
	wget -q -O ./api_files/posal/posal_data_log.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_data_log.h
	wget -q -O ./api_files/posal/posal_globalstate.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_globalstate.h
	wget -q -O ./api_files/posal/posal_heapmgr.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_heapmgr.h
	wget -q -O ./api_files/posal/posal_internal_inline.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_internal_inline.h
	wget -q -O ./api_files/posal/posal_island.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_island.h
	wget -q -O ./api_files/posal/posal_memorymap.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_memorymap.h
	wget -q -O ./api_files/posal/posal_mutex.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_mutex.h
	wget -q -O ./api_files/posal/posal_power_mgr.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_power_mgr.h
	wget -q -O ./api_files/posal/posal_root_msg.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_root_msg.h
	wget -q -O ./api_files/posal/posal_signal.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_signal.h
	wget -q -O ./api_files/posal/posal_thread.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_thread.h
	wget -q -O ./api_files/posal/posal_thread_profiling.h https://raw.githubusercontent.com/Audioreach/audioreach-engine/refs/heads/master/fwk/platform/posal/inc/posal_thread_profiling.h
