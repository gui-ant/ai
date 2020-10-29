homem(miguel).
homem(lucas).
homem(ze).
homem(luis).

mulher(ana).
mulher(helena).
mulher(rita).
mulher(mariana).

filho(luis, helena).
filho(miguel, helena).
filho(lucas, helena).
filho(lucas, ze).

pai(P,F):- homem(P), filho(F, P).
mae(M,F):- mulher(M), filho(F, M).

progenitor(P, X):- pai(P,X).
progenitor(P, X):- mae(P,X).

irmao(X, Y):- progenitor(P, X), progenitor(P, Y), X\=Y.

trabalhador(alves).
trabalhador(ana).
tarefa(matar_baratas).
tarefa(introduzir_dados_sis_doc).

tarefa_atribuida(matar_baratas, alves).
tarefa_atribuida(matar_baratas, ana).
tarefa_atribuida(introduzir_dados_sis_doc, ana).


nHoras(introduzir_dados_sis_doc,8).
nHoras(matar_baratas,24).

horas_tarefa_atribuida(A,T,Horas):-
    tarefa(T),
    trabalhador(A),
    nHoras(T, Horas),
    tarefa_atribuida(T,A).
