
--- Update para quitar IVA 
update as_itm
set LU_EXM_TX = '0' , ID_GP_TX = '990'
where id_itm= '105245';

--- Update para colocar IVA 

--update as_itm
--set LU_EXM_TX = '1' , ID_GP_TX = '992'
--where id_itm= '105245';