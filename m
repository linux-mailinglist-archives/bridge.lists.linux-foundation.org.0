Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E90577777BD
	for <lists.bridge@lfdr.de>; Thu, 10 Aug 2023 14:03:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2857D4173C;
	Thu, 10 Aug 2023 12:03:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2857D4173C
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=boeing.com header.i=@boeing.com header.a=rsa-sha256 header.s=boeing-s1912 header.b=QcP2rmRI
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tQp6ZygfKRyU; Thu, 10 Aug 2023 12:03:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 718CC40A5F;
	Thu, 10 Aug 2023 12:03:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 718CC40A5F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 510B4C0DDC;
	Thu, 10 Aug 2023 12:03:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DEE80C0032
 for <bridge@lists.linux-foundation.org>; Wed,  2 Aug 2023 03:46:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A88AF81443
 for <bridge@lists.linux-foundation.org>; Wed,  2 Aug 2023 03:46:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A88AF81443
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=boeing.com header.i=@boeing.com
 header.a=rsa-sha256 header.s=boeing-s1912 header.b=QcP2rmRI
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id As2jT2pvHNNL for <bridge@lists.linux-foundation.org>;
 Wed,  2 Aug 2023 03:46:44 +0000 (UTC)
X-Greylist: delayed 344 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 02 Aug 2023 03:46:44 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85A1681427
Received: from clt-mbsout-01.mbs.boeing.net (clt-mbsout-01.mbs.boeing.net
 [130.76.144.162])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 85A1681427
 for <bridge@lists.linux-foundation.org>; Wed,  2 Aug 2023 03:46:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by clt-mbsout-01.mbs.boeing.net (8.15.2/8.15.2/DOWNSTREAM_MBSOUT) with SMTP id
 3723ev72007194; Tue, 1 Aug 2023 23:40:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=boeing.com;
 s=boeing-s1912; t=1690947658;
 bh=50Ll3XaXPT0vyhJOWSCNmNihoMoZX7WF3UOmYI6/TDM=;
 h=From:To:CC:Subject:Date:From;
 b=QcP2rmRIXPDH8xbfkMEHJrZEN5FWqQ0FffgJb6u59NvJlvh+45U79tgltiQCJKGib
 ecukLSQXt2TPXCLdZOUrssA8tquA3a1qnw+UPFFQ4Lb5Tc1WYczoN4vqHotrU8KP9C
 lZ9h+0O0jyzGBktRy52TkGuulSYANWhnkdA1jzt6Fhs8X+IpsJM/JEc47mG1sOiQNL
 4yqqRxrSbPPVf/v4RtyCpFzi+rtuS/MzO587XvM0m3sStvtujPlsmwL96gKDwXSna8
 tZetNmGzBj6Pz5U4unZ9ipgr9D2GKx6/ACwxYIqP/uVyglLrYU2yjWFKgUTYZazGhJ
 DDxqsL9HX5CpQ==
Received: from XCH16-09-08.nos.boeing.com (xch16-09-08.nos.boeing.com
 [144.115.66.156])
 by clt-mbsout-01.mbs.boeing.net (8.15.2/8.15.2/8.15.2/UPSTREAM_MBSOUT) with
 ESMTPS id 3723elGG007140
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 1 Aug 2023 23:40:47 -0400
Received: from XCH16-09-12.nos.boeing.com (144.115.66.161) by
 XCH16-09-08.nos.boeing.com (144.115.66.156) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 1 Aug 2023 20:40:34 -0700
Received: from XCH16-09-12.nos.boeing.com ([fe80::c591:b386:9cff:58f6]) by
 XCH16-09-12.nos.boeing.com ([fe80::c591:b386:9cff:58f6%5]) with mapi id
 15.01.2507.027; Tue, 1 Aug 2023 20:40:34 -0700
From: "Hasenbosch, Samuel J" <Samuel.J.Hasenbosch@boeing.com>
To: "bugs.a.b@free.fr" <bugs.a.b@free.fr>
Thread-Topic: Re: [bridge]: STP: no port in blocking state despite a loop when
 in a network namespace
Thread-Index: AdnE8ssxH5pBaxffQ16ZpDApu/J7Pw==
Date: Wed, 2 Aug 2023 03:40:33 +0000
Message-ID: <b1b77fe134e64bfc85394050bd40dff6@boeing.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.137.12.6]
x-tm-snts-smtp: 8C8D7A85BB361818A346D41B1714D6D5EBDDA8899D5299DDDE2C7865C0F5179E2000:8
Content-Type: multipart/alternative;
 boundary="_000_b1b77fe134e64bfc85394050bd40dff6boeingcom_"
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Mailman-Approved-At: Thu, 10 Aug 2023 12:03:37 +0000
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "nikolay@nvidia.com" <nikolay@nvidia.com>,
 "roopa@nvidia.com" <roopa@nvidia.com>
Subject: Re: [Bridge] [bridge]: STP: no port in blocking state despite a
 loop when in a network namespace
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

--_000_b1b77fe134e64bfc85394050bd40dff6boeingcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Forwarding related issue:



https://lore.kernel.org/netdev/20230711174934.3871fb61@kernel.org/T/#m4d530=
64313393cdee86f12ef9313523aa734d681


--_000_b1b77fe134e64bfc85394050bd40dff6boeingcom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-AU" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Forwarding related issue:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://lore.kernel.org/netdev/2023071117=
4934.3871fb61@kernel.org/T/#m4d53064313393cdee86f12ef9313523aa734d681">http=
s://lore.kernel.org/netdev/20230711174934.3871fb61@kernel.org/T/#m4d5306431=
3393cdee86f12ef9313523aa734d681</a><o:p></o:p></p>
</div>
</body>
</html>

--_000_b1b77fe134e64bfc85394050bd40dff6boeingcom_--

