<!--#include file="AspCms_AdvFun.asp" -->
<%CheckAdmin("AspCms_AdvEditTC.asp?action=savejs&id=6")%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>���ӹ��</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gbk"><LINK 
href="../images/style.css" type=text/css rel=stylesheet>

<script language="javascript" type="text/javascript" src="../js/getdate/WdatePicker.js"></script>
<script>
function ShowBar(type)
{
	var picbar1  = document.getElementById("ipath");
	var picbar2 = document.getElementById("lpath");
	var picbar3 = document.getElementById("cc");
	var picbar4 = document.getElementById("advnr");
	var picbar5 = document.getElementById("ipathr");
	var picbar6 = document.getElementById("lpathr");
	if(type==1 )
	{
		picbar1.style.display="none";
		picbar2.style.display="";
		picbar3.style.display="none";
		picbar4.style.display="";
		picbar5.style.display="none";
		picbar6.style.display="none";
	}
	else if(type==2 || type==4)
	{
		picbar1.style.display="";
		picbar2.style.display="";
		picbar3.style.display="";
		picbar4.style.display="none";
		picbar5.style.display="none";
		picbar6.style.display="none";
	}
	else if(type==3|| type==6)
	{
		picbar1.style.display="none";
		picbar2.style.display="none";
		picbar3.style.display="none";
		picbar4.style.display="";
		picbar5.style.display="none";
		picbar6.style.display="none";
	}
	else if(type==5)
	{
		picbar1.style.display="";
		picbar2.style.display="";
		picbar3.style.display="";
		picbar4.style.display="none";
		picbar5.style.display="";
		picbar6.style.display="";
	}	
	
}
</script> 
</head>
<body>
<FORM id= name= action="" method=post >
<DIV class=formzone>
<DIV class=namezone>���õ������</DIV>
<DIV class=tablezone>
<DIV class=noticediv id=notice></DIV>
<TABLE cellSpacing=0 cellPadding=2 width="100%" align=center border=0>
  <TBODY>
  
 <TR>
    <TD align=middle width=100 height=30>�������</TD>    
    <TD><label>���µ������
        <input name="advclass" type="hidden" value="6">
    </label></TD>
 </tr>  
  <TR>
    <TD align=middle width=100 height=30 >Ͷ��ʱ��</TD>
    <TD><input maxlength="20" name="stime" class="Wdate" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" value="<%=fstime%>"/> </TD>
  </TR>
  <TR>
    <TD align=middle width=100 height=30>����ʱ��</TD>
    <TD><input maxlength="20" name="etime" class="Wdate" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" value="<%=fetime%>"/></TD>
  </TR>
  <TR>
    <TD align=middle height=30>���״̬</TD>
    <TD><input type="radio" name="AdvStatus" value="1" <%if fAdvStatus=1 then%>checked<%end if%> />
����
  <input type="radio" name="AdvStatus" value="0" <%if fAdvStatus<>1 then%>checked<%end if%> />
����</TD>
  </TR>
  <TR>						
    <TD align=middle width=100 height=30>���������</TD>
    <TD><INPUT class="input" style="WIDTH: 200px" maxLength="200" name="advname" value="<%=fAdvname%>"/> <FONT color=#ff0000>
      <input type="hidden" name="id" id="id" value="<%=fAdvid%>"><input name="faore" type="hidden" value="<%=faore%>">
      *</FONT></TD>
  </TR>
  <TR id="advnr">
    <TD align=middle height=30>�������</TD>
    <TD>  <TEXTAREA class="textarea" style="WIDTH: 450px" name="advcontent" rows="3"><%=Server.HtmlEncode(fadvcontent)%></TEXTAREA>    </TD>
  </TR><TR>
    <TD align=middle height=30>�����ʽ</TD>
    <TD><input type="radio" name="advstyle" id="advstyle" value="1" <%if fAdvStyle=1 or fAdvStyle="" then%>checked<%end if%>>
    <img src="../images/tcstyle1.jpg" width="150" height="100"></TD>
  </TR>
  <TR>
    <TD align=middle height=30>���ñ�ǩ</TD>
    <TD>{aspcms:windowad}</TD>
  </TR>
    </TBODY></TABLE>
</DIV>
<DIV class=adminsubmit>
  <INPUT class="button" type="submit" value="����" onClick="form.action='?action=editjs&faore=<%=faore%>';"/>
<INPUT class="button" type="button" value="����" onClick="history.go(-1)"/>
</DIV>
</DIV></FORM>
</body>
</html>