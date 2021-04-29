all: revlist 

revlist: rev_list.i
	ick rev_list.i
test: revlist
	python run_tests.py
clean:
	rm rev_list out.student rev_list
