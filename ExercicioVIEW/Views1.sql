create or replace view view_produtos_marcas as 
	select * from produtos as PROD
    left join marcas as MARC
    on MARC.marca_id = PROD.produto_marca_id;

create or replace view view_produto_fornecedores as
	select * from produtos as PROD
    left join produtos_fornecedores as PROD_FORN
    on PROD_FORN.prod_id = PROD.produto_id
    left join fornecedores as FORN
    on FORN.forn_id = PROD_FORN.fnc_id;

create or replace view view_prod_mrc_forn as
	select * from produtos as PROD
	left join marcas as MARC
    on MARC.marca_id = PROD.produto_marca_id
    left join produtos_fornecedores as PROD_FORN
    on PROD_FORN.prod_id = PROD.produto_id
    left join fornecedores as FORN
    on FORN.forn_id = PROD_FORN.fnc_id;
    

select * from view_produtos_marcas;
select * from view_produto_fornecedores;
select * from view_prod_mrc_forn