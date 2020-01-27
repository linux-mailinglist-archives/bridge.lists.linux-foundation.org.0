Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B83914B291
	for <lists.bridge@lfdr.de>; Tue, 28 Jan 2020 11:29:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CBE332050A;
	Tue, 28 Jan 2020 10:29:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fUXGXNPowQaK; Tue, 28 Jan 2020 10:29:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 274B5203C8;
	Tue, 28 Jan 2020 10:29:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 01E03C0171;
	Tue, 28 Jan 2020 10:29:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E7506C0171
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jan 2020 14:26:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D3AA887476
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jan 2020 14:26:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cnkeOZiTMkeq for <bridge@lists.linux-foundation.org>;
 Mon, 27 Jan 2020 14:26:44 +0000 (UTC)
X-Greylist: delayed 02:25:30 by SQLgrey-1.7.6
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-eopbgr60094.outbound.protection.outlook.com [40.107.6.94])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BD47A87404
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jan 2020 14:26:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A+IMb/ffoyzfvNoVx6R2KhqBp9OQCNZxqrIjq0iAx3QI0HPccUe34mbt3+nnD/RCEEsdcuNWfK36R/6PK52yhKpmvE37/jD2C8PuaAhkNXFAjdbB9jo/sDKOPzkxp6yxpBNnWP9k5p/4/b65rXJQIkuCb0uyPNssPntB41p6/Bt5+SWjefiQ3xEAbESkmBsiSMyvo3cRvSW1r+lUap0uF0rLRxpq/V12kG6mejJyGmrMJ7vNHWs2YZQ5l3O3f14pP2FHOeKUo1p1Y3u5PaGH2Mhppk3euSEe0YTg8FI9lqNW8OkPCrvNzj26O2g9GL+69FDGYQYAoXx4Ycx0R344zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G7VvLbHC2nwsB4duJU40o5aHmVes7C5pZsBQBExB3wk=;
 b=VirmkTv2rPyyJXDpwNXk6haKpYaMZ3XgWxejx++Gg1LCwcWVUdSCavw9sWq8BDFcDfQL8UDmj66wNKsQOvLF8kzAupOGLEQpK0qcn/vcrZiVBIjtTQOKLNcDB4Z0Szs9CBKgIwcM0iGJYAtbOWFHeBUe14j8/HSW+6zl80a+Ujf1aixnUYPzCSvm7xu8vEZJcQNy9sUr7Cvb5oMoUOsz9BPO82Pt2qZDl/hJKBQibXyVfQHQrSyuWsl3YCukeCZtDnfqa4qatH1e1ldCsUbdiTD1LtbBnjyI6NI1eX0ERgbszeJ4kfWhJkDBQD8D+EiG8gfhllEEOVE0tTN/u4vJIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=televic.com; dmarc=pass action=none header.from=televic.com;
 dkim=pass header.d=televic.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=televic.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G7VvLbHC2nwsB4duJU40o5aHmVes7C5pZsBQBExB3wk=;
 b=f1gbO7pJnkZMoURVGjslF/qV31b7hyTbzT9t2ZpOkPtSjzYvwl9VD/MoU/9K1lSdJZOrfzqYE0zT7+fbEeynKILrwWjSUk5BjHMOGmP220+YFfP3t1DFby1tYhn9kX+UM7AxpRr/DL36k7UrY1ZHjX0tub2umhX1Cz7Q8aNbHVk=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=J.Lambrecht@TELEVIC.com; 
