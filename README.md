# Strange nix build repro

Building this with
```
nix build .#darwinConfigurations.darwin-1.pkgs.nix
```
on _some_ of my macs results in a failure resulting in
```
error: build of '/nix/store/16nxxr959frrisnydnmyk6wpi9svvsis-nix-2.18.1.drv' on 'ssh://builder@aarch64-darwin-1' failed: builder for '/nix/store/16nxxr959frrisnydnmyk6wpi9svvsis-nix-2.18.1.drv' failed with exit code 2;
       last 10 log lines:
       > [==========] 626 tests from 74 test suites ran. (49 ms total)
       > [  PASSED  ] 624 tests.
       > [  FAILED  ] 2 tests, listed below:
       > [  FAILED  ] machines.getMachinesUriOnly
       > [  FAILED  ] machines.getMachinesDefaults
       >
       >  2 FAILED TESTS
       >   YOU HAVE 3 DISABLED TESTS
       >
       > make: *** [mk/lib.mk:120: libexpr-tests_RUN] Error 1
       For full logs, run 'nix log /nix/store/16nxxr959frrisnydnmyk6wpi9svvsis-nix-2.18.1.drv'.
```
on others it doesn't.