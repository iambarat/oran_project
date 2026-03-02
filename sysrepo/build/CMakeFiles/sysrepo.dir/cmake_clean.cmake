file(REMOVE_RECURSE
  ".7"
  "libsysrepo.pdb"
  "libsysrepo.so"
  "libsysrepo.so.7"
  "libsysrepo.so.7.33.5"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/sysrepo.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