Received: from VI1PR07MB5085.eurprd07.prod.outlook.com (20.177.203.77) by
 VI1PR07MB4464.eurprd07.prod.outlook.com (20.177.56.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.14; Mon, 27 Jan 2020 14:26:40 +0000
Received: from VI1PR07MB5085.eurprd07.prod.outlook.com
 ([fe80::6591:ac75:8bbf:2349]) by VI1PR07MB5085.eurprd07.prod.outlook.com
 ([fe80::6591:ac75:8bbf:2349%5]) with mapi id 15.20.2686.019; Mon, 27 Jan 2020
 14:26:40 +0000
To: Andrew Lunn <andrew@lunn.ch>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
 <20200124161828.12206-7-horatiu.vultur@microchip.com>
 <20200125163504.GF18311@lunn.ch>
 <20200126132213.fmxl5mgol5qauwym@soft-dev3.microsemi.net>
 <20200126155911.GJ18311@lunn.ch>
 <20200127110418.f7443ecls6ih2fwt@lx-anielsen.microsemi.net>
From: =?UTF-8?Q?J=c3=bcrgen_Lambrecht?= <j.lambrecht@televic.com>
Message-ID: <c5733ddb-a837-b866-54bf-c631baf36c54@televic.com>
Date: Mon, 27 Jan 2020 15:26:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <20200127110418.f7443ecls6ih2fwt@lx-anielsen.microsemi.net>
Content-Type: multipart/alternative;
 boundary="------------0A2AA567E0ABCCC585BD4A57"
Content-Language: en-US
X-ClientProxiedBy: AM0PR01CA0088.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:10e::29) To VI1PR07MB5085.eurprd07.prod.outlook.com
 (2603:10a6:803:9d::13)
