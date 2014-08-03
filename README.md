BitcoinLogParsing
=================

Some useful utilities for parsing the Bitcoin debug log file (typically located at ~/.bitcoin/debug.log)


peerstats.sh
-----------------

Parses the debug.log file and counts the total number of version messages received, grouped by User-Agent.

    Sample output:
    Total 	Percent	   User-Agent
    1501  	39.3% 	   /getaddr.bitnodes.io:0.1/:
    1194  	31.3% 	   /bitcoinseeder:0.01/:
    622   	16.3% 	   /Snoopy:0.1/:
    179   	4.7%  	   /Satoshi:0.8.6/:
    81    	2.1%  	   /Satoshi:0.9.2.1/:
    49    	1.3%  	   /Satoshi:0.9.1/:
    43    	1.1%  	   /BitCoinJ:0.11SNAPSHOT/DNSSeed:9000/:
    37    	1.0%  	   /BitCoinJ:0.11.2/MultiBit:0.5.18/:
    ...
