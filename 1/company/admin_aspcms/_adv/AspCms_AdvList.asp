<!--#include file="AspCms_AdvFun.asp" -->
<%CheckAdmin("AspCms_AdvList.asp")%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE></TITLE>
<META http-equiv=Content-Type content="text/html; charset=gbk">
<LINK href="../images/style.css" type=text/css rel=stylesheet>
</HEAD>
<SCRIPT>
function SelAll(theForm){
		for ( i = 0 ; i < theForm.elements.length ; i ++ )
		{
			if ( theForm.elements[i].type == "checkbox" && theForm.elements[i].name != "SELALL" )
			{
				theForm.elements[i].checked = ! theForm.elements[i].checked ;
			}
		}
}
</SCRIPT>
<BODY>
<FORM name="" action="?" method="post">
<DIV class=searchzone>
<TABLE height=30 cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD height=30>&nbsp;</TD>
    <TD align=right colSpan=2><span class="piliang">
      <INPUT class=button type="button" value=���ӹ�� name=cc2 onClick="window.location.href='AspCms_AdvAdd.asp'">
    </span></TD>
  </TR></TBODY></TABLE></DIV>
<DIV class=listzone>
<TABLE cellSpacing=0 cellPadding=3 width="100%" align=center border=0>
  <TBODY>
  <TR class=list>
    <TD width=37 align="center" class=biaoti>ѡ��</TD>
    <TD width=36 align="center" class=biaoti>���</TD>
    <TD width="135" height=28 align="center" class=biaoti><span class="searchzone">�������</span></TD>
    <TD width=135 align="center" class=biaoti><span class="searchzone">��ʼʱ��</span></TD>
    <TD width=131 align="center" class=biaoti><span class="searchzone">����ʱ��</span></TD>
    <TD width=85 align="center" class=biaoti>���ñ�ǩ</TD>
    <TD width=35 align="center" class=biaoti><span class="searchzone">״̬</span></TD>
    <TD width=109 align="center" class=biaoti><span class="searchzone">����</span></TD>
    </TR>
	<%Advlist%>
    </TBODY></TABLE>
</DIV>
<DIV class="piliang">
<INPUT onClick="SelAll(this.form)" type="checkbox" value="1" name="SELALL"> ȫѡ&nbsp;
<INPUT class="button" type="submit" value="ɾ��" onClick="if(confirm('ȷ��Ҫɾ����')){form.action='?action=del<%="&page="&page&"&psize="&psize&"&order="&order&"&ordsc="&ordsc&""%>';}else{return false};"/>  
<INPUT class="button" type="submit" value="����" onClick="form.action='?action=off<%="&page="&page&"&psize="&psize&"&order="&order&"&ordsc="&ordsc&""%>';"./>
<INPUT class="button" type="submit" value="����" onClick="form.action='?action=on<%="&page="&page&"&psize="&psize&"&order="&order&"&ordsc="&ordsc&""%>';"/>
</DIV>
</FORM>
</BODY></HTML>