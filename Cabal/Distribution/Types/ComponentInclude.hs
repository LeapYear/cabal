module Distribution.Types.ComponentInclude (
    ComponentInclude(..)
) where

import Distribution.Package

-- Once ci_id is refined to an 'OpenUnitId' or 'DefUnitId',
-- the 'includeRequiresRn' is not so useful (because it
-- includes the requirements renaming that is no longer
-- needed); use 'ci_prov_renaming' instead.
data ComponentInclude id rn = ComponentInclude {
        ci_id       :: id,
        ci_pkgid    :: PackageId,
        ci_renaming :: rn
    }