MIME-Version: 1.0
Received: from [10.40.216.140] (84.199.255.188) by
 AM0PR01CA0088.eurprd01.prod.exchangelabs.com (2603:10a6:208:10e::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2665.22 via Frontend
 Transport; Mon, 27 Jan 2020 14:26:39 +0000
X-Originating-IP: [84.199.255.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 94a97890-c084-4026-5e36-08d7a334eca3
X-MS-TrafficTypeDiagnostic: VI1PR07MB4464:
X-Microsoft-Antispam-PRVS: <VI1PR07MB4464BDC75206C69005C401FAFF0B0@VI1PR07MB4464.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 02951C14DC
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(136003)(366004)(39850400004)(376002)(396003)(199004)(189003)(26005)(54906003)(53546011)(33964004)(66946007)(66476007)(7416002)(2616005)(956004)(2906002)(5660300002)(66556008)(31686004)(81166006)(81156014)(8936002)(186003)(86362001)(16526019)(8676002)(478600001)(4326008)(36756003)(316002)(16576012)(52116002)(6486002)(6916009)(31696002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR07MB4464;
 H:VI1PR07MB5085.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: TELEVIC.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5e9WjWtH8/iw8MzjOXo6o0uZuDa8Z+ZCUdyf+JtEnrF+CPeKZD63eVeKvXBQOVU7U9W+mvCrzpWjODc/MNevB997DZoe42C3waEXo45OsAg8W0c8XrVl9SEChGn+7SfXkF1o/cG+RX/zg6V0ZAkaTOPV6pHDBNfdcW6jYgu2MGj5g/d2FbFh3V4O1nm+d/GnNL8wYOv09+PriHvjSulQe1s9Gb3Z2WY1fH16P0y1UNZ65d9Lgrx0JrqCBgZB/o5MKR/f038pqYTeu7ZGuLnYl7ONbnvWLvDcSL0lMGgB4e3bgXDDsTq8zk5IgW0wJZIGULrogp2ofORH56BffWPLdkHvB+WcfXA6OCIdSpZlspEPPexiPmdv9zcoJqR5lDWfR1MgyAXa6ZhGViZVFnCJSLZ1hYc7rbWzjD1+nLjx0DzruTJqpK36reRvm0rFJ3Pc
X-MS-Exchange-AntiSpam-MessageData: fvedZRpzM63+gGP+YYpFf5XQdYO517fUSBD/aBYccewM9CGfXRgzaOKP2WzJnMsbPSWDetWT8HwJY0IckZwP0ryumXDxETWSoUkxwS3qWoB70Rqk8eHDPT8Ii6ZGbyFw3k8H224+tHgFeBF6TU0Txg==
X-OriginatorOrg: televic.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94a97890-c084-4026-5e36-08d7a334eca3
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2020 14:26:40.3009 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 68a8593e-d1fc-4a6a-b782-1bdcb0633231
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JpKcOZbh4+uhi1XrSh2HId3GceeRaAd0aXLbUVAYlfHqf8svCjI++rKHFCpzRNVSzH8d3e7JeXNnxlRNAr33Cw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR07MB4464
X-Mailman-Approved-At: Tue, 28 Jan 2020 10:29:14 +0000
Cc: ivecera@redhat.com, jiri@resnulli.us, nikolay@cumulusnetworks.com,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 davem@davemloft.net, UNGLinuxDriver@microchip.com,
 anirudh.venkataramanan@intel.com,
 "Allan W. Nielsen" <allan.nielsen@microchip.com>, jeffrey.t.kirsher@intel.com,
 olteanv@gmail.com, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: Re: [Bridge] [RFC net-next v3 06/10] net: bridge: mrp: switchdev:
 Extend switchdev API to offload MRP
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

--------------0A2AA567E0ABCCC585BD4A57
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 1/27/20 12:04 PM, Allan W. Nielsen wrote:
>>> > How do you handle the 'headless chicken' scenario? User space tells
>>> > the port to start sending MRP_Test frames. It then dies. The hardware

Andrew, I am a bit confused here - maybe I missed an email-thread, I'm sorry then.

In previous emails you and others talked about hardware support to send packets (inside the switch). But somebody also talked about data-plane and control-plane (about STP in-kernel being a bad idea), and that data-plane is in-kernel, and control plane is a mrp-daemon (in user space).
And in my mind, the "hardware" you mention is a frame-injector and can be both real hardware and a driver in the kernel.

Do I see it right?

>>> > continues sending these messages, and the neighbours thinks everything
>>> > is O.K, but in reality the state machine is dead, and when the ring
>>> > breaks, the daemon is not there to fix it?
> I agree, we need to find a solution to this issue.
>


--------------0A2AA567E0ABCCC585BD4A57
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 1/27/20 12:04 PM, Allan W. Nielsen
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20200127110418.f7443ecls6ih2fwt@lx-anielsen.microsemi.net">
      <blockquote type="cite" style="color: #000000;">
        <blockquote type="cite" style="color: #000000;">&gt; How do you
          handle the 'headless chicken' scenario? User space tells
          <br>
          &gt; the port to start sending MRP_Test frames. It then dies.
          The hardware
          <br>
        </blockquote>
      </blockquote>
    </blockquote>
    <p>Andrew, I am a bit confused here - maybe I missed an
      email-thread, I'm sorry then.</p>
    <p>In previous emails you and others talked about hardware support
      to send packets (inside the switch). But somebody also talked
      about data-plane and control-plane (about STP in-kernel being a
      bad idea), and that data-plane is in-kernel, and control plane is
      a mrp-daemon (in user space).<br>
      And in my mind, the &quot;hardware&quot; you mention is a frame-injector and
      can be both real hardware and a driver in the kernel.</p>
    <p>Do I see it right?<br>
    </p>
    <blockquote type="cite" cite="mid:20200127110418.f7443ecls6ih2fwt@lx-anielsen.microsemi.net">
      <blockquote type="cite" style="color: #000000;">
        <blockquote type="cite" style="color: #000000;">&gt; continues
          sending these messages, and the neighbours thinks everything
          <br>
          &gt; is O.K, but in reality the state machine is dead, and
          when the ring
          <br>
          &gt; breaks, the daemon is not there to fix it?
          <br>
        </blockquote>
      </blockquote>
      I agree, we need to find a solution to this issue.
      <br>
      <br>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------0A2AA567E0ABCCC585BD4A57--
