Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D329A14B293
	for <lists.bridge@lfdr.de>; Tue, 28 Jan 2020 11:29:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6233081FCC;
	Tue, 28 Jan 2020 10:29:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZFKZuEmoUxSu; Tue, 28 Jan 2020 10:29:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9321484031;
	Tue, 28 Jan 2020 10:29:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 721CCC0171;
	Tue, 28 Jan 2020 10:29:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A05A9C0171
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jan 2020 15:39:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8DDB120362
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jan 2020 15:39:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NB-iMuU65mCK for <bridge@lists.linux-foundation.org>;
 Mon, 27 Jan 2020 15:39:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-eopbgr60106.outbound.protection.outlook.com [40.107.6.106])
 by silver.osuosl.org (Postfix) with ESMTPS id 78D1320334
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jan 2020 15:39:46 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W6FaFtv5/h/XIGDGcbqXjtSqIGhVv3ZKzW1sJme+UdjMROF0emBK12luG0HTYXlpD8CLEx3/voCNWYV1C+4+5H6oaOy9hdVREzPKbI23uiH/DGlTIrO07Ew2z1uzSVBV3VWb6Qt8GG+tfC3D7h1OZh/8nNeYQBrNZ0psU/jBlQi7a1VyaIHXX4N0+H4haCkq0R/dE8AfFiYnkJWTEfq7087h5oMQ7NQVUTqv7tQLxEGufj1R1p4wL52pfTnuZuCR8QwklTbQd4bJNpLwKfXWb1yFM7iThRjqb9089AKsw/iZY09r9p23nw9CtBwwUzfX6CHL76gfQB/miRZW1a5Jqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0EE/7+dImiSiCP4FL8KM/6JoQcFdrF5hHRQPvb39S4U=;
 b=TU4aOImv8F+Ks5Ah6TpIiQZQCG9mSGegweAHNMohp+ohNpa0kiZ2gnOtonhTQF9uT4eHEwHwZmkBRuXuCXOzncME4glDL85n7PQZ07XBANAgDlRwspfRUPBjsWMEh3AUI9105+/8c2rlbxgMyElQBPQi/kzIpliySF/5OMPte7Eupx5oBBQbMNKvlIhJLzEZWODtqFzWT67Yg7iPTYJEpvsO1DLhlsqKRh4XJDtGJKOxVTs6lwyMKLNzSFQwP9r68BTskgojr/PgYlApdo1MdC9WA9n7DVXJbQU2lnptFN+Gyj4lUwiHUKFQEOVdekyPPlJoeIng5sGbyCNWKciEIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=televic.com; dmarc=pass action=none header.from=televic.com;
 dkim=pass header.d=televic.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=televic.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0EE/7+dImiSiCP4FL8KM/6JoQcFdrF5hHRQPvb39S4U=;
 b=O158Jg7gXWEOv+yTz5oChTmEHPLLY3GmdYfUhUEiNj8iRJwSEFt5LVs+Q3QY+0qeRuYcDFbJBYHzxDuzSMzBrp57f1dtahlJkVQGgEnaRe5EWnahGTSl6LiItXuhvdPTju95b7A2ivR5+0+FMvlnpTXA2v7//40dXckO1JccEOk=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=J.Lambrecht@TELEVIC.com; 
Received: from VI1PR07MB5085.eurprd07.prod.outlook.com (20.177.203.77) by
 VI1PR07MB4543.eurprd07.prod.outlook.com (20.177.56.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.18; Mon, 27 Jan 2020 15:39:43 +0000
Received: from VI1PR07MB5085.eurprd07.prod.outlook.com
 ([fe80::6591:ac75:8bbf:2349]) by VI1PR07MB5085.eurprd07.prod.outlook.com
 ([fe80::6591:ac75:8bbf:2349%5]) with mapi id 15.20.2686.019; Mon, 27 Jan 2020
 15:39:43 +0000
To: Andrew Lunn <andrew@lunn.ch>, Horatiu Vultur <horatiu.vultur@microchip.com>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
 <20200124161828.12206-5-horatiu.vultur@microchip.com>
 <20200125153403.GB18311@lunn.ch>
From: =?UTF-8?Q?J=c3=bcrgen_Lambrecht?= <j.lambrecht@televic.com>
Message-ID: <29368970-c46d-b509-a01b-874d81ed7fb5@televic.com>
Date: Mon, 27 Jan 2020 16:39:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <20200125153403.GB18311@lunn.ch>
Content-Type: multipart/alternative;
 boundary="------------74244812AB79335BE4D5B00E"
Content-Language: en-US
X-ClientProxiedBy: AM0PR01CA0133.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:168::38) To VI1PR07MB5085.eurprd07.prod.outlook.com
 (2603:10a6:803:9d::13)
MIME-Version: 1.0
Received: from [10.40.216.140] (84.199.255.188) by
 AM0PR01CA0133.eurprd01.prod.exchangelabs.com (2603:10a6:208:168::38) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2665.22 via Frontend
 Transport; Mon, 27 Jan 2020 15:39:42 +0000
