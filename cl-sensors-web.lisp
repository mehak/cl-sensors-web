(in-package :cl-sensors-web)

(defun get-sensors ()
  "Run sensors and return output"
  (inferior-shell:run/s "sensors"))

(defun main ()
  (hunchentoot:start (make-instance 'hunchentoot:easy-acceptor :port 4242))

  (hunchentoot:define-easy-handler (sensors :uri "/") ()
    (let ((sensor-data (get-sensors)))
      (setf (hunchentoot:content-type*) "text/plain; charset=utf-8")
      (format nil "~A" sensor-data))))
