Dim db_conn,db_path
Set db_conn=Server.CreateObject("ADODB.Connection")
db_path=Server.MapPath(sitePath&"/"&accessFilePath)
db_conn.Open "provider=microsoft.jet.oledb.4.0;data source="&db_path

Dim smssort,smsRecord,smsnum
smssort=tablePrefix&"smssort"
smsRecord=tablePrefix&"smsRecord"
smsnum=tablePrefix&"smsnum"

'������{prefix}smssort
response.Write("���ڴ�����"&smssort&"...<br>")
if CheckTable(smssort)=0 then
	db_conn.execute("Create TABLE "&smssort&"(smssortid counter primary key,smssortname text(50))")
	response.Write("��"&smssort&"�����ɹ�<br>")
else
	response.Write("��"&smssort&"�Ѵ���<br>")
end if

'������{prefix}smsRecord
response.Write("���ڴ�����"&smsRecord&"...<br>")
if CheckTable(smsRecord)=0 then
	db_conn.execute("Create TABLE "&smsRecord&"(smsrid counter primary key,smsrtime datetime,smsryes int default 0,smsrno int default 0,smsrcontent longText)")
	response.Write("��"&smsRecord&"�����ɹ�<br>")
else 
	response.Write("��"&smsRecord&"�Ѵ���<br>")
end if

'������{prefix}smsnum
response.Write("���ڴ�����"&smsnum&"...<br>")
if CheckTable(smsnum)=0 then
	db_conn.execute("Create TABLE "&smsnum&"(smsid counter primary key,smsname text(50),smsnum text(50),smssortid int default 0,remark longText)")
	response.Write("��"&smsnum&"�����ɹ�<br>")
else 
	response.Write("��"&smsnum&"�Ѵ���<br>")
end if

set db_conn=nothing
'--------------------
'�ж����ݿ����Ƿ����ָ����
'--------------------
Function CheckTable(myTable)
'�г����ݿ��е����б�
dim rs,getTableName
Dim db_conn,db_path
Set db_conn=Server.CreateObject("ADODB.Connection")
db_path=Server.MapPath(sitePath&"/"&accessFilePath)
db_conn.Open "provider=microsoft.jet.oledb.4.0;data source="&db_path
set rs=db_conn.openSchema(20) 
rs.movefirst 
	do Until rs.EOF 
	if rs("TABLE_TYPE")="TABLE" then 
	   'response.write rs("TABLE_NAME") & ","
	   getTableName=getTableName+rs("TABLE_NAME")&","
	end if 
	rs.movenext
	loop
rs.close
set rs=nothing
set db_conn=nothing
'�ж����ݿ����Ƿ���ڴ˱����������д���ʹ���Ƚϱ���ָ����ǰ�󶼼��϶��ţ��Ծ�ȷ�Ƚϣ�
dim getTableName2,myTable2
getTableName2=","&getTableName '���ַ��������Ѿ��ж���
myTable2=","&myTable&","
If instr(getTableName2,myTable2)<>0 Then
   CheckTable=1 '����
else
   CheckTable=0 '������
end if
End Function