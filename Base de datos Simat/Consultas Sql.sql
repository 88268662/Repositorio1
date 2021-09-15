insert into sedeeducativa (sedeEducativacol, nid) values ("Calazan", "16");
update sedeeducativa set sedeEducativacol = "Saleciano", nid = "17" where idSedeEducativa = 7;
delete FROM sedeeducativa where idSedeEducativa = 10;

select * FROM tablasimatsql.sedeeducativa;