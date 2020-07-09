(asdf:defsystem #:cl-sensors-web
  :description "Runs web server with sensors output"
  :author "Nathanael Merlin <nate@merlin.uno>"
  :license "BSD"
  :depends-on (#:hunchentoot
               #:inferior-shell)
  :serial t
  :components ((:file "package")
               (:file "cl-sensors-web"))
  :build-operation "program-op"
  :build-pathname "cl-sensors-web"
  :entry-point "cl-sensors-web:main")
