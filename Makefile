
CFLAGS = -g -Wall -O3 -lrt

all: pipe_lat pipe_thr \
	unix_lat unix_thr \
	tcp_lat tcp_thr \
	tcp_local_lat tcp_remote_lat \
	udp_lat

run:
	@echo "========= start testing ========="
	./pipe_lat 100 10000
	@echo
	./unix_lat 100 10000
	@echo
	./tcp_lat 100 10000
	@echo
	./udp_lat 100 10000
	@echo
	./pipe_thr 100 10000
	@echo
	./unix_thr 100 10000
	@echo
	./tcp_thr 100 10000
	@echo "========= finish testing ========="

clean:
	rm -f *~ core
	rm -f pipe_lat pipe_thr 
	rm -f unix_lat unix_thr 
	rm -f tcp_lat tcp_thr 
	rm -f tcp_local_lat tcp_remote_lat
	rm -f udp_lat
