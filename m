Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC0014B297
	for <lists.bridge@lfdr.de>; Tue, 28 Jan 2020 11:29:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EDB2981ECF;
	Tue, 28 Jan 2020 10:29:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JxShb3jG2AgI; Tue, 28 Jan 2020 10:29:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id C45FC816F2;
	Tue, 28 Jan 2020 10:29:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B721FC0175;
	Tue, 28 Jan 2020 10:29:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 90298C0171
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jan 2020 15:48:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7759D86F74
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jan 2020 15:48:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0faJLVws24ZU for <bridge@lists.linux-foundation.org>;
 Mon, 27 Jan 2020 15:48:39 +0000 (UTC)
X-Greylist: delayed 04:04:29 by SQLgrey-1.7.6
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-eopbgr150132.outbound.protection.outlook.com [40.107.15.132])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5B7D186F1B
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jan 2020 15:48:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CiBQ2qI4NDDzx4KPz8wfADIk/ji6xP6UU+PXEtB4REEnGZKNW0wp9aQKtYvs6hhGW6HLjN7KkpY5NDM6zBX9reBNq3h8dJmHt8ejXZO33N4Jc2PaIayXVFqU3g8vwbb18xMCZEinv+vWF9Zpo7C8/720vpGyDA832wWjYVEPv1rDy6lOsSBF8emhVdZJcOitLQCEjivbetlf3tH8NlwqIvUAgw+6/czZSv+17BI/sz6zjmI30eHH/XPDMO/XoJBgmI6ROg6OR9BpT/PJcyafwFBwsGpvZP9ie5sTNyXJ400Z2ldVMkXkf2WvGDuhIaAXl+7uDa9YU5xN/i/TWrY3PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Lr7m+pDy+NDdqliBnCTKuAIFylrGhfL9hY7M8wqsrQ=;
 b=iFdyROpQOdFnRrkFE0o5N4XEmGyWdQa2mG2UacyLAmibg6PRoc8deqbQ8gGmgvi7A1xU7mBRC9oIwmduBfsDZnXAE+LWvvE3Y9p2vZ2w5G0IhRATNH0BxAi4nwAiuwleHFFsFH16wyx2NwZ42oQeWerEpDq2cOPKQA0KoU2WBtVPBNkNG/v7NQI3ivO8EDfLjiJPesRczYX0OXI+LAe8TEBmlX/vFrE++neyhYYs/+6xPPEfW6T2r73fTnuT0qwuK1N3XyRGHwzL6qjZwTU/dkP0BcReGz88f8Z0Ow6wq46WFvexid39+S9O1PVc11uxZcT8JknRcSTtf15fBC1P7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=televic.com; dmarc=pass action=none header.from=televic.com;
 dkim=pass header.d=televic.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=televic.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Lr7m+pDy+NDdqliBnCTKuAIFylrGhfL9hY7M8wqsrQ=;
 b=LEViIjRq6SRfXKijDLKdO66+ca9uIOIManua3YPfRSD9kwMamNFrEaFs8hS07LvUYqMZgTsHS+sxfxkrJgmRcydghAPsmvZDvq2cPelQICZaQHUsUYztvSrCrm0ZTY8gX6Vm1F69w1V4+rNd+4+44Mz1CA/zSlwFhb5ZFcvkLRE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=J.Lambrecht@TELEVIC.com; 
