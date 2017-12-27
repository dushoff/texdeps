Maybe use this for developing and testing `texdeps.mk` and `texdeps.pl`. The files themselves have been moved to makestuff.

This might also be a good place to work on branching: it would make sense to have a makestuff branch here where I could play with those files without affecting production immediately.

Tests:
* What happens if we put in a bad link?
* Why do we need to make

To do:
* Clearer warnings
* better documentation
* investigate why you need to repeat so much

Other routes:
* Develop simptex (based on the stuff I put in 1M for Bolker, but with "Rerun"
* Develop chaintex (a more demanding version of this, where the .mk files are included by default, and we need .dep rules to bypass problems)