X-Originating-IP: [84.199.255.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d76f3cd1-e64d-4222-2646-08d7a33f2130
X-MS-TrafficTypeDiagnostic: VI1PR07MB4543:
X-Microsoft-Antispam-PRVS: <VI1PR07MB4543FF9070D77FDC68132678FF0B0@VI1PR07MB4543.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-Forefront-PRVS: 02951C14DC
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(39850400004)(346002)(396003)(136003)(366004)(189003)(199004)(53546011)(36756003)(186003)(16526019)(26005)(4326008)(8936002)(110136005)(5660300002)(52116002)(6486002)(81166006)(16576012)(81156014)(8676002)(316002)(31696002)(86362001)(66946007)(478600001)(7416002)(66556008)(66476007)(2906002)(956004)(2616005)(31686004)(41533002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR07MB4543;
 H:VI1PR07MB5085.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: TELEVIC.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: d0pITXRNekMxgNrGnpsamzWYsTYPCkm70MLoDMd0SlAkKOPNTfWFLE7IVLdddSoAnNw8HzCn6owXYXKw2iaBds4IGI27SN/WAs0Ww8BPjhA++5JBBN//bETzp9qQwaCA+xazRj6K0JwmyFP4ydyqomRGLfsl5v+sqnyM7h1R7zTe314KsxxKrN3/S3UhSewSXkXlHaNTh9EXLrN0jGLFk3DZs/azNBjy8cBz41CWhIyB4ah1XP2HTynZnCw0FOXNA0L2l60/b4H2eAwpsieuJDNFfDVd+d04j0DyL9MwqxsbWT1FU6+mDkoyy7nlp5V1TW0e6/dYRHAIEsP4k9Ht8iwUo6CGNqMTRjghnmCLx5h2OVXAgajjsMgmRLVAvzfBPCMwUlMTbSUB095Ljc7KVEdb866r/wkXdMP5XB61MMhuNU4mY2eCkIyW/WLi8wSP6vnTFEAwQZ2fa4fGczNxkDY/Yyrm5fN0DG8RL+Ilx3fpbkkIN71NO5rpLXNWbeHu
X-MS-Exchange-AntiSpam-MessageData: /dp8ttzlbDeAvHUDgMYwHDcOt+5S09GDmTZZJimyE9sk9gFTC78cBBq+d1Dj5Ls28oBisQyFUuavCTKudoB6ClxMo6nzBZSxUqkIwIQOP0e4W4wTnAVrLSBLBnwISmTS7VfmDhRGIIQZpNsDsXm/eQ==
X-OriginatorOrg: televic.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d76f3cd1-e64d-4222-2646-08d7a33f2130
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2020 15:39:43.3234 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 68a8593e-d1fc-4a6a-b782-1bdcb0633231
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JfPWdfVGVpSkqdFOATqLIKuvdF+e9Q0cKf4TjDzMgGf0YISqeg13k3XgZ5z5zYv3Olgv+4ygsiwY794tLgC8Zg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR07MB4543
X-Mailman-Approved-At: Tue, 28 Jan 2020 10:29:14 +0000
Cc: ivecera@redhat.com, jiri@resnulli.us, nikolay@cumulusnetworks.com,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, anirudh.venkataramanan@intel.com,
 jeffrey.t.kirsher@intel.com, olteanv@gmail.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next v3 04/10] net: bridge: mrp: Add generic
 netlink interface to configure MRP
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

--------------74244812AB79335BE4D5B00E
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 1/25/20 4:34 PM, Andrew Lunn wrote:
> Allan mentioned you might get around to implementing 802.1CB?

I read about MRP, being IEC 62439-2, and then I read further about IEC 62439-3.4 Parallel Redundancy Protocol (PRP).

So is this 802.1CB-2017 - IEEE Standard then the same as PRP? (I mean, out of curiosity, why not stay in the same standard, then you pay only once ;-)


Kind regards,

Jürgen


--------------74244812AB79335BE4D5B00E
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=Windows-1252">
  </head>
  <body>
    <div class="moz-cite-prefix">On 1/25/20 4:34 PM, Andrew Lunn wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20200125153403.GB18311@lunn.ch">
      <pre class="moz-quote-pre" wrap="">Allan mentioned you might get around to implementing 802.1CB?</pre>
    </blockquote>
    <p>I read about MRP, being IEC 62439-2, and then I read further
      about IEC 62439-3.4 Parallel Redundancy Protocol (PRP).</p>
    <p>So is this <span class="sub-heading">802.1CB-2017 - IEEE
        Standard then the same as PRP? (I mean, out of curiosity, why
        not stay in the same standard, then you pay only once ;-)<br>
      </span></p>
    <p><span class="sub-heading"><br>
      </span></p>
    <p><span class="sub-heading">Kind regards,</span></p>
    <p><span class="sub-heading">Jürgen<br>
      </span></p>
  </body>
</html>

--------------74244812AB79335BE4D5B00E--
