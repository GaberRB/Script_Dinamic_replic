DECLARE
VALOR VARCHAR2(4000);
VSQL VARCHAR2(4000);
VTABLE VARCHAR2(4000);
BEGIN 
	VTABLE := UPPER('&TABLE_NAME');
	FOR i IN (
				SELECT TO_CHAR(a.Column_Name) COL 
				FROM All_Tab_Columns a 
				WHERE a.Owner = 'tst' 
				AND a.Table_Name = VTABLE
	)LOOP 
			VSSQL := 'SELECT '||I.COL||' FROM TESTE_STACK';
			EXECUTE IMMEDIATE VSSQL INTO VALOR;
			Dbms_Output.Put_Line('UPDATE TESTE_STACK '
								||' SET '||x.Coluna||' = '||Valor||';'
								||Chr(10)); 
		
	END LOOP; 
END;