Received: from VI1PR07MB5085.eurprd07.prod.outlook.com (20.177.203.77) by
 VI1PR07MB5421.eurprd07.prod.outlook.com (20.178.15.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.15; Mon, 27 Jan 2020 15:33:28 +0000
Received: from VI1PR07MB5085.eurprd07.prod.outlook.com
 ([fe80::6591:ac75:8bbf:2349]) by VI1PR07MB5085.eurprd07.prod.outlook.com
 ([fe80::6591:ac75:8bbf:2349%5]) with mapi id 15.20.2686.019; Mon, 27 Jan 2020
 15:33:28 +0000
To: Andrew Lunn <andrew@lunn.ch>,
 "Allan W. Nielsen" <allan.nielsen@microchip.com>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
 <20200124161828.12206-10-horatiu.vultur@microchip.com>
 <20200125161615.GD18311@lunn.ch>
 <20200126130111.o75gskwe2fmfd4g5@soft-dev3.microsemi.net>
 <20200126171251.GK18311@lunn.ch>
 <20200127105746.i2txggfnql4povje@lx-anielsen.microsemi.net>
 <20200127134053.GG12816@lunn.ch>
From: =?UTF-8?Q?J=c3=bcrgen_Lambrecht?= <j.lambrecht@televic.com>
Message-ID: <14339d64-a863-c335-8d3c-0431598a10ba@televic.com>
Date: Mon, 27 Jan 2020 16:33:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <20200127134053.GG12816@lunn.ch>
Content-Type: multipart/alternative;
 boundary="------------AD2A57F78718981CC9D655DB"
Content-Language: en-US
X-ClientProxiedBy: AM4PR0902CA0008.eurprd09.prod.outlook.com
 (2603:10a6:200:9b::18) To VI1PR07MB5085.eurprd07.prod.outlook.com
 (2603:10a6:803:9d::13)
MIME-Version: 1.0
Received: from [10.40.216.140] (84.199.255.188) by
 AM4PR0902CA0008.eurprd09.prod.outlook.com (2603:10a6:200:9b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2665.21 via Frontend
 Transport; Mon, 27 Jan 2020 15:33:27 +0000
X-Originating-IP: [84.199.255.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2c063fdf-d660-475b-0fb8-08d7a33e416f
X-MS-TrafficTypeDiagnostic: VI1PR07MB5421:
X-Microsoft-Antispam-PRVS: <VI1PR07MB542147ECFE4C698B1745D08BFF0B0@VI1PR07MB5421.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 02951C14DC
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(376002)(346002)(396003)(39850400004)(366004)(189003)(199004)(2906002)(5660300002)(31686004)(16576012)(86362001)(478600001)(4326008)(6486002)(31696002)(2616005)(81156014)(8676002)(52116002)(81166006)(53546011)(956004)(8936002)(66574012)(7416002)(66556008)(66946007)(66476007)(186003)(26005)(110136005)(36756003)(16526019)(316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR07MB5421;
 H:VI1PR07MB5085.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: TELEVIC.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: l1Wq0RjWiZB2zJY1US/twwtbJBATxYEu/LnNNMecus/AIXH0ov4tslUilTGGDhWQvjKCFnE0NNst/PoEPCTER2WQq/KlDzTbZXvZ+P9Ca2DdDBQpIFsJf+RbVxkm9fVxRpXSliKXWZE/q7dkgHz2i+uhfWQhplHlSJYMC9ApwxetNUm/jf+Em3hN0AE1dlvRlZquuZ4TaLbfw7ovMGfEqKLykLZHp99ZvUBh3Fgfk/NILPBJYZMtQG7wu3wL3Rr1w6WNe+ygVw2DHU81mzPUdOrQfLu7Pb7Q9Q+lHcAvXLHm4zEbq0FEBAZjtOnL/dKmwFFBSx4Q1p7VzqOnYlysBvmeVUDtI+ohe3oew6Ax9RK7mVJNHzJ0r1SBtgYxikOJ1QkQ0B5Vif2XF12rTYggARtzsWpzqQqPEnuU1dLY9GErV9HldWdCTqBcqJsxZ3KJ
X-MS-Exchange-AntiSpam-MessageData: riv7JItiQ4VY5I729rGwk9Ll5avfLqaTCVLT3k+sq/srWAd7vOqYZsOscUXBMRi63SA+2Fyxx27zJZw7hJpq25ymLmWAssO5WKMe1zGdsaK8MsJwGyRygvSRnOrpfFnV4h7wwQtXicSt1RL8rOyEqA==
X-OriginatorOrg: televic.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c063fdf-d660-475b-0fb8-08d7a33e416f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2020 15:33:27.9270 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 68a8593e-d1fc-4a6a-b782-1bdcb0633231
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sK6lY/+terH7hRXhRtk9jtYCC8wennt1QXouE73rBMktq6HArfweJdhLhQIgvAas+4vhDih9qTbFV8buGRVv6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR07MB5421
X-Mailman-Approved-At: Tue, 28 Jan 2020 10:29:14 +0000
Cc: ivecera@redhat.com, jiri@resnulli.us, nikolay@cumulusnetworks.com,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 davem@davemloft.net, UNGLinuxDriver@microchip.com,
 anirudh.venkataramanan@intel.com, jeffrey.t.kirsher@intel.com,
 olteanv@gmail.com, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: Re: [Bridge] [RFC net-next v3 09/10] net: bridge: mrp: Integrate
 MRP into the bridge
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

--------------AD2A57F78718981CC9D655DB
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 1/27/20 2:40 PM, Andrew Lunn wrote:
>> Again, I do not know how other HW is designed, but all the SOC's we are
>> working with, does allow us to add a TCAM rule which can redirect these
>> frames to the CPU even on a blocked port.
> It is not in scope for what you are doing, but i wonder how we
> describe this in a generic Linux way? And then how we push it down to
> the hardware?
>
> For the Marvell Switches, it might be possible to do this without the
> TCAM. You can add forwarding DB entries marked as Management. It is
> unclear if this overrides the blocked state, but it would be a bit odd
> if it did not.
A MGMT frame does override the blocked state according the the datasheet.
And any MAC address can be loaded, not only 01:80:C2:00:00:0x (802.1D) and 01:80:C2:00:00:2x (GARP). Then the ATU is used instead of something specialized.
(referring to Andrew's email of 20200126 6:12 PM)
(I only checked again 88E6250/88E6220/88E6071/88E6070/88E6020 Functional Specification)


Kind regards,

Jürgen



--------------AD2A57F78718981CC9D655DB
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=Windows-1252">
  </head>
  <body>
    <div class="moz-cite-prefix">On 1/27/20 2:40 PM, Andrew Lunn wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20200127134053.GG12816@lunn.ch">
      <blockquote type="cite" style="color: #000000;">
        <pre class="moz-quote-pre" wrap="">Again, I do not know how other HW is designed, but all the SOC's we are
working with, does allow us to add a TCAM rule which can redirect these
frames to the CPU even on a blocked port.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">It is not in scope for what you are doing, but i wonder how we
describe this in a generic Linux way? And then how we push it down to
the hardware?

For the Marvell Switches, it might be possible to do this without the
TCAM. You can add forwarding DB entries marked as Management. It is
unclear if this overrides the blocked state, but it would be a bit odd
if it did not.</pre>
    </blockquote>
    A MGMT frame does override the blocked state according the the
    datasheet.<br>
    <blockquote type="cite" cite="mid:20200127134053.GG12816@lunn.ch">
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    And any MAC address can be loaded, not only 01:80:C2:00:00:0x
    (802.1D) and 01:80:C2:00:00:2x (GARP). Then the ATU is used instead
    of something specialized.<br>
    (referring to Andrew's email of 20200126 6:12 PM)<br>
    (I only checked again 88E6250/88E6220/88E6071/88E6070/88E6020
    Functional Specification)
    <p><br>
    </p>
    <p>Kind regards,</p>
    <p>Jürgen<br>
    </p>
    <p><br>
    </p>
  </body>
</html>

--------------AD2A57F78718981CC9D655DB--
