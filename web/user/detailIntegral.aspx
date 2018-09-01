﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detailIntegral.aspx.cs" Inherits="WZ.Web.user.detailIntegral" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>我的积分明细 - 搜菜网</title>
    <w:headerUser id="header" runat="server"></w:headerUser>
</head>
<body>
   <w:top id="ucTop" runat="server" />
   <w:userLocation id="ucUL" runat="server" Text=" &gt; 帐户管理 &gt; 我的积分明细"></w:userLocation>
   	<div class="main">
    	<div class="left">
    <w:userMenu ID="ucMenu" runat="server"></w:userMenu>
    </div>
    	<div class="right">
      <div class="User-box">
        <h3><span>我的积分明细</span></h3>
       <p class="Info">
        您好，<span class="ce00"><%=LoginInfo.UserName%></span> 您当前的积分：<span class="ce00"><%=pageUserIntegral%></span>
        </p>
        <div class="ordertable">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr bgcolor="#f7f7f7">
            <th>时间</th>
            <th>积分</th>
            <th>相关说明</th> 
          </tr>
<w:Rep ID="rpList" runat="server">
<ItemTemplate>
           <tr>
            <td><%# Eval("AddDate") %></td>
            <td><span class="orange weight"><%#Eval("SetValue")%></span></td>
            <td><%#Eval("Remark") %></td>
          </tr>
</ItemTemplate>
</w:Rep>
          
        </table>
        <div class="pagination">
        <!-- 翻页 -->
            <div class="paging"><w:Paging_Show runat="server" id="ucPS1" IsShowJump="false" /></div>
        </div>
        </div>
        <div class="Sufficient" style="display:none"><a href="#"><img src="/images/Usercenter/Sufficient.gif" width="108" height="28" alt="" /></a></div>
      </div>
    </div>
    </div>
    <w:bottom id="ucBottom" runat="server" />
</body>
</html>
