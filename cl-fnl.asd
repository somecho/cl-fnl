;;;; cl-fnl.asd

(asdf:defsystem #:cl-fnl
  :description "Bindings for FastNoiseLite"
  :author "Somē Cho <itssomicho@gmail.com>"
  :license  "MIT"
  :depends-on (#:cl-autowrap
               #:cl-autowrap/libffi)
  :serial t
  :pathname "src"
  :components ((:file "autowrap")
               (:module "spec"
                :components ((:static-file "FastNoiseLite.h")
                             (:static-file "FastNoiseLite.c")
                             (:static-file "FastNoiseLite.aarch64-pc-linux-gnu.spec")
                             (:static-file "FastNoiseLite.aarch64-unknown-linux-android.spec")
                             (:static-file "FastNoiseLite.arm-pc-linux-gnu.spec")
                             (:static-file "FastNoiseLite.arm-unknown-linux-androideabi.spec")
                             (:static-file "FastNoiseLite.i386-unknown-freebsd.spec")
                             (:static-file "FastNoiseLite.i386-unknown-openbsd.spec")
                             (:static-file "FastNoiseLite.i686-apple-darwin9.spec")
                             (:static-file "FastNoiseLite.i686-pc-linux-gnu.spec")
                             (:static-file "FastNoiseLite.i686-pc-windows-msvc.spec")
                             (:static-file "FastNoiseLite.i686-unknown-linux-android.spec")
                             (:static-file "FastNoiseLite.powerpc64-pc-linux-gnu.spec")
                             (:static-file "FastNoiseLite.powerpc64le-pc-linux-gnu.spec")
                             (:static-file "FastNoiseLite.x86_64-apple-darwin9.spec")
                             (:static-file "FastNoiseLite.x86_64-pc-linux-gnu.spec")
                             (:static-file "FastNoiseLite.x86_64-pc-windows-msvc.spec")
                             (:static-file "FastNoiseLite.x86_64-unknown-freebsd.spec")
                             (:static-file "FastNoiseLite.x86_64-unknown-linux-android.spec")
                             (:static-file "FastNoiseLite.x86_64-unknown-openbsd.spec")))
               (:file "fnl")))
