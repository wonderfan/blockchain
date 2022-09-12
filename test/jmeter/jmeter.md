# Jmeter Test

## Process Sampler

thread group , http samplers 

configuration element, thread group, sampler, controller, listener timer 

test plan
  thread group : 1, 1
	httpsampler
		generate account 100
	foreach controller
		http sampler 
		http sampler
		http sampler
		....
		timer
thread group : 1, 1
	httpsampler
		generate account 100
	foreach controller
		http sampler
		timer


thread group
	thread
	http sampler
	thread
	http sampler
	thread
	http sampler

