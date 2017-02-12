EXECS=placas.x
MPICC?=mpicc

all: ${EXECS}

v.png: plotter.py out.data
	plotter.py

placas.x : placas.c
	${MPICC} -o placas.x placas.c

clean:
	rm -f ${EXECS}
	rm out.data