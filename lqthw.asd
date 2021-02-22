#|
 | =========================================================================================================================================================== |
 | BLACK BRANE SYSTEMS INC., SPECIAL PROJECTS DIVISION                                                                                                         |
 | Project: "Learn Quantum The Hard Way"                                                                                                                       |
 | Source-File: LQTHW\lqthw.asd                                                                                                                                |
 | Created: Sunday, 21st February 2021 10:51:14 pm                                                                                                             |
 | Authors: "the Phoeron" Colin J.E. Lupton (colin@blackbrane.com)                                                                                             |
 | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
 | Last Modified: Sunday, 21st February 2021 10:57:00 pm                                                                                                       |
 | Modified By: "the Phoeron" Colin J.E. Lupton (colin@blackbrane.com)                                                                                         |
 | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
 | Copyright 2016 - 2021, Black Brane Systems Inc.                                                                                                             |
 | =========================================================================================================================================================== |
|#

(in-package :cl-user)

(defpackage lqthw/sysdef
  (:use cl asdf uiop))

(in-package :lqthw/sysdef)

(defsystem lqthw)

(defsystem lqthw/test)

#| === [[ :: END-OF-FILE :: ]] ============================================================================================================================== |#
