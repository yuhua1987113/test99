﻿<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="reg.aspx.cs" Inherits="WZ.Web.user.reg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>新用户注册 - 搜菜网</title>
    <w:header id="header1" runat="server"></w:header>
    <link href="/css/login.css" rel="stylesheet" type="text/css" />
    
    <style type="text/css">
        
        .regtab tr.init{}
        .regtab tr.init td.currImg{}
        .regtab tr.init td.currText{ color:#1C8A32}
        
        .regtab tr.success{}
        .regtab tr.success td.currImg{background:url(/images/checktrue.gif) no-repeat center 14px;}
        
        .regtab tr.error{}
        .regtab tr.error td.currImg{background:url(/images/checkfalse.gif) no-repeat center 14px;}
        
		.regtab{ padding:0 0 0 100px;}
		.regtab td{padding:0px 1px; height:40px;}
		.regtab input{ border:1px #ccc solid; height:20px; width:180px}
		.reginfo{padding:40px 0px 40px 100px;}
		.regtab .r{text-align:right;}
		
		.pwdTab{padding:0px; height:10px;}
		.pwdTab td{ padding:0px; line-height:10px; height:10px;}
    </style>
    
</head>
<body>
<w:top id="ucTop" runat="server" />
<div class="current"><w:CurrentPath ID="curPath" runat="server" Text=" &gt; 新用户注册" /></div>
    
    <div class="main">
    <div class="Login">
      <h1><img src="/images/login/login_01.gif" width="142" height="41" alt="注册新用户" /></h1>
      <div class="reginfo">
      <form id="form1" runat="server" onsubmit="return false">
      	<div class="regtab">
        <table border="0" cellpadding="0" cellspacing="0">
        
           <tr>
            <td width="150" class="r">请输入用户名：</td>
            <td width="180"><input id="cName" name="cName" type="text" maxlength="30" /></td>
            <td width="20" class="currImg"></td>
            <td class="currText"><div id="cNameText"></div></td>
          </tr>
        
          <tr>
            <td width="150" class="r">请输入Email地址：</td>
            <td><input id="cEmail" name="cEmail" type="text" maxlength="30" /></td>
            <td width="20" class="currImg"></td>
            <td class="currText"><div id="cEmailText"></div></td>
          </tr>
          <tr>
            <td class="r">请设定密码：</td>
            <td><input id="cPwd" name="cPwd" type="password" /></td>
            <td class="currImg"></td>
            <td class="currText"><div id="cPwdText"></div></td>
          </tr>
          <tr id="rowPwdSure">
            <td class="r">请再次输入设定密码：</td>
            <td><input id="cPwdSure" name="cPwdSure" type="password" /></td>
            <td class="currImg"></td>
            <td class="currText"><div id="cPwdSureText"></div></td>
          </tr>
          
          <tr>
            <td width="150" class="r">会员卡卡号：</td>
            <td><input id="cCard" name="cCard" type="text" maxlength="30" /></td>
            <td class="currImg"></td>
            <td class="currText"><div id="cCardText"></div></td>
          </tr>
          
          <tr>
            <td class="r">推广员号码：</td>
            <td><input id="cPromoter" name="cPromoter" type="text" maxlength="9" style="width:120px" /></td>
            <td class="currImg"></td>
            <td class="currText"><div id="cPromoterText"></div></td>
          </tr>
          <tr>
            <td class="r">请输入验证码：</td>
            <td>
<input id="cCode" name="cCode" size="4" maxlength="4" type="text" style="vertical-align:top; width:50px;"/>
<span id="cCodeHtml"></span><a href="javascript:;" onclick="fnVerify()">刷新验证码</a>
<script type="text/javascript">
function fnVerify()
{
	var oCodeHtml=_.get("cCodeHtml");
	oCodeHtml.innerHTML="<img id='cCodePic' alt='图片验证码,单击刷新' onclick='fnVerify()' style='cursor:pointer;width:64px;height:20px;' />";
	var oCode=_.get("cCode");
	oCode.value='';
	_.get('cCodePic').src='/verify.ashx?r='+Math.random();
}
fnVerify();
</script>
            
            </td>
            <td class="currImg"></td>
            <td class="currText"><div id="cCodeText"></div></td>
          </tr>
        </table>
        </div>
        <div class="sun">
        <input type="image" id="btSubmit" value="" src="/images/login/login_02.gif" style="border:0px;padding:0px"  onclick="checkall();"/>
        <input type="hidden" id="rurl" name="rurl" value="<%=url%>" />
        <script type="text/javascript" src="/js/reg.js"></script>
       </div>
       </form>
        <div class="Agreement"><p>服务协议：</p>
<p>《服务协议》（以下简称&quot;本协议&quot;）由凡讯科技信息技术有限公司在提供域名为souc.cn（以下简称&quot;搜菜网&quot;）的网站服务时与搜菜网用户达成的关于使用搜菜网网站的各项规则、条款和条件。本协议在搜菜网用户接受注册时生效。 </p>
<p>您在成为搜菜网用户前，必须仔细阅读并接受本协议中所述的所有规则、条款和条件，包括因被提及而纳入的条款和条件。强烈建议您阅读本协议时，同时阅读本协议中提及的其他网页所包含的内容，因为其可能包含对作为搜菜网用户的您适用的进一步条款和条件。 </p>
<p>一、 用户注册： <br>
  1. 用户注册是指用户登陆搜菜网网站，按要求填写相关信息并确认同意履行相关用户协议的过程。用户因进行交易、获取有偿服务等而发生的所有应纳税赋由用户自行承担。 </p>
<p>2. 搜菜网用户必须是具有完全民事行为能力的自然人，或者是具有合法经营资格的实体组织。无民事行为能力人、限制民事行为能力人以及无经营或特定经营资格的组织不当注册为搜菜网用户或超过其民事权利或行为能力范围从事与搜菜网进行交易的，其与搜菜网之间的服务协议自始无效，一经发现，搜菜网有权立即停止与该用户的交易、注销该用户，并追究其使用搜菜网&quot;服务&quot;的一切法律责任。 </p>
<p>二、 商品交易 <br>
  用户在搜菜网购买商品时必须遵守以下条款： <br>
  1. 用户在使用搜菜网服务时应遵守所有适用的中国法律、法规、条例和地方性法律要求。用户还必须确保遵守本协议及纳入本协议的所有其他条款和规则的规定。 </p>
<p>2. 如果用户在搜菜网购买商品，用户有义务完成与搜菜网的交易（法律或本协议禁止的交易除外）。通过对一项商品所下的订单，用户同意受该商品描述所含的出售条件的约束，只要该等出售条件不违反法律或本协议规定。 </p>
<p>3. 用户通过搜菜网网站订购商品，订单即为购买商品的申请或要约。搜菜网将在用户中心显示订单的详细内容与配送的细节。订单进入已发货状态后，才构成搜菜网对该订单的承诺，此时合同即告成立。 </p>
<p>4. 搜菜网有权在发现搜菜网网站上显示的商品及订单明显错误或缺货的情况下，单方面撤回这些信息或撤销该订单。搜菜网保留对产品订购数量的限制权。在用户下订单的同时，也同时承认了其已经达到购买所订商品的法定年龄，并对其在订单中提供的所有信息的真实性负责。 </p>
<p>5. 商品价格和可获性都将在搜菜网网站上标明，显示的每一项价格都包含了增值税（按照法定税率）。送货费将另外结算，费用根据用户选择的送货方式的不同而异。甲方有权随时更改这些信息而不给乙方任何通知。 <br>
</p>
<p>6. 如在确认了用户订单后发生了意外情况，包括但不限于由于供应商提价，税额变化引起的价格变化，或是由于网站的错误等造成价格变化等情况，搜菜网将会通过email或电话通知用户，在搜菜网没有取消该订单的情况下，用户有权决定是否取消订单。 </p>
<p>三、 用户的权利和义务： </p>
<p>1. 用户有权拥有其在搜菜网的用户名及密码，并有权使用自己的用户名及密码随时登陆搜菜网网站，同时用户可以使用用户信息通过搜菜网客服中心进行购买行为。用户不得以任何形式转让或授权他人使用自己的搜菜网用户名。 </p>
<p>2. 用户有权根据本协议的规定以及搜菜网网站上发布的相关规则在搜菜网网站上查询商品信息、发表使用体验、参与商品讨论、邀请关注好友、参加搜菜网的有关活动以及有权享受搜菜网提供的其它的有关信息服务。 </p>
<p>3. 用户有义务在注册和通过电话购物时提供自己的真实资料，并保证诸如电子邮件地址、联系电话、联系地址、邮政编码等内容的有效性及安全性，保证搜菜网可以通过上述联系方式与自己进行联系。同时，用户也有义务在相关资料实际变更时及时更新有关注册资料。用户保证不以他人资料在搜菜网进行注册和购买行为。 </p>
<p>4. 用户应当保证在使用搜菜网购买商品过程中遵守诚实信用原则，不在购买过程中采取不正当行为，不扰乱网上交易的正常秩序。 </p>
<p>5. 用户享有言论自由权利；并拥有适度修改、删除自己发表的文章的权利。 </p>
<p>6.用户不得在搜菜网发表包含以下内容的言论： </p>
<p>（一）煽动、抗拒、破坏宪法和法律、行政法规实施的；以下相同情况处理 <br>
  （二）煽动颠覆国家政权，推翻社会主义制度的； <br>
  （三）煽动、分裂国家，破坏国家统一的； <br>
  （四）煽动民族仇恨、民族歧视，破坏民族团结的； <br>
  （五）任何包含对种族、性别、宗教、地域内容等歧视的； <br>
  （六）捏造或者歪曲事实，散布谣言，扰乱社会秩序的； <br>
  （七）宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的； <br>
  （八）公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的； <br>
  （九）损害国家机关信誉的； <br>
  （十）其他违反宪法和法律行政法规的。 </p>
<p>7. 用户在发表使用体验、讨论图片等，除遵守本条款外，还应遵守该讨论区的相关规定。 <br>
  8. 未经搜菜网同意，禁止用户在网站发布任何形式的广告。 <br>
</p>
<p>四、 搜菜网的权利和义务： </p>
<p>1. 搜菜网有义务在现有技术上维护整个网上交易平台的正常运行，并努力提升和改进技术，使用户网上交易活动得以顺利进行。 </p>
<p>2. 对用户在注册使用搜菜网网上交易平台中所遇到的与交易或注册有关的问题及反映的情况，搜菜网应及时作出回复； </p>
<p>3. 对于用户在搜菜网网上交易平台上的不当行为或其它任何搜菜网认为应当终止服务的情况，搜菜网有权随时作出删除相关信息、终止提供服务等处理，而无须征得用户的同意； </p>
<p>4. 用户在此授予搜菜网独家的、全球通用的、永久的、免费的许可使用权利 (并有权对该权利进行再授权)，使搜菜网有权(全部或部分地) 使用、复制、修订、改写、发布、翻译、分发、执行和展示用户公示于搜菜网网站的各类信息或制作其派生作品，和/或以现在已知或日后开发的任何形式、媒体或技术，将上述信息纳入其它作品内。 </p>
<p>五、 网站规则、修改和可分性 </p>
<p>1. 价格变动规则 <br>
  直到用户发出订单，搜菜网才能确认商品的价格。搜菜网将尽最大努力保证用户所购商品与网站和目录上公布的价格一致，但价目表和声明并不构成要约。尽管做出最大的努力，搜菜网的商品中一小部分产品可能会有定价错误。如果发现错误定价，搜菜网将采取下列措施之一： </p>
<p>① 如果某一产品的正确定价低于错误定价，搜菜网将按照较低的定价向用户销售该产品。 <br>
  ② 如果某一商品的正确定价高于错误定价，搜菜网会根据具体情况决定，是否在交付前联系用户寻求指示, 或者取消订单并通知用户。 </p>
<p>2. 产品缺货规则 <br>
  用户希望购买的产品如果发生缺货，搜菜网有权取消订单，也可以选择预售登记缺货产品，搜菜网会尽最大努力在最快时间内满足用户的购买需求，当缺货产品到货，搜菜网将第一时间通过邮件、短信或电话通知用户，方便用户进行购买。预售登记并不做订单处理，不构成要约。 </p>
<p>3. 邮件/短信服务规则 <br>
  搜菜网保留通过邮件和短信的形式，对本网站及搜菜网目录注册、购物用户发送订单信息、促销活动等告知服务的权利。如果您在搜菜网注册、购物，表明您已默示接受此项服务。 <br>
  如果您不想接收来自搜菜网除订单以外的邮件和短信，搜菜网会为您办理退阅。 </p>
<p>5. 处罚规则 </p>
<p>① 搜菜网有权对用户的注册数据及购买行为进行查阅，发现注册数据或购买行为中存在任何问题或怀疑，均有权向用户发出询问及要求改正的通知或者直接作出删除等处理； </p>
<p>②经国家生效法律文书或行政处罚决定确认用户存在违法行为，或者搜菜网有足够事实依据可以认定用户存在违法或违反服务协议行为的，搜菜网有权在网站上以网络发布形式公布用户的违法行为；<br>
  <br>
  ③对于用户在搜菜网发布的下列各类信息，搜菜网有权在不通知用户的前提下进行删除或采取其它限制性措施。包括以炒作信用为目的的信息；搜菜网有理由相信存在欺诈等恶意或虚假内容的信息；搜菜网有理由相信存在与网上购物无关或不是以购物为目的的信息；搜菜网有理由相信存在试图扰乱正常购物秩序因素的信息；搜菜网有理由相信该信息违反公共利益或可能严重损害搜菜网和其它用户合法利益的。 </p>
<p>7. 规则的变更 <br>
  搜菜网可以在没有特殊通知的情况下自行变更本规则、任何其它条款和条件、规则或用户资格的任何方面。 对这些条款的任何修改将被包含在搜菜网更新的规则中。如果任何变更被认定为无效、废止或因任何原因不可执行，则该变更是可分割的，且不影响其它变更或条件的有效性或可执行性。在变更这些规则后，用户对搜菜网的继续使用即构成用户对变更的接受。 </p>
<p>8. 终止 <br>
  搜菜网可以不经通知而自行决定终止全部或部分规则，或终止用户的会员资格。即使搜菜网没有要求或强制用户严格遵守这些规则，也并不构成对属于搜菜网的任何权利的放弃。如果用户在搜菜网的客户账户被关闭，那么也将丧失相应的会员资格。对于该用户会员资格的丧失，用户对搜菜网不能主张任何权利或为此索赔。 </p>
<p>9. 责任限制 <br>
  除了搜菜网的使用规则中规定的其它限制和除外情况之外，在中国法律法规所允许的限度内，对于因《积分说明》而引起的或与之有关的任何直接的、间接的、特殊的、附带的、后果性的或惩罚性的损害，或任何其它性质的损害，搜菜网、搜菜网的董事、管理人员、雇员、代理或其它代表在任何情况下都不承担责任。搜菜网的全部责任 ，不论是合同、保证、侵权（包括过失）项下的还是任何其它的责任，均不超过用户所购买的与该索赔有关的商品价值额。这些责任排除和限制条款将在法律所允许的最大限度内适用，并在用户资格被撤销或终止后仍继续有效。 </p>
<p>六、 服务的中断和终止： </p>
<p>1. 如用户向搜菜网提出注销注册用户身份时，经搜菜网审核同意，由搜菜网注销该注册用户，用户即解除与搜菜网的服务协议关系。但注销该用户账号后，搜菜网仍保留下列权利： </p>
<p>① 用户注销后，搜菜网有权保留该用户的注册数据及以前的交易行为记录； <br>
  ② 用户注销后，如用户在注销前在搜菜网交易平台上存在违法行为或违反合同的行为，搜菜网仍可行使本服务协议所规定的权利。 </p>
<p>2. 在下列情况下，搜菜网可以通过注销用户的方式终止服务： <br>
  ① 在用户违反本服务协议相关规定时，搜菜网有权终止向该用户提供服务。搜菜网将在中断服务时通知用户。但如该用户在搜菜网终止提供服务后，再一次直接或间接或以他人名义注册为搜菜网用户的，搜菜网有权再次单方面终止向该用户提供服务； </p>
<p>② 如搜菜网通过用户提供的信息与用户联系时，发现用户在注册时填写的电子邮箱已不存在或无法接收电子邮件的，经搜菜网以其它联系方式通知用户更改，而用户在三个工作日内仍未能提供新的电子邮箱地址的，搜菜网有权终止向该用户提供服务； <br>
  ③ 一经搜菜网发现用户注册数据中主要内容是虚假的，搜菜网有权随时终止向该用户提供服务； <br>
  ④ 本服务协议终止或更新时，用户明示不愿接受新的服务协议的； <br>
  ⑤ 其它搜菜网认为需终止服务的情况。 </p>
<p>七、 适用的法律和管辖权 <br>
  用户和搜菜网之间的契约将适用中华人民共和国的法律，所有的争端将诉诸于搜菜网所在地的人民法院。 </p>
<p>八、 版权 <br>
  1. 本网站上的图表、标识、网页页眉、按钮图标、文字、服务品名等标示在网站上的信息都是凡讯科技信息技术有限公司的财产，受中国和国际知识产权法的保护。未经搜菜网许可，用户不得以任何可能引起消费者混淆的方式或任何贬低或诽谤凡讯科技信息技术有限公司的方式用于与非搜菜网的任何产品或服务上。在搜菜网网站上出现的不属于上述主体的所有其他商标是其商标权利人各自的财产，这些权利人可能是也可能不是与凡讯科技信息技术有限公司相关联、相联系或由凡讯科技信息技术有限公司的关联公司赞助的。未经凡讯科技信息技术有限公司或相关商标所有人的书面许可，搜菜网网站上的任何东西都不应被解释为以默许或其他方式授予许可或使用网站上出现的商标的权利。 </p>
<p>2. 搜菜网用户发表的文章仅代表作者本人观点，与搜菜网立场无关。作者文责自负。 <br>
  3. 搜菜网有权将在本网站发表的产品使用体验、产品讨论或图片自行使用或者与其他人合作使用于其他用途，包括但不限于网站、电子杂志、杂志、刊物等，使用时需为作者署名，以发表文章时注明的署名为准。文章有附带版权声明者除外。 </p>
<p>4. 用户在搜菜网网站上发表的文章及图片（包括转贴的文章及图片）版权仅归原作者所有，若作者有版权声明或原作从其它网站转载而附带有原版权声明者，其版权归属以附带声明为准。 <br>
  任何转载、引用发表于搜菜网的版权文章须符合以下规范： </p>
<p>①	用于非商业、非盈利、非广告性目的时需注明作者及文章及图片的出处为&quot;搜菜网&quot;或&quot;www.soucai.com&quot;。 </p>
<p>②	用于商业、盈利、广告性目的时需征得文章或图片原作者的同意，并注明作者姓名、授权范围及原作出处&quot;搜菜网&quot;或&quot;www.souc.cn&quot;。 <br>
</p>
<p>③ 任何文章或图片的修改或删除均应保持作者原意并征求原作者同意，并注明授权范围。 </p>
<p>九、 不承诺担保和责任限制 <br>
  1.除非另有明确的书面说明，搜菜网网站、目录及其所包含的或以其它方式通过本网站提供给用户的全部信息、内容、材料、商品（包括软件）和服务，是由凡讯科技信息技术有限公司在&quot;按现状&quot;和&quot;按现有&quot;的基础上提供的。 </p>
<p>2. 除非另有明确的书面说明, 凡讯科技信息技术有限公司不对本网站的运营及其包含在本网站上的信息、内容、材料、产品(包括软件)或服务作任何形式的、明示或默示的声明或担保（除根据中华人民共和国法律规定的以外）。用户明确同意自担风险使用本网站。 </p>
<p>3. 在适用法律所允许的最大限度内 ，凡讯科技信息技术有限公司及其关联公司不承诺所有明示或默示的担保，包括但不限于对适销性和满足特定目的的默示担保。凡讯科技信息技术有限公司及其关联公司不担保搜菜网网站、其所包含的或以其它方式通过本网站提供给您的全部信息、内容、材料、产品（包括软件）和服务、其服务器或从搜菜网网站发出的电子信件没有病毒或其他有害成分。除非另有明确的书面说明，凡讯科技信息技术有限公司不对由于使用搜菜网网站、或由于其所包含的或以其它方式通过本网站提供给用户的全部信息、内容、材料、产品（包括软件）和服务、或购买和使用产品引起的任何损害承担责任（除非根据中华人民共和国法律应承担责任的以外），包括但不限于直接、间接或附带的惩罚性和结果性的损害赔偿。 </p>
<p>十、 隐私 </p>
<p>1. 在用户加入搜菜网成为会员时，用户根据搜菜网要求提供的个人注册信息； <br>
  在用户使用搜菜网服务、参加搜菜网活动，或访问搜菜网网页时，搜菜网自动接收并记录的用户浏览器上的服务器数值，包括但不限于IP地址等数据及用户要求取用的网页记录。 </p>
<p>2. 搜菜网收集到的用户在搜菜网购物等的有关数据，包括但不限于购物、上传图片、发布商品使用体验、参与商品讨论、邀请关注好友和留言等数据。 </p>
<p>3. 搜菜网通过合法途径从商业伙伴处取得的用户个人数据。 </p>
<p>4. 信息使用： <br>
  ① 搜菜网不会向任何人出售或出借用户的个人信息，除非事先得到用户得许可。 <br>
  ② 搜菜网亦不允许任何第三方以任何手段收集、编辑、出售或者无偿传播用户的个人信息。任何用户如从事上述活动，一经发现，搜菜网有权立即终止与该用户的服务协议，查封其账号。 </p>
<p>5. 为服务用户的目的，搜菜网可能通过使用用户的个人信息，向用户提供服务，包括但不限于向用户发出产品和服务信息，或者与搜菜网合作伙伴共享信息以便他们向用户发送有关其产品和服务的信息（后者需要用户的事先同意）。 </p>
<p>6. 信息披露：用户的个人信息将在下述情况下部分或全部被披露： </p>
<p>① 经用户同意，向第三方披露； <br>
  ② 如用户是合资格的知识产权投诉人并已提起投诉，应被投诉人要求，向被投诉人披露，以便双方处理可能的权利纠纷； <br>
  ③ 根据法律的有关规定，或者行政或司法机构的要求，向第三方或者行政、司法机构披露； <br>
  ④ 如果用户出现违反中国有关法律或者网站政策的情况，需要向第三方披露； <br>
  ⑤ 为提供用户所要求的产品和服务，而必须和第三方分享用户的个人信息； <br>
  ⑥ 其它搜菜网根据法律或者网站政策认为合适的披露。 </p>
<p>7. 信息安全： <br>
  ① 搜菜网账户和提现功能有密码保护功能，请妥善保管用户的账户及密码信息； <br>
  在使用搜菜网服务进行网上购物时，请用户妥善保护自己的个人信息，仅在必要的情形下向他人提供； <br>
  ② 如果用户发现自己的个人信息泄密，尤其是搜菜网账户及密码或提现密码发生泄露，请用户立即联络搜菜网客服，以便搜菜网采取相应措施。 </p>
<p>8. Cookie的使用： <br>
  ① 通过搜菜网所设Cookie所取得的有关信息，将适用本政策； <br>
  ② 在搜菜网上发布广告的公司通过广告在用户计算机上设定的Cookies，将按其自己的隐私权政策使用； <br>
  ③ 编辑和删除个人信息的权限： 用户可以点击我的搜菜网对用户的个人信息进行编辑和删除，除非搜菜网另有规定。<br>
</p>
</div>
      </div>
    </div>
  </div>
    
<w:bottom id="ucBottom" runat="server" />
</body>

</html>
