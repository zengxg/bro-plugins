@TEST-EXEC: bro -C -r ${TRACES}/tcp/rto/rto004.trace Bro/TCPRS
@TEST-EXEC: btest-diff conn.log
@TEST-EXEC-FAIL: test -f tcpreordering.log
@TEST-EXEC-FAIL: test -f tcpdeadconnection.log
@TEST-EXEC-FAIL: test -f tcprecovery.log
@TEST-EXEC: btest-diff tcpretransmissions.log
@TEST-EXEC: btest-diff tcpoptions.log

