# Observability
file beat -sg :-
----------------
8080 ----- my ip
5044 ------ my ip
5044 ------- elastic-sg

elasticsearch and kibana -sg :- 
------------------------------
9200 ---------- my ip 
5601 ---------- my ip
9200 ----------- file beat -sg


Node exporter -sg:- 
-------------------
9100 -------- my ip 
8080 -------- my ip 
9100 ------- prometheus -sg

prometheus -sg :- 
------------------
9090 -------- my ip 
9090 -------- node exporter -sg
3000 -------- grafana -sg

grafana -sg :- 
---------------

3000 -------- my ip 
