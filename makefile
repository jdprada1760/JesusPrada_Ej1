EXECS=placas.x
MPICC?=mpicc

all: out.data

v.png: plotter.py out.data
	plotter.py
	rm -f test.*

out.data: submit_job.sh placas.x
	qsub submit_job.sh

placas.x : placas.c
	${MPICC} -o placas.x placas.c

clean:
	rm -f ${EXECS}
	rm -f out.data
	rm -f test*